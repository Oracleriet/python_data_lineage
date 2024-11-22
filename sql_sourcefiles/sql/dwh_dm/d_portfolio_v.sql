
  CREATE OR REPLACE EDITIONABLE VIEW "D_PORTFOLIO_V" ("D_PORTFOLIO_ID", "PORTFOLIO_SK", "PORTFOLIO", "PORTFOLIO_NAME", "PORTFOLIO_ASSET", "PORTFOLIO_LIABILITY", "CLIENT_SHORT_NAME", "CLIENT_NAME", "LEI_CODE", "MANAGER", "MANAGER_COUNTRY", "STREET", "POSTCODE", "CITY", "START_REPORTING", "ACCOUNTING_YEAR", "PORTFOLIO_CURRENCY", "PORTFOLIO_CURRENCY_NAME", "DWH_CREATED_DATE", "DWH_CREATED_BY", "DWH_CHANGED_DATE", "DWH_CHANGED_BY", "PORTFOLIO_STATUS", "INCEPTION_DATE", "OPENING_DATE", "CLOSING_DATE", "TERMINATION_DATE", "TITLE", "NAME", "COUNTRY", "BENCHMARK_PORTFOLIO", "INVESTOR_TYPE", "INVESTOR_TYPE_NAME", "SETTLEMENT_TYPE", "SETTLEMENT_TYPE_NAME", "STRATEGY", "STRATEGY_NAME", "PORTFOLIO_TYPE", "PORTFOLIO_TYPE_NAME", "VALUE_ADDED_TAX", "PORTFOLIO_WRAPPER", "CLIENT_MANAGER", "CLIENT_MANAGER_TITLE", "CLIENT_MANAGER_STREET", "CLIENT_MANAGER_PHONE", "CLIENT_MANAGER_POSTCODE", "CLIENT_MANAGER_CITY", "CLIENT_MANAGER_COUNTRY", "CLIENT_MANAGER_EMAIL", "REFERENCE_RETURN", "REPORTING_BANKDAY", "REPORTING_EXCEL", "REPORTING_FREQUENCY", "REPORTING_LANGUAGE", "NIS_MIGRATED", "INVESTMENT_PROFILE", "COLLATED_PORTFOLIO", "CALC_SEGMENT_SK", "S_BATCHID", "NON_FUND_PORTFOLIO_TYPE", "NON_FUND_PORTFOLIO_TYPE_NAME", "LUX_MANAGER", "LUX_MANAGER_NAME", "LUX_MANAGER_EMAIL", "LIVE_DATE", "CUSTOMER_TYPE", "CUSTOMER_TYPE_NAME", "CONTRACT_TYPE", "CONTRACT_TYPE_NAME", "EXECUTION", "SCD_PORTFOLIO_TYPE", "REPORTING_TYPE", "REPORTING_TYPE_NAME", "FIRST_PERF_DATE", "POR_GROUP", "COUNT_IN_ISSUE_REDEMPTION", "FI_REPORT_TYPE", "EXECUTION_NAME", "CB_SWEEP", "CB_SWEEP_NAME", "FINANCE_SCHEMES", "FINANCE_SCHEMES_NAME", "AUTO_RAISE", "AUTO_RAISE_NAME", "MIFID_II", "MIFID_II_NAME", "CLEAN_CLASS_RESTRICTION", "PERF_REP_TYPE", "ESG_FUND_CATEGORY", "ESG_FUND_CATEGORY_NAME", "JPM_MIGRATED", "JPM_MIGRATED_NAME", "PORTFOLIO_NAME_NORM", "PORTYPEFUND", "PORTYPEFUND_TXT") AS select portfolio.d_portfolio_id,
       portfolio.portfolio_sk,
       portfolio.portfolio,
       portfolio.portfolio_name,
       portfolio.portfolio_asset,
       portfolio.portfolio_liability,
       portfolio.client_short_name,
       portfolio.client_name,
       portfolio.lei_code,
       portfolio.manager,
       portfolio.manager_country,
       portfolio.street,
       portfolio.postcode,
       portfolio.city,
       portfolio.start_reporting,
       portfolio.accounting_year,
       portfolio.portfolio_currency,
       portfolio.portfolio_currency_name,
       portfolio.dwh_created_date,
       portfolio.dwh_created_by,
       portfolio.dwh_changed_date,
       portfolio.dwh_changed_by,
       portfolio.portfolio_status,
       portfolio.inception_date,
       portfolio.opening_date,
       portfolio.closing_date,
       portfolio.termination_date,
       portfolio.title,
       portfolio.name,
       portfolio.country,
       portfolio.benchmark_portfolio,
       portfolio.investor_type,
       portfolio.investor_type_name,
       portfolio.settlement_type,
       portfolio.settlement_type_name,
       portfolio.strategy,
       portfolio.strategy_name,
       portfolio.portfolio_type,
       portfolio.portfolio_type_name,
       portfolio.value_added_tax,
       portfolio.portfolio_wrapper,
       portfolio.client_manager,
       portfolio.client_manager_title,
       portfolio.client_manager_street,
       portfolio.client_manager_phone,
       portfolio.client_manager_postcode,
       portfolio.client_manager_city,
       portfolio.client_manager_country,
       portfolio.client_manager_email,
       portfolio.reference_return,
       portfolio.reporting_bankday,
       portfolio.reporting_excel,
       portfolio.reporting_frequency,
       portfolio.reporting_language,
       portfolio.nis_migrated,
       portfolio.investment_profile,
       portfolio.collated_portfolio,
       portfolio.calc_segment_sk,
       portfolio.s_batchid,
       portfolio.non_fund_portfolio_type,
       portfolio.non_fund_portfolio_type_name,
       portfolio.lux_manager,
       portfolio.lux_manager_name,
       portfolio.lux_manager_email,
       portfolio.live_date,
       portfolio.customer_type,
       portfolio.customer_type_name,
       portfolio.contract_type,
       portfolio.contract_type_name,
       portfolio.execution,
       portfolio.scd_portfolio_type,
       portfolio.reporting_type,
       portfolio.reporting_type_name,
       portfolio.first_perf_date,
       portfolio.por_group,
       portfolio.count_in_issue_redemption,
       portfolio.fi_report_type,
       portfolio.execution_name,
       portfolio.cb_sweep,
       portfolio.cb_sweep_name,
       portfolio.finance_schemes,
       portfolio.finance_schemes_name,
       portfolio.auto_raise,
       portfolio.auto_raise_name,
       portfolio.mifid_ii,
       portfolio.mifid_ii_name,
       portfolio.clean_class_restriction,
       portfolio.perf_rep_type,
       portfolio.esg_fund_category,
       portfolio.esg_fund_category_name,
       portfolio.jpm_migrated,
       portfolio.jpm_migrated_name,
       portfolio.portfolio_name_norm,
       portfolio.portypefund,
       portfolio.portypefund_txt
