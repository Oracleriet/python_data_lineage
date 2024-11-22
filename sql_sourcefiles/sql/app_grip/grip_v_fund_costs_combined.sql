
  CREATE OR REPLACE EDITIONABLE VIEW app_grip."GRIP_V_FUND_COSTS_COMBINED" ("SE_SECIK", "FC_ISIN", "SE_SECNAME", "FC_FROM_DATE", "FC_TO_DATE", "FC_RATE_ADM", "FC_RATE_MAN", "FC_RATE_TAX", "FC_RATE_DIS", "FC_RATE_DIS_NO", "FC_RATE_DIS_SE", "FC_RATE_DIS_FI", "FC_RATE_DIS_LU", "FC_RATE_TOT", "FC_RATE_ADV", "SE_FC_FEE_FUND_OWNER_3", "SE_FC_FEE_FUND_OWNER_2", "SE_FC_FEE_FUND_OWNER_1", "ONG") AS select d.se_secik, a.fc_isin, d.se_secname, b.fc_from_date, b.fc_to_date, c.fc_rate_adm, c.fc_rate_man, c.fc_rate_tax, c.fc_rate_dis, e.fc_rate_dis_no, e.fc_rate_dis_se, e.fc_rate_dis_fi
  , e.fc_rate_dis_lu, c.fc_rate_tot, c.fc_rate_adv, d.se_fc_fee_fund_owner_3,d.se_fc_fee_fund_owner_2, d.se_fc_fee_fund_owner_1,   
  (nvl(c.fc_rate_adm,0)+nvl(c.fc_rate_tax,0)+c.fc_rate_man) as ONG
from grip_t_fund_costs_isin   a
join grip_t_fund_costs_date   b on a.fc_id = b.fc_id
join grip_t_fund_costs_rates  c on a.fc_id = c.fc_id and b.fc_date_id = c.fc_date_id
left join grip_scd_t_securities d on a.fc_isin = d.se_secshort
left join grip_t_fund_costs_rates_dis e on a.fc_id = e.fc_id and c.fc_rate_id = e.fc_rate_id
where (d.se_secik = (select max(se_secik) from grip_scd_t_securities bb where d.se_secshort = bb.se_secshort) or se_secik is null)
order by fc_isin, fc_from_date;


  GRANT SELECT ON "GRIP_V_FUND_COSTS_COMBINED" TO "APP_WAAM";
  GRANT SELECT ON "GRIP_V_FUND_COSTS_COMBINED" TO "APP_EOY";
  GRANT SELECT ON "GRIP_V_FUND_COSTS_COMBINED" TO "APP_CR" WITH GRANT OPTION;
  GRANT SELECT ON "GRIP_V_FUND_COSTS_COMBINED" TO "APP_GRIP_READ" WITH GRANT OPTION;
