
  CREATE OR REPLACE EDITIONABLE VIEW dwh_dm."D_TRANSACTION_CANCEL_V" ("D_TRANSACTION_CANCEL_ID", "TRANSACTION_CANCEL_SK", "TRANSACTION_CANCEL_CODE", "TRANSACTION_CANCEL_NAME", "DWH_CREATED_DATE", "DWH_CREATED_BY", "DWH_CHANGED_DATE", "DWH_CHANGED_BY") AS select transactioncancel.d_transaction_cancel_id,
       transactioncancel.transaction_cancel_sk,
       transactioncancel.transaction_cancel_code,
       transactioncancel.transaction_cancel_name,
       transactioncancel.dwh_created_date,
       transactioncancel.dwh_created_by,
       transactioncancel.dwh_changed_date,
       transactioncancel.dwh_changed_by
from d_transaction_cancel transactioncancel
where 1=1;

   COMMENT ON COLUMN "D_TRANSACTION_CANCEL_V"."D_TRANSACTION_CANCEL_ID" IS 'Primary key on the table D_TRANSACTION_CANCEL (sequence generated surogate key)';
   COMMENT ON COLUMN "D_TRANSACTION_CANCEL_V"."DWH_CREATED_DATE" IS 'Trigger generated creation date';
   COMMENT ON COLUMN "D_TRANSACTION_CANCEL_V"."DWH_CHANGED_DATE" IS 'Trigger generated changed date';


  GRANT SELECT ON "D_TRANSACTION_CANCEL_V" TO "DWH_DM_READ";
  GRANT SELECT ON "D_TRANSACTION_CANCEL_V" TO "APP_WAAM";
  GRANT SELECT ON "D_TRANSACTION_CANCEL_V" TO "APP_EOY" WITH GRANT OPTION;
  GRANT MERGE VIEW ON "D_TRANSACTION_CANCEL_V" TO "APP_DR";
  GRANT FLASHBACK ON "D_TRANSACTION_CANCEL_V" TO "APP_DR";
  GRANT DEBUG ON "D_TRANSACTION_CANCEL_V" TO "APP_DR";
  GRANT QUERY REWRITE ON "D_TRANSACTION_CANCEL_V" TO "APP_DR";
  GRANT ON COMMIT REFRESH ON "D_TRANSACTION_CANCEL_V" TO "APP_DR";
  GRANT READ ON "D_TRANSACTION_CANCEL_V" TO "APP_DR";
  GRANT REFERENCES ON "D_TRANSACTION_CANCEL_V" TO "APP_DR";
  GRANT UPDATE ON "D_TRANSACTION_CANCEL_V" TO "APP_DR";
  GRANT SELECT ON "D_TRANSACTION_CANCEL_V" TO "APP_DR";
  GRANT INSERT ON "D_TRANSACTION_CANCEL_V" TO "APP_DR";
  GRANT DELETE ON "D_TRANSACTION_CANCEL_V" TO "APP_DR";
  GRANT SELECT ON "D_TRANSACTION_CANCEL_V" TO "APP_MIFID" WITH GRANT OPTION;
  GRANT SELECT ON "D_TRANSACTION_CANCEL_V" TO "ODI_CONNECT";
  GRANT SELECT ON "D_TRANSACTION_CANCEL_V" TO "APP_MAR";
  GRANT SELECT ON "D_TRANSACTION_CANCEL_V" TO "APP_EOY" WITH GRANT OPTION;
  GRANT SELECT ON "D_TRANSACTION_CANCEL_V" TO "QUOV";
  GRANT SELECT ON "D_TRANSACTION_CANCEL_V" TO "INT_REPORTING";
  GRANT SELECT ON "D_TRANSACTION_CANCEL_V" TO "APP_DIMA" WITH GRANT OPTION;
  GRANT SELECT ON "D_TRANSACTION_CANCEL_V" TO "APP_SAS";
  GRANT SELECT ON "D_TRANSACTION_CANCEL_V" TO "APP_AUTHORITY" WITH GRANT OPTION;
  GRANT SELECT ON "D_TRANSACTION_CANCEL_V" TO "APP_GRIP" WITH GRANT OPTION;
  GRANT SELECT ON "D_TRANSACTION_CANCEL_V" TO "APP_CR" WITH GRANT OPTION;