from d_portfolio portfolio
where 1=1;

   COMMENT ON COLUMN "D_PORTFOLIO_V"."D_PORTFOLIO_ID" IS 'Portolio ID';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."PORTFOLIO_SK" IS 'Portfolio Source Key, the unique identifier in the source system, (column porik in tmsdat.portfolios cast as varchar2)';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."PORTFOLIO" IS 'Portfolio (column tmsdat.portfolios.por)';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."PORTFOLIO_NAME" IS 'Portfolio name (DWH_EDW.PORTFOLIO_VA.PORTFOLIO_NAME <> TMSDAT.PORTFOLIOS.PORNAME)';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."PORTFOLIO_ASSET" IS 'Asset portfolio indicator';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."PORTFOLIO_LIABILITY" IS 'Liability portfolio indicator';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."LEI_CODE" IS 'Legal entity identifier';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."MANAGER" IS 'Manager';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."STREET" IS 'Street';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."POSTCODE" IS 'Post code';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."CITY" IS 'City';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."START_REPORTING" IS 'Start reporting date (column tmsdat.portfolios.porfc10 cast as a ''dd-mm-yyyy'' date)';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."PORTFOLIO_CURRENCY" IS 'Portfolio currency (DWH_EDW.CURRENCY_VA.CURRENCY <> TMSDAT.CURRENCIES.CUR)';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."DWH_CREATED_DATE" IS 'Trigger generated creation date';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."DWH_CHANGED_DATE" IS 'Trigger generated changed date';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."PORTFOLIO_STATUS" IS 'Portfolio Status (column tmsdat.portfolios.porfc7 ''LEVENDE'')';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."INCEPTION_DATE" IS ' The date the AIF started business (yyyy-mm-dd (ISO 8601 Date Format))
