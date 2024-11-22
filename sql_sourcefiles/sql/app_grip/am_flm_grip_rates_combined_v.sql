
  CREATE OR REPLACE EDITIONABLE VIEW app_grip."AM_FLM_GRIP_RATES_COMBINED_V" ("ISIN", "VALID_FROM", "VALID_TO", "DIS_DK", "DIS_NO", "DIS_SE", "DIS_FI", "DIS_LU", "MAN", "ADM", "ADV_GRIP", "ADV_EXT", "MAN_FLM", "MAN_GRIP", "ADM_FLM", "ADM_GRIP", "TAX_FLM") AS SELECT fc_isin AS isin,
          fd AS valid_from,
          td AS valid_to,
          decode(se_fc_fee_fund_owner_3, 'SICAVSIF - GPS', COALESCE(dis_global_grip, 0), decode(substr(fc_isin, 1, 2),
                'DK', COALESCE(dis_flm, dis_global_grip), 'LU', COALESCE(dis_flm, dis_global_grip), dis_global_grip)) AS dis_dk,
          decode(se_fc_fee_fund_owner_3, 'SICAVSIF - GPS', COALESCE(dis_no_grip, dis_global_grip, 0), decode(substr(fc_isin, 1, 2),
                'DK', COALESCE(dis_flm, dis_no_grip, dis_global_grip), 'LU', COALESCE(dis_flm, dis_no_grip, dis_global_grip),
                COALESCE(dis_no_grip, dis_global_grip))) AS dis_no,
          decode(se_fc_fee_fund_owner_3, 'SICAVSIF - GPS', COALESCE(dis_se_grip, dis_global_grip, 0), decode(substr(fc_isin, 1, 2),
                'DK', COALESCE(dis_flm, dis_se_grip, dis_global_grip), 'LU', COALESCE(dis_flm, dis_se_grip, dis_global_grip),
                COALESCE(dis_se_grip, dis_global_grip))) AS dis_se,
          decode(se_fc_fee_fund_owner_3, 'SICAVSIF - GPS', COALESCE(dis_fi_grip, dis_global_grip, 0), decode(substr(fc_isin, 1, 2),
                'DK', COALESCE(dis_flm, dis_fi_grip, dis_global_grip), 'LU', COALESCE(dis_flm, dis_fi_grip, dis_global_grip),
                COALESCE(dis_fi_grip, dis_global_grip))) AS dis_fi,
          decode(se_fc_fee_fund_owner_3, 'SICAVSIF - GPS', COALESCE(dis_lu_grip, dis_global_grip, 0), decode(substr(fc_isin, 1, 2),
                'DK', COALESCE(dis_flm, dis_lu_grip, dis_global_grip), 'LU', COALESCE(dis_flm, dis_lu_grip, dis_global_grip),
                COALESCE(dis_lu_grip, dis_global_grip))) AS dis_lu,
          decode(se_fc_fee_fund_owner_3, 'SICAVSIF - GPS', COALESCE(man_grip, 0), COALESCE(man_flm, man_grip)) AS man,
          decode(se_fc_fee_fund_owner_3, 'SICAVSIF - GPS', COALESCE(adm_grip, 0), COALESCE(adm_flm, adm_grip)) AS adm,
          adv_grip,
          adv_ext,
          man_flm,
          man_grip,
          adm_flm,
          adm_grip,
          tax_flm
     FROM am_flm_grip_rates_v;


  GRANT SELECT ON "AM_FLM_GRIP_RATES_COMBINED_V" TO "APP_WAAM";
  GRANT SELECT ON "AM_FLM_GRIP_RATES_COMBINED_V" TO "APP_GRIP_READ";
