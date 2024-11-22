-- Start af Report output from DS074.sql --
      create  or replace view DS074_OUTPUT as
      SELECT greatest(MIN(accounting_year_start), TO_DATE('01-01-2018', 'DD-MM-YYYY')) fromdate, -- fromdate is the accounting year's start, but never earlier than 1-1-2018 (DEVS-582)
             /*in_todate*/ to_date('31-12-2023','DD-MM-YYYY') todate,
             por portfolio,
             SUM(dis) paid_dist_fee,
             SUM(reb) returned_dist_fee,
             SUM(net) net_dist_fee
        /*case when round(sum(dis) - sum(reb),2) = 0 then 0 
             else  sum(net)
        end Net_dist_fee*/
        FROM (
                SELECT accounting_year_start,
                       por,
                       dis,
                       reb,
                       net
                  FROM app_cr.cost_distribution_fee_v
                 WHERE 1 = 1
                   AND por = :in_portfolio
                   -- within the right accounting year
                   AND accounting_year_start <= /*in_todate*/ to_date('31-12-2023','DD-MM-YYYY')
                   AND /*in_todate*/ to_date('31-12-2023','DD-MM-YYYY') <= accounting_year_end
                   -- never before 31-12-2017 (DEVS-582)
                   AND TO_DATE('31-12-2017', 'DD-MM-YYYY') < ult_date
                   -- excluding costs after the todate 
                   AND /*in_todate*/ to_date('31-12-2023','DD-MM-YYYY') >= ult_date
                -- adding zero-line to make sure every portfolio will have en output  
                UNION ALL
                SELECT NULL accounting_year_start,
                       :in_portfolio por,
                       0 dis,
                       0 reb,
                       0 net
                  FROM dual
             )
       GROUP BY por;
-- Slut af Report output from DS074.sql --

-- Start af app_cr/cost_distribution_fee_v.sql --

  CREATE OR REPLACE VIEW app_cr."COST_DISTRIBUTION_FEE_V" ("ULT_DATE", "ACCOUNTING_YEAR_START", "ACCOUNTING_YEAR_END", "ACC_YEAR", "PORIK", "POR", "SECIK", "ISIN", "DIS", "REB", "NET") AS select max(ult_date) ult_date,
       add_months(last_day(to_date(acc_year||acc_month, 'yyyymm')),-12) + 1 accounting_year_start,
                  last_day(to_date(acc_year||acc_month, 'yyyymm'))          accounting_year_end,           
       acc_year,
       porik,
       por,
       secik,
       isin,
       sum(nvl(dis_cur,0))                           dis,
       least(sum(nvl(reb_cur,0)),sum(nvl(dis_cur,0))) reb,
       greatest(sum(nvl(dis_cur,0))  - sum(nvl(reb_cur,0)),0) net
from app_grip_read.u_rec_distr
where wrapper in ('FI CLIENT','FI FUND')
group by 
       acc_year,
       yq,
       porik,
       por,
       secik,
       isin,
       add_months(last_day(to_date(acc_year||acc_month, 'yyyymm')),-12) + 1,
                  last_day(to_date(acc_year||acc_month, 'yyyymm'))
       
union all

/* DEVS-613: Other portfolios are aggregated yearly - and data are fetched from a different view*/
select ult_date,
       accounting_year_start,
       accounting_year_end,           
       acc_year,
       porik,
       por,
       secik,
       isin,
       dis,
       reb,
       net
from APP_GRIP_READ.U_REC_DISTR_ACC_YEAR       
where wrapper not in ('FI CLIENT','FI FUND');


-- Slut af app_cr/cost_distribution_fee_v.sql --