';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."OPENING_DATE" IS 'Opening date (column tmsdat.portfolios.portopendate)';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."CLOSING_DATE" IS 'Closing date (column tmsdat.portfolios.portclosedate)';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."TERMINATION_DATE" IS 'Termination date (column tmsdat.portfolios.porttermdate)';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."NAME" IS 'Internal name of the event which is used to reference it from apex_application_page_da and to bind the Javascript event.';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."VALUE_ADDED_TAX" IS 'Portfolio uses value added tax (VAT), ''Y'' or ''N'' (column tmsdat.portfolios.porfc30)';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."PORTFOLIO_WRAPPER" IS 'Portfolio wrapper (column tmsdat.portfolios.porfc34)';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."REFERENCE_RETURN" IS 'Reference Return indicator (from D_PORTFOLIO times series 4)';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."REPORTING_BANKDAY" IS 'Reporting bankday (TMSDAT.PORTFOLIOS.PORFC21)';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."REPORTING_EXCEL" IS 'Zero/one indicator of whether or not the client recieves  Excel reporting (TMSDAT.DPSFREECODES29.DPSFC29)';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."REPORTING_FREQUENCY" IS 'Reporting frequency (TMSDAT.PORTFREECODES51.PORFC51)';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."REPORTING_LANGUAGE" IS 'Reporting language (and country) in a Vermilion usable fromat (TMSDAT.DPSFREECODES29.DPSFCNAME)';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."NIS_MIGRATED" IS 'Zero/one indicator of whether or not the client is migrated in DCNIS (TMSDAT.PORTFOLIOS.PORFC17)';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."INVESTMENT_PROFILE" IS 'Investment profile (from portfolio free code 64)';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."COLLATED_PORTFOLIO" IS 'Indicates if it is a collated portfolio (samlesag).';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."S_BATCHID" IS 'EDW batch ID, used for incremental load)';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."CONTRACT_TYPE" IS 'Contract type (from Portfolio free codes 54)';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."CONTRACT_TYPE_NAME" IS 'Contract type name (from Portfolio free codes 54)';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."EXECUTION" IS 'Execution #SCD tmsdat.portfreecodes55.porfc55';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."SCD_PORTFOLIO_TYPE" IS 'SCD portfolio type #SCD: tmsdat.portfolios.portype';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."POR_GROUP" IS 'Portfolio Group (TMSDAT.PORTGROUPS.PORGRP)';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."FI_REPORT_TYPE" IS 'FI Reporting type #SCD: TMSDAT.PORTFREECODES52.PORFC52';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."EXECUTION_NAME" IS 'Execution name#SCD tmsdat.portfreecodes55.porfcname';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."CB_SWEEP" IS 'CB sweep #SCD tmsdat.portfreecodes65.porfc65';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."CB_SWEEP_NAME" IS 'CB sweep name #SCD tmsdat.portfreecodes65.porfc65name';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."FINANCE_SCHEMES" IS 'Finance scheme #SCD tmsdat.portfreecodes71.porfc71';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."FINANCE_SCHEMES_NAME" IS 'Finance scheme name #SCD tmsdat.portfreecodes71.porfc71name';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."AUTO_RAISE" IS 'Auto raise #SCD tmsdat.portfreecodes84.porfc84';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."AUTO_RAISE_NAME" IS 'Auto raise name #SCD tmsdat.portfreecodes84.porfc84name';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."MIFID_II" IS 'MIFID II #SCD tmsdat.portfreecodes85.porfc85';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."MIFID_II_NAME" IS 'MIFID II name #SCD tmsdat.portfreecodes85.porfc85name';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."CLEAN_CLASS_RESTRICTION" IS 'Clean Class restriction (Yes/No) #SCD tmsdat.portfolios.porfc33';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."PERF_REP_TYPE" IS 'Indicates which type of perf report should be used for client reporting: GBS, TAA or standard. Used as input to VRS in app_cr.get_portfolio_prc (TMSDAT.PORTFREECODES25.PORFC25)';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."ESG_FUND_CATEGORY" IS 'ESG article nb #SCD tmsdat.porgrpfreecodes19.porgrpfc19';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."ESG_FUND_CATEGORY_NAME" IS 'ESG article nb #SCD tmsdat.porgrpfreecodes19.porgrpfc19name';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."JPM_MIGRATED" IS 'JPM migrated value #SCD tmsdat.porgrpfreecodes28.porgrpfc28';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."JPM_MIGRATED_NAME" IS 'JPM migrated value #SCD tmsdat.porgrpfreecodes19.porgrpfc28name';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."PORTYPEFUND" IS 'portypefund #SCD tmsdat.portfolios.portypefund';
   COMMENT ON COLUMN "D_PORTFOLIO_V"."PORTYPEFUND_TXT" IS 'portypefund EN text #SCD tmsdat.portfolios.portypefund';


  GRANT SELECT ON "D_PORTFOLIO_V" TO "DWH_DM_READ";
  GRANT MERGE VIEW ON "D_PORTFOLIO_V" TO "DWH_DM_STG" WITH GRANT OPTION;
  GRANT FLASHBACK ON "D_PORTFOLIO_V" TO "DWH_DM_STG" WITH GRANT OPTION;
  GRANT DEBUG ON "D_PORTFOLIO_V" TO "DWH_DM_STG" WITH GRANT OPTION;
  GRANT QUERY REWRITE ON "D_PORTFOLIO_V" TO "DWH_DM_STG" WITH GRANT OPTION;
  GRANT ON COMMIT REFRESH ON "D_PORTFOLIO_V" TO "DWH_DM_STG" WITH GRANT OPTION;
  GRANT READ ON "D_PORTFOLIO_V" TO "DWH_DM_STG" WITH GRANT OPTION;
  GRANT REFERENCES ON "D_PORTFOLIO_V" TO "DWH_DM_STG" WITH GRANT OPTION;
  GRANT UPDATE ON "D_PORTFOLIO_V" TO "DWH_DM_STG" WITH GRANT OPTION;
  GRANT INSERT ON "D_PORTFOLIO_V" TO "DWH_DM_STG" WITH GRANT OPTION;
  GRANT DELETE ON "D_PORTFOLIO_V" TO "DWH_DM_STG" WITH GRANT OPTION;
  GRANT SELECT ON "D_PORTFOLIO_V" TO "APP_PMCC";
  GRANT SELECT ON "D_PORTFOLIO_V" TO "APP_SWING";
  GRANT SELECT ON "D_PORTFOLIO_V" TO "APP_ESG";
  GRANT MERGE VIEW ON "D_PORTFOLIO_V" TO "APP_BOF";
  GRANT FLASHBACK ON "D_PORTFOLIO_V" TO "APP_BOF";
  GRANT DEBUG ON "D_PORTFOLIO_V" TO "APP_BOF";
  GRANT QUERY REWRITE ON "D_PORTFOLIO_V" TO "APP_BOF";
  GRANT ON COMMIT REFRESH ON "D_PORTFOLIO_V" TO "APP_BOF";
  GRANT READ ON "D_PORTFOLIO_V" TO "APP_BOF";
  GRANT REFERENCES ON "D_PORTFOLIO_V" TO "APP_BOF";
  GRANT UPDATE ON "D_PORTFOLIO_V" TO "APP_BOF";
  GRANT INSERT ON "D_PORTFOLIO_V" TO "APP_BOF";
  GRANT DELETE ON "D_PORTFOLIO_V" TO "APP_BOF";
  GRANT SELECT ON "D_PORTFOLIO_V" TO "APP_EOY" WITH GRANT OPTION;
  GRANT SELECT ON "D_PORTFOLIO_V" TO "APP_BOF";
  GRANT SELECT ON "D_PORTFOLIO_V" TO "APP_WAAM";
  GRANT SELECT ON "D_PORTFOLIO_V" TO "APP_PMMB";
  GRANT SELECT ON "D_PORTFOLIO_V" TO "D007840";
  GRANT SELECT ON "D_PORTFOLIO_V" TO "DWH_DM_STG" WITH GRANT OPTION;
  GRANT MERGE VIEW ON "D_PORTFOLIO_V" TO "APP_DR";
  GRANT FLASHBACK ON "D_PORTFOLIO_V" TO "APP_DR";
  GRANT DEBUG ON "D_PORTFOLIO_V" TO "APP_DR";
  GRANT QUERY REWRITE ON "D_PORTFOLIO_V" TO "APP_DR";
  GRANT ON COMMIT REFRESH ON "D_PORTFOLIO_V" TO "APP_DR";
  GRANT READ ON "D_PORTFOLIO_V" TO "APP_DR";
  GRANT REFERENCES ON "D_PORTFOLIO_V" TO "APP_DR";
  GRANT UPDATE ON "D_PORTFOLIO_V" TO "APP_DR";
  GRANT SELECT ON "D_PORTFOLIO_V" TO "APP_DR";
  GRANT INSERT ON "D_PORTFOLIO_V" TO "APP_DR";
  GRANT DELETE ON "D_PORTFOLIO_V" TO "APP_DR";
  GRANT SELECT ON "D_PORTFOLIO_V" TO "APP_WAAM_REP";
  GRANT SELECT ON "D_PORTFOLIO_V" TO "APP_MIFID" WITH GRANT OPTION;
  GRANT SELECT ON "D_PORTFOLIO_V" TO "ODI_CONNECT";
  GRANT SELECT ON "D_PORTFOLIO_V" TO "DWH_CTRL";
  GRANT SELECT ON "D_PORTFOLIO_V" TO "APP_MAR";
  GRANT SELECT ON "D_PORTFOLIO_V" TO "APP_EOY" WITH GRANT OPTION;
  GRANT SELECT ON "D_PORTFOLIO_V" TO "APP_DS";
  GRANT SELECT ON "D_PORTFOLIO_V" TO "QUOV";
  GRANT SELECT ON "D_PORTFOLIO_V" TO "INT_REPORTING";
  GRANT SELECT ON "D_PORTFOLIO_V" TO "APP_DIMA" WITH GRANT OPTION;
  GRANT SELECT ON "D_PORTFOLIO_V" TO "APP_SAS";
  GRANT SELECT ON "D_PORTFOLIO_V" TO "APP_ASMA";
  GRANT SELECT ON "D_PORTFOLIO_V" TO "DWH_DSA_SCD" WITH GRANT OPTION;
  GRANT SELECT ON "D_PORTFOLIO_V" TO "APP_AUTHORITY" WITH GRANT OPTION;
  GRANT SELECT ON "D_PORTFOLIO_V" TO "DWH_SCHEDULER" WITH GRANT OPTION;
  GRANT SELECT ON "D_PORTFOLIO_V" TO "APP_OS";
  GRANT SELECT ON "D_PORTFOLIO_V" TO "APP_GRIP" WITH GRANT OPTION;
  GRANT SELECT ON "D_PORTFOLIO_V" TO "INT_DCLINK";
  GRANT SELECT ON "D_PORTFOLIO_V" TO "APP_CR" WITH GRANT OPTION;
