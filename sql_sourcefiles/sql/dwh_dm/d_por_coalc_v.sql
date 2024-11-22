
  CREATE OR REPLACE EDITIONABLE VIEW dwh_dm."D_POR_CALC_V" ("D_POR_CALC_ID", "POR_CALC_SK", "POR_CALC", "POR_CALC_NAME", "D_POR_CALC_TEMPLATE_ID", "DWH_CREATED_DATE", "DWH_CREATED_BY", "DWH_CHANGED_DATE", "DWH_CHANGED_BY", "S_CREATEDDATE", "S_BATCHID", "TRANSACTION_DATE", "NUM_EXECUTIONS", "FIRST_START_TIME", "FIRST_END_TIME", "FIRST_RECORD_COUNT", "LATEST_START_TIME", "LATEST_END_TIME", "LATEST_RECORD_COUNT") AS select porcalc.d_por_calc_id,
       porcalc.por_calc_sk,
       porcalc.por_calc,
       porcalc.por_calc_name,
       porcalc.d_por_calc_template_id,
       porcalc.dwh_created_date,
       porcalc.dwh_created_by,
       porcalc.dwh_changed_date,
       porcalc.dwh_changed_by,
       porcalc.s_createddate,
       porcalc.s_batchid,
       porcalc.transaction_date,
       porcalc.num_executions,
       porcalc.first_start_time,
       porcalc.first_end_time,
       porcalc.first_record_count,
       porcalc.latest_start_time,
       porcalc.latest_end_time,
       porcalc.latest_record_count
from d_por_calc porcalc
where 1=1;

   COMMENT ON COLUMN "D_POR_CALC_V"."D_POR_CALC_ID" IS 'Primary key on the table D_POR_CALC (sequence generated surogate key)';
   COMMENT ON COLUMN "D_POR_CALC_V"."POR_CALC_SK" IS 'Portfolio calculation (IK)';
   COMMENT ON COLUMN "D_POR_CALC_V"."POR_CALC" IS 'Portfolio calculation';
   COMMENT ON COLUMN "D_POR_CALC_V"."D_POR_CALC_TEMPLATE_ID" IS 'Foreign key referring to D_POR_CALC_TEMPLATE.D_POR_CALC_TEMPLATE_ID';
   COMMENT ON COLUMN "D_POR_CALC_V"."DWH_CREATED_DATE" IS 'Trigger generated creation date';
   COMMENT ON COLUMN "D_POR_CALC_V"."DWH_CHANGED_DATE" IS 'Trigger generated changed date';


  GRANT SELECT ON "D_POR_CALC_V" TO "DWH_DM_READ";
  GRANT SELECT ON "D_POR_CALC_V" TO "APP_PMCC";
  GRANT SELECT ON "D_POR_CALC_V" TO "APP_EOY" WITH GRANT OPTION;
  GRANT SELECT ON "D_POR_CALC_V" TO "D007840";
  GRANT SELECT ON "D_POR_CALC_V" TO "APP_DR";
  GRANT SELECT ON "D_POR_CALC_V" TO "ODI_CONNECT";
  GRANT SELECT ON "D_POR_CALC_V" TO "APP_EOY" WITH GRANT OPTION;
  GRANT SELECT ON "D_POR_CALC_V" TO "APP_DS";
  GRANT SELECT ON "D_POR_CALC_V" TO "QUOV";
  GRANT SELECT ON "D_POR_CALC_V" TO "APP_DIMA" WITH GRANT OPTION;
  GRANT SELECT ON "D_POR_CALC_V" TO "INT_REPORTING";
  GRANT SELECT ON "D_POR_CALC_V" TO "APP_SAS";
  GRANT SELECT ON "D_POR_CALC_V" TO "APP_AUTHORITY" WITH GRANT OPTION;
  GRANT SELECT ON "D_POR_CALC_V" TO "APP_GRIP" WITH GRANT OPTION;
  GRANT SELECT ON "D_POR_CALC_V" TO "APP_CR" WITH GRANT OPTION;
