
  CREATE OR REPLACE EDITIONABLE VIEW app_grip."AM_FLM_GRIP_RATES_TOTAL_V" ("ISIN", "VALID_FROM", "VALID_TO", "DIS_DK", "DIS_NO", "DIS_SE", "DIS_FI", "DIS_LU", "MAN", "ADM", "ADV_GRIP", "ADV_EXT", "CDY_RATE", "CDY_FEE", "ADM_DEDUCTED", "FUND_TYPE", "INC_DK", "INC_NO", "INC_SE", "INC_FI", "INC_LU", "INC", "DIS", "MAN_FLM", "MAN_GRIP", "ADM_FLM", "ADM_GRIP", "TAX_FLM") AS select a.isin,
          a.valid_from,
          a.valid_to,
          a.dis_dk,
          a.dis_no,
          a.dis_se,
          a.dis_fi,
          a.dis_lu,
          a.man,
          a.adm,
          a.adv_grip,
          a.adv_ext,
          b.cdy_rate * 100 cdy_rate,
          c.cdy_fee * 100 cdy_fee,
          coalesce((a.adm - coalesce(b.cdy_rate, c.cdy_fee, 0) * 100), a.adm) as adm_deducted,
          decode(d.isin, null, 'ext', 'int') fund_type,
          decode(decode(d.isin, null, 'ext', 'int'), 'int', (man + nvl(adm, 0) - coalesce(b.cdy_rate, c.cdy_fee, 0) * 100 -
             nvl(adv_ext, 0)), 'ext', (nvl(adv_grip, 0) + dis_dk), null) inc_dk,
          decode(decode(d.isin, null, 'ext', 'int'), 'int', (man + nvl(adm, 0) - coalesce(b.cdy_rate, c.cdy_fee, 0) * 100 -
             nvl(adv_ext, 0)), 'ext', (nvl(adv_grip, 0) + coalesce(dis_no, dis_dk)), null) inc_no,
          decode(decode(d.isin, null, 'ext', 'int'), 'int', (man + nvl(adm, 0) - coalesce(b.cdy_rate, c.cdy_fee, 0) * 100 -
             nvl(adv_ext, 0)), 'ext', (nvl(adv_grip, 0) + coalesce(dis_se, dis_dk)), null) inc_se,
          decode(decode(d.isin, null, 'ext', 'int'), 'int', (man + nvl(adm, 0) - coalesce(b.cdy_rate, c.cdy_fee, 0) * 100 -
             nvl(adv_ext, 0)), 'ext', (nvl(adv_grip, 0) + coalesce(dis_fi, dis_dk)), null) inc_fi,
          decode(decode(d.isin, null, 'ext', 'int'), 'int', (man + nvl(adm, 0) - coalesce(b.cdy_rate, c.cdy_fee, 0) * 100 -
             nvl(adv_ext, 0)), 'ext', (nvl(adv_grip, 0) + coalesce(dis_lu, dis_dk)), null) inc_lu,
          decode(decode(d.isin, null, 'ext', 'int'), 'int', (man + nvl(adm, 0) - coalesce(b.cdy_rate, c.cdy_fee, 0) * 100 -
             nvl(adv_ext, 0)), 'ext', (nvl(adv_grip, 0) + coalesce(dis_dk, dis_no, dis_fi, dis_lu, dis_se)), null) inc,
          coalesce(dis_dk, dis_no, dis_fi, dis_lu, dis_se) dis,
          a.man_flm,
          a.man_grip,
          a.adm_flm,
          a.adm_grip,
          a.tax_flm
     from am_flm_grip_rates_combined_v a
     left join app_grip_read.t_fund_rates_cdy b
       on a.isin = b.isin
     left join app_grip_read.t_rate_excel_pricelist c
       on a.isin = c.isin
     left join (select distinct se_isin isin from grip_scd_t_securities where se_fc_fee_fund_owner_1 = 'DIMA FUND') d
       on a.isin = d.isin;


  GRANT SELECT ON "AM_FLM_GRIP_RATES_TOTAL_V" TO "APP_PMF1" WITH GRANT OPTION;
  GRANT SELECT ON "AM_FLM_GRIP_RATES_TOTAL_V" TO "APP_CR" WITH GRANT OPTION;
  GRANT SELECT ON "AM_FLM_GRIP_RATES_TOTAL_V" TO "APP_GRIP_READ" WITH GRANT OPTION;
  GRANT SELECT ON "AM_FLM_GRIP_RATES_TOTAL_V" TO "APP_WAAM" WITH GRANT OPTION;
