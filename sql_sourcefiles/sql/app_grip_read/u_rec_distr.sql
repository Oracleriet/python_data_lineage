  CREATE or replace VIEW app_grip_read."U_REC_DISTR"   
  AS select PORIK, MPIK, SECIK,
         YM,YQ,YH,
         ULT_DATE,DAYS,CONTRACT_TYPE,INVESTOR_TYPE,CLIENT_GROUP_TOP,CLIENT_GROUP,
         WRAPPER,CTY,MAN_CTY,POR,PORNAME,ACCOUNTING_YEAR,YM_MONTH,ACC_MONTH,ACC_YEAR,MP,
         FOKD,ISIN,SECNAME,FULL_NAME,SCD_SHORT_NAME,
         DIS_RATE_IN_PCT
        ,RATE_SRC
        ,CUR
        ,round(decode(nvl(FX_POR_TO_DKK,0),0,null,AVG_MV_DKK/FX_POR_TO_DKK),2)                     AVG_MV_CUR
        ,round(decode(nvl(FX_POR_TO_DKK,0),0,null,ULT_MV_DKK/FX_POR_TO_DKK),2)                     ULT_MV_CUR
        ,round(decode(nvl(FX_POR_TO_DKK,0),0,null,DIS_DKK/FX_POR_TO_DKK),2)*PAID_TO_DB             DIS_CUR
        ,round(decode(nvl(FX_POR_TO_DKK,0),0,null,nvl(REB_DKK,0)/FX_POR_TO_DKK),2)
         + nvl(SCD_REB_CUR,0)                                            REB_CUR
        ,case when nvl(REB_DKK,0)+nvl(SCD_REB_DKK,0) > nvl(DIS_DKK,0)
              then round(decode(nvl(FX_POR_TO_DKK,0),0,null,nvl(DIS_DKK,0)/FX_POR_TO_DKK),2)
              else round(decode(nvl(FX_POR_TO_DKK,0),0,null,nvl(REB_DKK,0)/FX_POR_TO_DKK),2)
                   + nvl(SCD_REB_CUR,0) 
         end                                                                                       REB_DIS_CUR
        ,round(decode(nvl(FX_POR_TO_DKK,0),0,null,nvl(NET_DIS_DKK,0)/FX_POR_TO_DKK),2)
         *PAID_TO_DB                                                      NET_DIS_CUR
        ,round(decode(nvl(FX_POR_TO_DKK,0),0,null,nvl(NET_DIS_DKK_NONEGATIVES,0)/FX_POR_TO_DKK),2)
         *PAID_TO_DB                                                     NET_DIS_CUR_NONEGATIVES
        ,AVG_MV_DKK
        ,ULT_MV_DKK
        ,DIS_DKK*PAID_TO_DB                                                                        DIS_DKK
        ,nvl(REB_DKK,0)+nvl(SCD_REB_DKK,0)                                                         REB_DKK
        ,case when nvl(REB_DKK,0)+nvl(SCD_REB_DKK,0) > nvl(DIS_DKK,0)
              then DIS_DKK else nvl(REB_DKK,0)+nvl(SCD_REB_DKK,0) end                              REB_DIS_DKK
        ,NET_DIS_DKK*PAID_TO_DB                                                                    NET_DIS_DKK
        ,NET_DIS_DKK_NONEGATIVES*PAID_TO_DB                                                        NET_DIS_DKK_NONEGATIVES
        ,AVG_MV_EUR
        ,ULT_MV_EUR
        ,DIS_EUR*PAID_TO_DB                                                                        DIS_EUR
        ,nvl(REB_EUR,0)+nvl(SCD_REB_EUR,0)                                                         REB_EUR
        ,case when nvl(REB_EUR,0)+nvl(SCD_REB_EUR,0) > nvl(DIS_EUR,0)
              then DIS_EUR else nvl(REB_EUR,0)+nvl(SCD_REB_EUR,0) end                              REB_DIS_EUR
        ,NET_DIS_EUR*PAID_TO_DB                                                                    NET_DIS_EUR
        ,NET_DIS_EUR_NONEGATIVES*PAID_TO_DB                                                        NET_DIS_EUR_NONEGATIVES
        ,nvl(REB_EUR,0)+nvl(SCD_REB_EUR_QE,0)                                                      REB_EUR_QE
        ,case when nvl(REB_EUR,0)+nvl(SCD_REB_EUR_QE,0) > nvl(DIS_EUR,0)
              then DIS_EUR else nvl(REB_EUR,0)+nvl(SCD_REB_EUR_QE,0) end                           REB_DIS_EUR_QE
        ,NET_DIS_EUR_QE*PAID_TO_DB                                                                 NET_DIS_EUR_QE
        ,NET_DIS_EUR_NONEGATIVES_QE*PAID_TO_DB               NET_DIS_EUR_NONEGATIVES_QE
        ,PAID_TO_DB
