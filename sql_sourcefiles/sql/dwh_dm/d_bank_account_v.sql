
  CREATE OR REPLACE EDITIONABLE VIEW dwh_dm."D_BANK_ACCOUNT_V" ("D_BANK_ACCOUNT_ID", "BANK_ACCOUNT_SK", "BANK_ACCOUNT_CODE", "BANK_ACCOUNT_NAME", "IBAN", "SPREAD_RATE", "REAL_BANK_ACCOUNT_CODE", "REAL_BANK_ACCOUNT_NAME", "DWH_CREATED_DATE", "DWH_CREATED_BY", "DWH_CHANGED_DATE", "DWH_CHANGED_BY", "BANK_SK", "BANK", "BANK_NAME", "BANK_COUNTRY") AS select bankaccount.d_bank_account_id,
       bankaccount.bank_account_sk,
       bankaccount.bank_account_code,
       bankaccount.bank_account_name,
       bankaccount.iban,
       bankaccount.spread_rate,
       bankaccount.real_bank_account_code,
       bankaccount.real_bank_account_name,
       bankaccount.dwh_created_date,
       bankaccount.dwh_created_by,
       bankaccount.dwh_changed_date,
       bankaccount.dwh_changed_by,
       bankaccount.bank_sk,
       bankaccount.bank,
       bankaccount.bank_name,
       bankaccount.bank_country
from d_bank_account bankaccount
where 1=1;

   COMMENT ON COLUMN "D_BANK_ACCOUNT_V"."D_BANK_ACCOUNT_ID" IS 'Primary key on the table D_BANK_ACCOUNT (sequence generated surogate key)';
   COMMENT ON COLUMN "D_BANK_ACCOUNT_V"."BANK_ACCOUNT_SK" IS 'Security (IK)';
   COMMENT ON COLUMN "D_BANK_ACCOUNT_V"."IBAN" IS 'IBAN';
   COMMENT ON COLUMN "D_BANK_ACCOUNT_V"."SPREAD_RATE" IS 'Spread';
   COMMENT ON COLUMN "D_BANK_ACCOUNT_V"."DWH_CREATED_DATE" IS 'Trigger generated creation date';
   COMMENT ON COLUMN "D_BANK_ACCOUNT_V"."DWH_CHANGED_DATE" IS 'Trigger generated changed date';


  GRANT SELECT ON "D_BANK_ACCOUNT_V" TO "DWH_DM_READ";
  GRANT SELECT ON "D_BANK_ACCOUNT_V" TO "APP_EOY" WITH GRANT OPTION;
  GRANT SELECT ON "D_BANK_ACCOUNT_V" TO "ODI_CONNECT";
  GRANT SELECT ON "D_BANK_ACCOUNT_V" TO "APP_EOY" WITH GRANT OPTION;
  GRANT SELECT ON "D_BANK_ACCOUNT_V" TO "QUOV";
  GRANT SELECT ON "D_BANK_ACCOUNT_V" TO "INT_REPORTING";
  GRANT SELECT ON "D_BANK_ACCOUNT_V" TO "APP_DIMA" WITH GRANT OPTION;
  GRANT SELECT ON "D_BANK_ACCOUNT_V" TO "APP_SAS";
  GRANT SELECT ON "D_BANK_ACCOUNT_V" TO "APP_AUTHORITY" WITH GRANT OPTION;
  GRANT SELECT ON "D_BANK_ACCOUNT_V" TO "APP_GRIP" WITH GRANT OPTION;
  GRANT SELECT ON "D_BANK_ACCOUNT_V" TO "APP_CR" WITH GRANT OPTION;
