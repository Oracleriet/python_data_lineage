create view DS073_OUTPUT as
with report_data as (
         SELECT /*v_fromdate*/ greatest(accounting_year_start_fnc(:in_portfolio, to_date('31-12-2023','dd-mm-yyyy')), TO_DATE('31-12-2017', 'DD-MM-YYYY')) + 1 fromdate,
                /*in_todate*/ to_date('31-12-2023','dd-mm-yyyy') todate,
                por.portfolio,
                por.contract_type,
                por_size.average_por_size,
                cost_sum.transaction_cost,
                cost_sum.other_service_cost,
                cost_sum.service_cost,
                100 * coalesce(cost_sum.service_cost, 0) / por_size.average_por_size service_cost_pct,
                cost_sum.product_cost product_cost,
                100 * coalesce(cost_sum.product_cost, 0) / por_size.average_por_size product_cost_pct,
                cost_sum.indirect_cost_max,
                100 * coalesce(cost_sum.indirect_cost_max, 0) / por_size.average_por_size indirect_cost_max_pct,
                cost_sum.distribution_fee distribution_fee,
                100 * coalesce(cost_sum.distribution_fee, 0) / por_size.average_por_size distribution_fee_pct,
                nb_days
           FROM (
                   SELECT portfolio,
                          contract_type
                     FROM dwh_dm.d_portfolio_v
                    WHERE portfolio = :in_portfolio
                ) por,
                (
                   SELECT portfolio,
                          COUNT(1) nb_days,
                          SUM(por_size) / COUNT(1) average_por_size
                     FROM app_cr.cch_por_size_v
                    WHERE 1 = 1
                      AND todate > /*v_fromdate*/ greatest(accounting_year_start_fnc(:in_portfolio, to_date('31-12-2023','dd-mm-yyyy')), TO_DATE('31-12-2017', 'DD-MM-YYYY'))
                      AND todate <= /*in_todate*/ to_date('31-12-2023','dd-mm-yyyy')
                      AND portfolio = :in_portfolio
                      AND por_size > 0
                    GROUP BY portfolio
                ) por_size,
                (
                   SELECT SUM(CASE
                                 WHEN cost_group = 'Transaction cost' THEN
                                    service_cost
                                 ELSE
                                    0
                              END) transaction_cost,
                          SUM(CASE
                                 WHEN cost_group <> 'Transaction cost' THEN
                                    service_cost
                                 ELSE
                                    0
                              END) other_service_cost,
                          SUM(product_cost) product_cost,
                          SUM(service_cost) service_cost,
                          coalesce(SUM(mifid_direct_cost_buy), 0) + coalesce(SUM(mifid_direct_cost_sell), 0) indirect_cost_max,
                          SUM(distribution_fee) distribution_fee
                     FROM app_cr.cch_ds073_wt
                    WHERE cch_ds073_batch_id = :v_cch_ds073_batch_id
                ) cost_sum
          WHERE 1 = 1
)
select 
    portfolio
,   fromdate
,   todate
,   :v_cch_ds073_batch_id       as cch_ds073_batch_id
,   round(service_cost, 2)      as servicekostnader
,   round(product_cost, 2)      as produktkostnadar
,   round(distribution_fee , 2) as tilbakebetalte_kostnader
from report_data;
