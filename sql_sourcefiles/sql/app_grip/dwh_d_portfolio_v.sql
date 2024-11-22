
  CREATE OR REPLACE EDITIONABLE VIEW app_grip."DWH_D_PORTFOLIO_V" ("D_PORTFOLIO_ID", "PORTFOLIO_SK", "PORTFOLIO", "PORTFOLIO_NAME", "PORTFOLIO_ASSET", "PORTFOLIO_LIABILITY", "CLIENT_SHORT_NAME", "CLIENT_NAME", "LEI_CODE", "MANAGER", "MANAGER_COUNTRY", "STREET", "POSTCODE", "CITY", "START_REPORTING", "ACCOUNTING_YEAR", "PORTFOLIO_CURRENCY", "PORTFOLIO_CURRENCY_NAME", "DWH_CREATED_DATE", "DWH_CREATED_BY", "DWH_CHANGED_DATE", "DWH_CHANGED_BY", "PORTFOLIO_STATUS", "INCEPTION_DATE", "OPENING_DATE", "CLOSING_DATE", "TERMINATION_DATE", "TITLE", "NAME", "COUNTRY", "BENCHMARK_PORTFOLIO", "INVESTOR_TYPE", "INVESTOR_TYPE_NAME", "SETTLEMENT_TYPE", "SETTLEMENT_TYPE_NAME", "STRATEGY", "STRATEGY_NAME", "PORTFOLIO_TYPE", "PORTFOLIO_TYPE_NAME", "VALUE_ADDED_TAX", "PORTFOLIO_WRAPPER", "CLIENT_MANAGER", "CLIENT_MANAGER_TITLE", "CLIENT_MANAGER_STREET", "CLIENT_MANAGER_PHONE", "CLIENT_MANAGER_POSTCODE", "CLIENT_MANAGER_CITY", "CLIENT_MANAGER_COUNTRY", "CLIENT_MANAGER_EMAIL", "REFERENCE_RETURN", "REPORTING_BANKDAY", "REPORTING_EXCEL", "REPORTING_FREQUENCY", "REPORTING_LANGUAGE", "NIS_MIGRATED", "INVESTMENT_PROFILE", "COLLATED_PORTFOLIO", "CALC_SEGMENT_SK", "S_BATCHID", "NON_FUND_PORTFOLIO_TYPE", "NON_FUND_PORTFOLIO_TYPE_NAME", "LUX_MANAGER", "LUX_MANAGER_NAME", "LUX_MANAGER_EMAIL", "CONTRACT_TYPE") AS select "D_PORTFOLIO_ID","PORTFOLIO_SK","PORTFOLIO","PORTFOLIO_NAME","PORTFOLIO_ASSET","PORTFOLIO_LIABILITY","CLIENT_SHORT_NAME","CLIENT_NAME","LEI_CODE","MANAGER","MANAGER_COUNTRY","STREET","POSTCODE","CITY","START_REPORTING","ACCOUNTING_YEAR","PORTFOLIO_CURRENCY","PORTFOLIO_CURRENCY_NAME","DWH_CREATED_DATE","DWH_CREATED_BY","DWH_CHANGED_DATE","DWH_CHANGED_BY","PORTFOLIO_STATUS","INCEPTION_DATE","OPENING_DATE","CLOSING_DATE","TERMINATION_DATE","TITLE","NAME","COUNTRY","BENCHMARK_PORTFOLIO","INVESTOR_TYPE","INVESTOR_TYPE_NAME","SETTLEMENT_TYPE","SETTLEMENT_TYPE_NAME","STRATEGY","STRATEGY_NAME","PORTFOLIO_TYPE","PORTFOLIO_TYPE_NAME","VALUE_ADDED_TAX","PORTFOLIO_WRAPPER","CLIENT_MANAGER","CLIENT_MANAGER_TITLE","CLIENT_MANAGER_STREET","CLIENT_MANAGER_PHONE","CLIENT_MANAGER_POSTCODE","CLIENT_MANAGER_CITY","CLIENT_MANAGER_COUNTRY","CLIENT_MANAGER_EMAIL","REFERENCE_RETURN","REPORTING_BANKDAY","REPORTING_EXCEL","REPORTING_FREQUENCY","REPORTING_LANGUAGE","NIS_MIGRATED","INVESTMENT_PROFILE","COLLATED_PORTFOLIO","CALC_SEGMENT_SK","S_BATCHID","NON_FUND_PORTFOLIO_TYPE","NON_FUND_PORTFOLIO_TYPE_NAME","LUX_MANAGER","LUX_MANAGER_NAME","LUX_MANAGER_EMAIL", "CONTRACT_TYPE" from dwh_dm.d_portfolio_v;


  GRANT SELECT ON "DWH_D_PORTFOLIO_V" TO "APP_GRIP_READ" WITH GRANT OPTION;
  GRANT SELECT ON "DWH_D_PORTFOLIO_V" TO "APP_WAAM" WITH GRANT OPTION;