from (
select au.porik, au.mpik, au.fund_secik secik, au.ym
     , decode( po.portfolio_wrapper
             , 'FI CLIENT', decode( nvl(flf.value_pc,0)+nvl(flc.value_pc,0)
                                  , 0, au.ym
                                  , decode( mod(au.ym,100)
                                          , 1, floor(au.ym/100) + 12
                                          , au.ym-1)
                                  )
             , au.ym
             ) ym_qe 
     , round(au.ym/100,0)*100+decode(sign(mod(au.ym,100)-7),-1,decode(sign(mod(au.ym,100)-4),-1,1,2),decode(sign(mod(au.ym,100)-10),-1,3,4)) yq
     , round(au.ym/100,0)*100+decode(sign(mod(au.ym,100)-7),-1,1,2) yh
     , au.ult_date, au.days, po.contract_type, po.investor_type
     , decode( po.non_fund_portfolio_type
            , 'GIC'              , 'AM'
            , 'PWM'              , 'PWM'
            , 'L P'||chr(35)||'I', 'AM'
            , 'NIC DK'           , 'AM'
            , 'LUX'              , '???'
            , 'PWM AM'           , 'PWM'
                                 , '???') client_group_top
     , po.non_fund_portfolio_type client_group, po.portfolio_wrapper wrapper
     , po.country cty, po.manager_country man_cty, po.portfolio por, po.portfolio_name porname
     , po.accounting_year
     , mod(au.ym,100)                ym_month
     , floor(po.accounting_year/100) acc_month
     , floor(au.ym/100)+decode(sign(mod(au.ym,100)-floor(po.accounting_year/100)),1,1,0) acc_year
     , au.mp
     , au.fund_fokd fokd
     , au.fund_isin isin
     , au.fund_name secname
     , sec.se_secname full_name
     , null scd_short_name
     , coalesce(ce.fee_distribution_fee,co.fc_rate_dis,lu.rate,fi.rate) dis_rate_in_pct
     , decode( ce.fee_distribution_fee
             , null, decode( co.fc_rate_dis
                           , null, decode( lu.rate
                                         , null, decode(fi.rate, null, 'NONE', 'FI XSL') 
                                         , 'LU XSL')
                           ,'GRIP')
             , 'FLM')  rate_src
     , au.cur
     , round(au.avg_mv_dkk,2) avg_mv_dkk
     , round(au.ult_mv_dkk,2) ult_mv_dkk
     , round(decode(po.portfolio_wrapper,'NO CLIENT',decode(upper(substr(au.fund_isin,1,2)),'NO',0,coalesce(ce.fee_distribution_fee,co.fc_rate_dis,lu.rate,fi.rate)),coalesce(ce.fee_distribution_fee,co.fc_rate_dis,lu.rate,fi.rate))*au.avg_mv_dkk*au.days/100/decode(mod(round(au.ym/100,0),4),0,366,365),2) dis_dkk
     , re.reb_dkk
     , (round(decode(po.portfolio_wrapper,'NO CLIENT',decode(upper(substr(au.fund_isin,1,2)),'NO',0,coalesce(ce.fee_distribution_fee,co.fc_rate_dis,lu.rate,fi.rate)),coalesce(ce.fee_distribution_fee,co.fc_rate_dis,lu.rate,fi.rate))*au.avg_mv_dkk*au.days/100/decode(mod(round(au.ym/100,0),4),0,366,365),2) - nvl(re.reb_dkk,0) - (nvl(flf.value_dkk,0)+nvl(flc.value_dkk,0)) ) net_dis_dkk
     , greatest(0,(round(decode(po.portfolio_wrapper,'NO CLIENT',decode(upper(substr(au.fund_isin,1,2)),'NO',0,coalesce(ce.fee_distribution_fee,co.fc_rate_dis,lu.rate,fi.rate)),coalesce(ce.fee_distribution_fee,co.fc_rate_dis,lu.rate,fi.rate))*au.avg_mv_dkk*au.days/100/decode(mod(round(au.ym/100,0),4),0,366,365),2) - nvl(re.reb_dkk,0) - (nvl(flf.value_dkk,0)+nvl(flc.value_dkk,0)))) net_dis_dkk_nonegatives
     , round(au.avg_mv_eur,2) avg_mv_eur
     , round(au.ult_mv_eur,2) ult_mv_eur
     , round(decode(po.portfolio_wrapper,'NO CLIENT',decode(upper(substr(au.fund_isin,1,2)),'NO',0,coalesce(ce.fee_distribution_fee,co.fc_rate_dis,lu.rate,fi.rate)),coalesce(ce.fee_distribution_fee,co.fc_rate_dis,lu.rate,fi.rate))*au.avg_mv_eur*au.days/100/decode(mod(round(au.ym/100,0),4),0,366,365),2) dis_eur
     , re.reb_eur
     , (round(decode(po.portfolio_wrapper,'NO CLIENT',decode(upper(substr(au.fund_isin,1,2)),'NO',0,coalesce(ce.fee_distribution_fee,co.fc_rate_dis,lu.rate,fi.rate)),coalesce(ce.fee_distribution_fee,co.fc_rate_dis,lu.rate,fi.rate))*au.avg_mv_eur*au.days/100/decode(mod(round(au.ym/100,0),4),0,366,365),2) - nvl(re.reb_eur,0) - (nvl(flf.value_eur,0)+nvl(flc.value_eur,0)) ) net_dis_eur
     , greatest(0,(round(decode(po.portfolio_wrapper,'NO CLIENT',decode(upper(substr(au.fund_isin,1,2)),'NO',0,coalesce(ce.fee_distribution_fee,co.fc_rate_dis,lu.rate,fi.rate)),coalesce(ce.fee_distribution_fee,co.fc_rate_dis,lu.rate,fi.rate))*au.avg_mv_eur*au.days/100/decode(mod(round(au.ym/100,0),4),0,366,365),2) - nvl(re.reb_eur,0) - (nvl(flf.value_eur,0)+nvl(flc.value_eur,0)) )) net_dis_eur_nonegatives
     , (round(decode(po.portfolio_wrapper,'NO CLIENT',decode(upper(substr(au.fund_isin,1,2)),'NO',0,coalesce(ce.fee_distribution_fee,co.fc_rate_dis,lu.rate,fi.rate)),coalesce(ce.fee_distribution_fee,co.fc_rate_dis,lu.rate,fi.rate))*au.avg_mv_eur*au.days/100/decode(mod(round(au.ym/100,0),4),0,366,365),2) - nvl(re.reb_eur,0) - (nvl(flf_qe.value_eur,0)+nvl(flc_qe.value_eur,0)) ) net_dis_eur_qe
     , greatest(0,(round(coalesce(ce.fee_distribution_fee,co.fc_rate_dis,lu.rate,fi.rate)*au.avg_mv_eur*au.days/100/decode(mod(round(au.ym/100,0),4),0,366,365),2) - nvl(re.reb_eur,0) - (nvl(flf_qe.value_eur,0)+nvl(flc_qe.value_eur,0)) )) net_dis_eur_nonegatives_qe
     , au.fx_por_to_dkk
     , au.fx_por_to_eur
     , nvl(flf.value_pc,0)+nvl(flc.value_pc,0)   scd_reb_cur
     , nvl(flf.value_dkk,0)+nvl(flc.value_dkk,0) scd_reb_dkk
     , nvl(flf.value_eur,0)+nvl(flc.value_eur,0) scd_reb_eur
     , nvl(flf_qe.value_pc,0)+nvl(flc_qe.value_pc,0)   scd_reb_cur_qe
     , nvl(flf_qe.value_dkk,0)+nvl(flc_qe.value_dkk,0) scd_reb_dkk_qe
     , nvl(flf_qe.value_eur,0)+nvl(flc_qe.value_eur,0) scd_reb_eur_qe
     , decode( po.portfolio_wrapper
             , 'FI CLIENT', decode( po.contract_type
                                  , 'DISCRETION', case
                                                    when au.ym < 201804 then 0
                                                                        else 1
                                                  end
                                  , 1)
             , 1) paid_to_db
     , (sum(au.days) over (partition by au.porik, au.fund_secik, au.ym order by au.porik, au.fund_secik, au.ym)) day_sum
from u_aum_monthly                 au  
join v_securities sec on au.fund_fokd = sec.se_secshort
left join (select isin, valid_from, valid_to, dis fee_distribution_fee
           from app_grip.am_flm_grip_rates_total_v) ce on au.fund_isin = ce.isin and au.ult_date between ce.valid_from and ce.valid_to
left join t_income_monthly         re   on  au.porik = re.porik  
                                        and au.mpik = re.mpik
                                        and au.fund_secik = re.secik
                                        and au.ym = re.ym
left join app_grip.grip_v_fund_costs_combined co on  au.fund_isin = co.fc_isin  
                                        and au.ult_date between co.fc_from_date and co.fc_to_date
                                        and co.fc_rate_dis is not null
left join dwh_d_portfolio_v        po   on au.porik = po.portfolio_sk
left join t_flow_fees              flf  on flf.fund_link_valid = 1 and au.ym = flf.ym and au.porik = flf.porik and (au.mpik = flf.mpik ) and au.fund_secik = flf.fund_link_secik
left join t_flow_fees              flc  on flc.fund_link_valid = 0 and au.ym = flc.ym and au.porik = flc.porik and (au.mpik = flc.mpik ) and au.fund_secik = 0
left join t_flow_fees              flf_qe  on flf_qe.fund_link_valid = 1 and au.ym = flf_qe.ym_fi and au.porik = flf_qe.porik and (au.mpik = flf_qe.mpik ) and au.fund_secik = flf_qe.fund_link_secik
left join t_flow_fees              flc_qe  on flc_qe.fund_link_valid = 0 and au.ym = flc_qe.ym_fi and au.porik = flc_qe.porik and (au.mpik = flf_qe.mpik ) and au.fund_secik = 0
left join t_temp_lux_dis           lu   on au.fund_isin = lu.isin  
left join t_temp_fi_dis            fi   on au.fund_isin = fi.isin  
where ((au.ym>201706 and po.portfolio_wrapper in ('DK CLIENT','DK FUND')) or au.ym > 201712)
  and (au.fund_isin is not null or flc.value_pc is not null)
);