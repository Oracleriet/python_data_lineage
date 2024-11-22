
  CREATE OR REPLACE EDITIONABLE VIEW dwh_dm."D_PERF_REPORT_SPLIT_V" ("D_PERF_REPORT_SPLIT_ID", "L_PERFORMANCE_SPLIT_ID", "PERF_REPORT", "PERF_REPORT_NAME", "PERFORMANCE_MEASURE", "PERFORMANCE_MEASURE_NAME", "PERFSPLITIK", "PERFSPLITNO", "PERFSPLITSUPNO", "PERFSPLITNAME", "PATH", "STATIC_PATH", "LEAF", "LEV", "SORT", "PERFSPLITTYPE_TXT", "PERFREP_DEF_SK", "PERFORMANCE_MEASURE_SK", "PERFORMANCE_SPLIT_SK", "DWH_CREATED_BY", "DWH_CREATED_DATE", "DWH_CHANGED_BY", "DWH_CHANGED_DATE", "CLIENT_REPORTING_USAGE") AS select perfreportsplit.d_perf_report_split_id,
       perfreportsplit.l_performance_split_id,
       perfreportsplit.perf_report,
       perfreportsplit.perf_report_name,
       perfreportsplit.performance_measure,
       perfreportsplit.performance_measure_name,
       perfreportsplit.perfsplitik,
       perfreportsplit.perfsplitno,
       perfreportsplit.perfsplitsupno,
       perfreportsplit.perfsplitname,
       perfreportsplit.path,
       perfreportsplit.static_path,
       perfreportsplit.leaf,
       perfreportsplit.lev,
       perfreportsplit.sort,
       perfreportsplit.perfsplittype_txt,
       perfreportsplit.perfrep_def_sk,
       perfreportsplit.performance_measure_sk,
       perfreportsplit.performance_split_sk,
       perfreportsplit.dwh_created_by,
       perfreportsplit.dwh_created_date,
       perfreportsplit.dwh_changed_by,
       perfreportsplit.dwh_changed_date,
       perfreportsplit.client_reporting_usage
from d_perf_report_split perfreportsplit
where 1=1;

   COMMENT ON COLUMN "D_PERF_REPORT_SPLIT_V"."L_PERFORMANCE_SPLIT_ID" IS 'Performance split ID';
   COMMENT ON COLUMN "D_PERF_REPORT_SPLIT_V"."PERFORMANCE_MEASURE" IS 'ATTR';
   COMMENT ON COLUMN "D_PERF_REPORT_SPLIT_V"."PERFORMANCE_MEASURE_NAME" IS 'ATTR';
   COMMENT ON COLUMN "D_PERF_REPORT_SPLIT_V"."PERFSPLITIK" IS 'Performance splits (IK) (SimCorp Dimension: TMSDAT.PERFMEASTREE.PERFSPLITIK)';
   COMMENT ON COLUMN "D_PERF_REPORT_SPLIT_V"."PERFSPLITNO" IS 'Node No. (SimCorp Dimension: TMSDAT.PERFMEASTREE.PERFSPLITNO)';
   COMMENT ON COLUMN "D_PERF_REPORT_SPLIT_V"."PERFSPLITSUPNO" IS 'Parent node No. (SimCorp Dimension: TMSDAT.PERFMEASTREE.PERFSPLITSUPNO)';
   COMMENT ON COLUMN "D_PERF_REPORT_SPLIT_V"."PERFSPLITNAME" IS 'Node name (SimCorp Dimension: TMSDAT.PERFMEASTREE.PERFSPLITNAME)';
   COMMENT ON COLUMN "D_PERF_REPORT_SPLIT_V"."PATH" IS 'Directory object path specification';
   COMMENT ON COLUMN "D_PERF_REPORT_SPLIT_V"."STATIC_PATH" IS 'ATTR';
   COMMENT ON COLUMN "D_PERF_REPORT_SPLIT_V"."LEAF" IS 'ATTR';
   COMMENT ON COLUMN "D_PERF_REPORT_SPLIT_V"."LEV" IS 'ATTR';
   COMMENT ON COLUMN "D_PERF_REPORT_SPLIT_V"."SORT" IS 'Sort (SimCorp Dimension: TMSDAT.PERFMEASTREE.SORT)';
   COMMENT ON COLUMN "D_PERF_REPORT_SPLIT_V"."PERFSPLITTYPE_TXT" IS 'ATTR';
   COMMENT ON COLUMN "D_PERF_REPORT_SPLIT_V"."PERFREP_DEF_SK" IS 'IK for filter, e.g. PERFREPDEFIK';
   COMMENT ON COLUMN "D_PERF_REPORT_SPLIT_V"."PERFORMANCE_MEASURE_SK" IS 'L_PERF_MEAS_PERFREP_DEF';
   COMMENT ON COLUMN "D_PERF_REPORT_SPLIT_V"."PERFORMANCE_SPLIT_SK" IS 'Performance split source key #SCD perfrep.perfsplitik with modifiers depending on split type';
   COMMENT ON COLUMN "D_PERF_REPORT_SPLIT_V"."DWH_CREATED_BY" IS 'Created by, set as USER for the mapping that created the given row is run';
   COMMENT ON COLUMN "D_PERF_REPORT_SPLIT_V"."DWH_CREATED_DATE" IS 'Created date, set as SYSDATE for when the mapping that created the given row is run';
   COMMENT ON COLUMN "D_PERF_REPORT_SPLIT_V"."DWH_CHANGED_BY" IS 'Changed by, set as USER for the mapping that changed the given row is run';
   COMMENT ON COLUMN "D_PERF_REPORT_SPLIT_V"."DWH_CHANGED_DATE" IS 'Changed date, set as SYSDATE for when the mapping that changed the given row is run';


  GRANT SELECT ON "D_PERF_REPORT_SPLIT_V" TO "DWH_DM_READ";
  GRANT SELECT ON "D_PERF_REPORT_SPLIT_V" TO "APP_PMCC";
  GRANT SELECT ON "D_PERF_REPORT_SPLIT_V" TO "APP_ESG";
  GRANT SELECT ON "D_PERF_REPORT_SPLIT_V" TO "APP_EOY" WITH GRANT OPTION;
  GRANT SELECT ON "D_PERF_REPORT_SPLIT_V" TO "ODI_CONNECT";
  GRANT SELECT ON "D_PERF_REPORT_SPLIT_V" TO "APP_DS";
  GRANT SELECT ON "D_PERF_REPORT_SPLIT_V" TO "DWH_CTRL";
  GRANT SELECT ON "D_PERF_REPORT_SPLIT_V" TO "INT_DCLINK";
  GRANT SELECT ON "D_PERF_REPORT_SPLIT_V" TO "APP_EOY" WITH GRANT OPTION;
  GRANT SELECT ON "D_PERF_REPORT_SPLIT_V" TO "QUOV";
  GRANT SELECT ON "D_PERF_REPORT_SPLIT_V" TO "INT_REPORTING";
  GRANT SELECT ON "D_PERF_REPORT_SPLIT_V" TO "APP_DIMA" WITH GRANT OPTION;
  GRANT SELECT ON "D_PERF_REPORT_SPLIT_V" TO "APP_SAS";
  GRANT SELECT ON "D_PERF_REPORT_SPLIT_V" TO "APP_AUTHORITY" WITH GRANT OPTION;
  GRANT SELECT ON "D_PERF_REPORT_SPLIT_V" TO "APP_GRIP" WITH GRANT OPTION;
  GRANT SELECT ON "D_PERF_REPORT_SPLIT_V" TO "APP_CR" WITH GRANT OPTION;
