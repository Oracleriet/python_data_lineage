CREATE VIEW app_grip_read."U_REC_DISTR_SIMPLIFIED" AS
WITH CTE_CurrencyConversions AS (
  SELECT
      fund_secik AS cc_fund_secik,
      fx_por_to_dkk AS cc_fx_por_to_dkk,
      fx_por_to_eur AS cc_fx_por_to_eur,
      ROUND(AVG_MV_DKK / NVL(fx_por_to_dkk, 1), 2) AS cc_avg_mv_cur,
      ROUND(ULT_MV_DKK / NVL(fx_por_to_dkk, 1), 2) AS cc_ult_mv_cur,
      ROUND(DIS_DKK / NVL(fx_por_to_dkk, 1), 2) AS cc_dis_cur,
      ROUND(REB_DKK / NVL(fx_por_to_dkk, 1), 2) AS cc_reb_cur
  FROM u_aum_monthly
),
CTE_ClientGroup AS (
  SELECT
      portfolio_sk AS cg_portfolio_sk,
      DECODE(non_fund_portfolio_type, 'GIC', 'AM', 'PWM', 'PWM', 'LUX', '???') AS cg_client_group_top,
      portfolio_wrapper AS cg_portfolio_wrapper,
      investor_type AS cg_investor_type,
      country AS cg_cty,
      manager_country AS cg_man_cty,
      portfolio_name AS cg_porname
  FROM dwh_d_portfolio_v
),
CTE_Rebates AS (
  SELECT
      au.porik AS rb_porik,
      au.mpik AS rb_mpik,
      au.fund_secik AS rb_fund_secik,
      au.ym AS rb_ym,
      ROUND(
          DECODE(
              po.portfolio_wrapper,
              'NO CLIENT',
              DECODE(
                  UPPER(SUBSTR(au.fund_isin, 1, 2)),
                  'NO', 0,
                  NVL(ce.fee_distribution_fee, co.fc_rate_dis)
              ),
              NVL(ce.fee_distribution_fee, co.fc_rate_dis)
          ) * au.avg_mv_dkk * au.days / 100 / DECODE(MOD(ROUND(au.ym / 100, 0), 4), 0, 366, 365),
          2
      ) AS rb_net_dis_dkk,
      po.portfolio_wrapper AS rb_portfolio_wrapper,
      NVL(ce.fee_distribution_fee, co.fc_rate_dis) AS rb_fee_rate
  FROM u_aum_monthly au
  LEFT JOIN t_flow_fees flf ON au.ym = flf.ym AND au.porik = flf.porik
  LEFT JOIN app_grip.grip_v_fund_costs_combined co ON au.fund_isin = co.fc_isin
  LEFT JOIN dwh_d_portfolio_v po ON au.porik = po.portfolio_sk
  LEFT JOIN app_grip.am_flm_grip_rates_total_v ce ON au.fund_isin = ce.isin AND au.ult_date BETWEEN ce.valid_from AND ce.valid_to
),
CTE_Results AS (
  SELECT
      au.porik AS res_porik,
      au.mpik AS res_mpik,
      au.fund_secik AS res_fund_secik,
      cc.cc_avg_mv_cur,
      cc.cc_ult_mv_cur,
      cc.cc_dis_cur,
      cc.cc_reb_cur,
      cg.cg_client_group_top,
      cg.cg_cty,
      cg.cg_man_cty,
      cg.cg_porname,
      rb.rb_net_dis_dkk,
      CASE
          WHEN NVL(rb.rb_net_dis_dkk, 0) > NVL(cc.cc_dis_cur, 0)
          THEN cc.cc_dis_cur
          ELSE rb.rb_net_dis_dkk
      END AS res_reb_dis_dkk
  FROM u_aum_monthly au
  JOIN CTE_CurrencyConversions cc ON au.fund_secik = cc.cc_fund_secik
  JOIN CTE_ClientGroup cg ON au.porik = cg.cg_portfolio_sk
  JOIN CTE_Rebates rb ON au.porik = rb.rb_porik AND au.fund_secik = rb.rb_fund_secik AND au.ym = rb.rb_ym
)
SELECT
    res_porik,
    res_mpik,
    res_fund_secik,
    cc_avg_mv_cur,
    cc_ult_mv_cur,
    cc_dis_cur,
    cc_reb_cur,
    cg_client_group_top,
    cg_cty,
    cg_man_cty,
    cg_porname,
    rb_net_dis_dkk,
    res_reb_dis_dkk
FROM CTE_Results;
