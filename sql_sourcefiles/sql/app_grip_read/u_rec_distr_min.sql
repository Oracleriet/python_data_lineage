  CREATE OR REPLACE EDITIONABLE VIEW app_grip_read."U_REC_DISTR" AS 
  select         
        round(decode(nvl(FX_POR_TO_DKK,0),0,null,DIS_DKK/FX_POR_TO_DKK),2)*PAID_TO_DB             DIS_CUR
        ,round(decode(nvl(FX_POR_TO_DKK,0),0,null,nvl(REB_DKK,0)/FX_POR_TO_DKK),2)
         + nvl(SCD_REB_CUR,0)                                            REB_CUR
        ,case when nvl(REB_DKK,0)+nvl(SCD_REB_DKK,0) > nvl(DIS_DKK,0)
              then round(decode(nvl(FX_POR_TO_DKK,0),0,null,nvl(DIS_DKK,0)/FX_POR_TO_DKK),2)
              else round(decode(nvl(FX_POR_TO_DKK,0),0,null,nvl(REB_DKK,0)/FX_POR_TO_DKK),2)
                   + nvl(SCD_REB_CUR,0) 
         end                                                                                       REB_DIS_CUR
        ,round(decode(nvl(FX_POR_TO_DKK,0),0,null,nvl(NET_DIS_DKK,0)/FX_POR_TO_DKK),2)
         *PAID_TO_DB                                                      NET_DIS_CUR
 
from (
select 
       round(decode(po.portfolio_wrapper,'NO CLIENT',decode(upper(substr(au.fund_isin,1,2)),'NO',0,coalesce(ce.fee_distribution_fee,co.fc_rate_dis,lu.rate,fi.rate)),coalesce(ce.fee_distribution_fee,co.fc_rate_dis,lu.rate,fi.rate))*au.avg_mv_dkk*au.days/100/decode(mod(round(au.ym/100,0),4),0,366,365),2) dis_dkk
     , re.reb_dkk
     , (round(decode(po.portfolio_wrapper,'NO CLIENT',decode(upper(substr(au.fund_isin,1,2)),'NO',0,coalesce(ce.fee_distribution_fee,co.fc_rate_dis,lu.rate,fi.rate)),coalesce(ce.fee_distribution_fee,co.fc_rate_dis,lu.rate,fi.rate))*au.avg_mv_dkk*au.days/100/decode(mod(round(au.ym/100,0),4),0,366,365),2) - nvl(re.reb_dkk,0) - (nvl(flf.value_dkk,0)+nvl(flc.value_dkk,0)) ) net_dis_dkk
     , re.reb_eur
     , au.fx_por_to_dkk

    , nvl(flf.value_pc,0)+nvl(flc.value_pc,0)   scd_reb_cur
    , decode( po.portfolio_wrapper
             , 'FI CLIENT', decode( po.contract_type
                                  , 'DISCRETION', case
                                                    when au.ym < 201804 then 0
                                                                        else 1
                                                  end
                                  , 1)
             , 1) paid_to_db
from u_aum_monthly                 au  -- requires report_tables.p_... to be executed
join v_securities sec on au.fund_fokd = sec.se_secshort
left join (select isin, valid_from, valid_to, dis fee_distribution_fee
           from app_grip.am_flm_grip_rates_total_v) ce on au.fund_isin = ce.isin and au.ult_date between ce.valid_from and ce.valid_to
left join t_income_monthly         re   on  au.porik = re.porik  -- requires report_tables.p_... to be executed
                                        and au.mpik = re.mpik
                                        and au.fund_secik = re.secik
                                        and au.ym = re.ym
left join app_grip.grip_v_fund_costs_combined co on  au.fund_isin = co.fc_isin  -- secshort is really ISIN in the table (bad column naming...)
                                        and au.ult_date between co.fc_from_date and co.fc_to_date
                                        and co.fc_rate_dis is not null
left join dwh_d_portfolio_v        po   on au.porik = po.portfolio_sk
left join t_flow_fees              flf  on flf.fund_link_valid = 1 and au.ym = flf.ym and au.porik = flf.porik and (au.mpik = flf.mpik /*or floor(flf.ym/100)=2019*/) and au.fund_secik = flf.fund_link_secik
left join t_flow_fees              flc  on flc.fund_link_valid = 0 and au.ym = flc.ym and au.porik = flc.porik and (au.mpik = flc.mpik /*or floor(flf.ym/100)=2019*/) and au.fund_secik = 0
left join t_flow_fees              flf_qe  on flf_qe.fund_link_valid = 1 and au.ym = flf_qe.ym_fi and au.porik = flf_qe.porik and (au.mpik = flf_qe.mpik /*or floor(flf.ym/100)=2019*/) and au.fund_secik = flf_qe.fund_link_secik
left join t_flow_fees              flc_qe  on flc_qe.fund_link_valid = 0 and au.ym = flc_qe.ym_fi and au.porik = flc_qe.porik and (au.mpik = flf_qe.mpik /*or floor(flf.ym/100)=2019*/) and au.fund_secik = 0
left join t_temp_lux_dis           lu   on au.fund_isin = lu.isin  -- Manually updated from spreadsheet - NO HISTORY - needs fixing - values valid for 2017 Q4ish ...
left join t_temp_fi_dis            fi   on au.fund_isin = fi.isin  -- Manually updated from spreadsheet - NO HISTORY - needs fixing - values valid for 2017 Q4ish ...
where ((au.ym>201706 and po.portfolio_wrapper in ('DK CLIENT','DK FUND')) or au.ym > 201712)
  and (au.fund_isin is not null or flc.value_pc is not null)
);

