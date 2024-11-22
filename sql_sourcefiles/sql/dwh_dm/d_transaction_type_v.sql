
  CREATE OR REPLACE EDITIONABLE VIEW dwh_dm."D_TRANSACTION_TYPE_V" ("D_TRANSACTION_TYPE_ID", "INS_TYPE", "TRANS_TYPE", "TRANS_SUBTYPE", "INS_TYPE_NAME", "TRANS_TYPE_NAME", "TRANS_SUBTYPE_NAME", "INS_TYPE_SK", "TRANS_TYPE_SK", "TRANS_SUBTYPE_SK", "CLIENT_REP_TRANS_TYPE", "SORT", "DWH_CREATED_DATE", "DWH_CREATED_BY", "DWH_CHANGED_DATE", "DWH_CHANGED_BY", "SIGN", "IS_CASHFLOW", "CASHFLOW_SIGN", "CASHFLOW_COLUMN") AS select transactiontype.d_transaction_type_id,
       transactiontype.ins_type,
       transactiontype.trans_type,
       transactiontype.trans_subtype,
       transactiontype.ins_type_name,
       transactiontype.trans_type_name,
       transactiontype.trans_subtype_name,
       transactiontype.ins_type_sk,
       transactiontype.trans_type_sk,
       transactiontype.trans_subtype_sk,
       transactiontype.client_rep_trans_type,
       transactiontype.sort,
       transactiontype.dwh_created_date,
       transactiontype.dwh_created_by,
       transactiontype.dwh_changed_date,
       transactiontype.dwh_changed_by,
       transactiontype.sign,
       transactiontype.is_cashflow,
       transactiontype.cashflow_sign,
       transactiontype.cashflow_column
from d_transaction_type transactiontype
where 1=1;

   COMMENT ON COLUMN "D_TRANSACTION_TYPE_V"."D_TRANSACTION_TYPE_ID" IS 'Primary key on the table D_TRANSACTION_TYPE (sequence generated surogate key)';
   COMMENT ON COLUMN "D_TRANSACTION_TYPE_V"."TRANS_TYPE" IS 'Unique transaction type code (DWH_EDW.TRANS_TYPE_VA.TRANS_TYPE <> TMSDAT.)';
   COMMENT ON COLUMN "D_TRANSACTION_TYPE_V"."TRANS_SUBTYPE" IS 'Unique transaction type code (DWH_EDW.trans_subtype_VA.trans_subtype <> TMSDAT.)';
   COMMENT ON COLUMN "D_TRANSACTION_TYPE_V"."TRANS_TYPE_NAME" IS 'Transaction type name (DWH_EDW.TRANS_TYPE_VA.TRANS_TYPE_NAME <> TMSDAT.)';
   COMMENT ON COLUMN "D_TRANSACTION_TYPE_V"."TRANS_SUBTYPE_NAME" IS 'Transaction type name (DWH_EDW.trans_subtype_VA.trans_subtype_NAME <> TMSDAT.)';
   COMMENT ON COLUMN "D_TRANSACTION_TYPE_V"."TRANS_TYPE_SK" IS 'Unique transaction type ID (DWH_EDW.TRANS_TYPE_VA.TRANS_TYPE_SK <> TMSDAT.)';
   COMMENT ON COLUMN "D_TRANSACTION_TYPE_V"."TRANS_SUBTYPE_SK" IS 'Unique transaction type ID (DWH_EDW.trans_subtype_VA.trans_subtype_SK <> TMSDAT.)';
   COMMENT ON COLUMN "D_TRANSACTION_TYPE_V"."SORT" IS 'Sort';
   COMMENT ON COLUMN "D_TRANSACTION_TYPE_V"."DWH_CREATED_DATE" IS 'Trigger generated creation date';
   COMMENT ON COLUMN "D_TRANSACTION_TYPE_V"."DWH_CHANGED_DATE" IS 'Trigger generated changed date';


  GRANT SELECT ON "D_TRANSACTION_TYPE_V" TO "DWH_DM_READ";
  GRANT SELECT ON "D_TRANSACTION_TYPE_V" TO "APP_EOY" WITH GRANT OPTION;
  GRANT SELECT ON "D_TRANSACTION_TYPE_V" TO "APP_WAAM";
  GRANT SELECT ON "D_TRANSACTION_TYPE_V" TO "APP_PMMB";
  GRANT MERGE VIEW ON "D_TRANSACTION_TYPE_V" TO "APP_DR";
  GRANT FLASHBACK ON "D_TRANSACTION_TYPE_V" TO "APP_DR";
  GRANT DEBUG ON "D_TRANSACTION_TYPE_V" TO "APP_DR";
  GRANT QUERY REWRITE ON "D_TRANSACTION_TYPE_V" TO "APP_DR";
  GRANT ON COMMIT REFRESH ON "D_TRANSACTION_TYPE_V" TO "APP_DR";
  GRANT READ ON "D_TRANSACTION_TYPE_V" TO "APP_DR";
  GRANT REFERENCES ON "D_TRANSACTION_TYPE_V" TO "APP_DR";
  GRANT UPDATE ON "D_TRANSACTION_TYPE_V" TO "APP_DR";
  GRANT SELECT ON "D_TRANSACTION_TYPE_V" TO "APP_DR";
  GRANT INSERT ON "D_TRANSACTION_TYPE_V" TO "APP_DR";
  GRANT DELETE ON "D_TRANSACTION_TYPE_V" TO "APP_DR";
  GRANT SELECT ON "D_TRANSACTION_TYPE_V" TO "APP_MIFID" WITH GRANT OPTION;
  GRANT SELECT ON "D_TRANSACTION_TYPE_V" TO "ODI_CONNECT";
  GRANT SELECT ON "D_TRANSACTION_TYPE_V" TO "APP_MAR";
  GRANT SELECT ON "D_TRANSACTION_TYPE_V" TO "APP_EOY" WITH GRANT OPTION;
  GRANT SELECT ON "D_TRANSACTION_TYPE_V" TO "QUOV";
  GRANT SELECT ON "D_TRANSACTION_TYPE_V" TO "INT_REPORTING";
  GRANT SELECT ON "D_TRANSACTION_TYPE_V" TO "APP_DIMA" WITH GRANT OPTION;
  GRANT SELECT ON "D_TRANSACTION_TYPE_V" TO "APP_SAS";
  GRANT SELECT ON "D_TRANSACTION_TYPE_V" TO "APP_AUTHORITY" WITH GRANT OPTION;
  GRANT SELECT ON "D_TRANSACTION_TYPE_V" TO "APP_GRIP" WITH GRANT OPTION;
  GRANT SELECT ON "D_TRANSACTION_TYPE_V" TO "APP_CR" WITH GRANT OPTION;
