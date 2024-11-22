
  CREATE OR REPLACE EDITIONABLE VIEW dwh_dm."D_TIME_V" ("D_TIME_ID", "DAY_ID", "WEEK_DAY_FULL", "WEEK_DAY_SHORT", "DAY_NUM_OF_WEEK", "DAY_NUM_OF_MONTH", "DAY_NUM_OF_YEAR", "MONTH_ID", "MONTH_TIME_SPAN", "MONTH_START_DATE", "MONTH_END_DATE", "MONTH_SHORT_DESC", "MONTH_LONG_DESC", "MONTH_SHORT", "MONTH_LONG", "MONTH_NUM_OF_YEAR", "MONTH_END_DATE_EOLM", "QUARTER_ID", "QUARTER_TIME_SPAN", "QUARTER_START_DATE", "QUARTER_END_DATE", "QUARTER_NUM_OF_YEAR", "HALF_NUM_OF_YEAR", "HALF_YEAR_TIME_SPAN", "HALF_YEAR_START_DATE", "HALF_YEAR_END_DATE", "YEAR_ID", "YEAR_TIME_SPAN", "YEAR_START_DATE", "YEAR_END_DATE", "DWH_CREATED_DATE", "DWH_CREATED_BY", "DWH_CHANGED_DATE", "DWH_CHANGED_BY", "BANKDAY_DK", "BANKDAY_NUMBER_IN_MONTH_DK", "PREVIOUS_BANKDAY_DK", "NEXT_BANKDAY_DK", "FIRST_BANKDAY_DK", "LAST_BANKDAY_DK", "BANKDAY_SE", "BANKDAY_NUMBER_IN_MONTH_SE", "PREVIOUS_BANKDAY_SE", "NEXT_BANKDAY_SE", "FIRST_BANKDAY_SE", "LAST_BANKDAY_SE", "BANKDAY_NO", "BANKDAY_NUMBER_IN_MONTH_NO", "PREVIOUS_BANKDAY_NO", "NEXT_BANKDAY_NO", "FIRST_BANKDAY_NO", "LAST_BANKDAY_NO", "BANKDAY_FI", "BANKDAY_NUMBER_IN_MONTH_FI", "PREVIOUS_BANKDAY_FI", "NEXT_BANKDAY_FI", "FIRST_BANKDAY_FI", "LAST_BANKDAY_FI", "WEEK_NUM_OF_YEAR_DK", "DAY_PARTITION_NAME", "DAY_PARTITION_CONDITION", "WEEK_PARTITION_NAME", "WEEK_PARTITION_CONDITION", "MONTH_PARTITION_NAME", "MONTH_PARTITION_CONDITION", "YEAR_PARTITION_NAME", "YEAR_PARTITION_CONDITION") AS select time.d_time_id,
       time.day_id,
       time.week_day_full,
       time.week_day_short,
       time.day_num_of_week,
       time.day_num_of_month,
       time.day_num_of_year,
       time.month_id,
       time.month_time_span,
       time.month_start_date,
       time.month_end_date,
       time.month_short_desc,
       time.month_long_desc,
       time.month_short,
       time.month_long,
       time.month_num_of_year,
       time.month_end_date_eolm,
       time.quarter_id,
       time.quarter_time_span,
       time.quarter_start_date,
       time.quarter_end_date,
       time.quarter_num_of_year,
       time.half_num_of_year,
       time.half_year_time_span,
       time.half_year_start_date,
       time.half_year_end_date,
       time.year_id,
       time.year_time_span,
       time.year_start_date,
       time.year_end_date,
       time.dwh_created_date,
       time.dwh_created_by,
       time.dwh_changed_date,
       time.dwh_changed_by,
       time.bankday_dk,
       time.bankday_number_in_month_dk,
       time.previous_bankday_dk,
       time.next_bankday_dk,
       time.first_bankday_dk,
       time.last_bankday_dk,
       time.bankday_se,
       time.bankday_number_in_month_se,
       time.previous_bankday_se,
       time.next_bankday_se,
       time.first_bankday_se,
       time.last_bankday_se,
       time.bankday_no,
       time.bankday_number_in_month_no,
       time.previous_bankday_no,
       time.next_bankday_no,
       time.first_bankday_no,
       time.last_bankday_no,
       time.bankday_fi,
       time.bankday_number_in_month_fi,
       time.previous_bankday_fi,
       time.next_bankday_fi,
       time.first_bankday_fi,
       time.last_bankday_fi,
       time.week_num_of_year_dk,
       time.day_partition_name,
       time.day_partition_condition,
       time.week_partition_name,
       time.week_partition_condition,
       time.month_partition_name,
       time.month_partition_condition,
       time.year_partition_name,
       time.year_partition_condition
from d_time time
where 1=1;

   COMMENT ON COLUMN "D_TIME_V"."D_TIME_ID" IS 'Time ID';
   COMMENT ON COLUMN "D_TIME_V"."DAY_ID" IS 'Date';
   COMMENT ON COLUMN "D_TIME_V"."DWH_CREATED_DATE" IS 'Trigger generated creation date';
   COMMENT ON COLUMN "D_TIME_V"."DWH_CHANGED_DATE" IS 'Trigger generated changed date';


  GRANT SELECT ON "D_TIME_V" TO "DWH_DM_READ";
  GRANT SELECT ON "D_TIME_V" TO "APP_PMCC";
  GRANT SELECT ON "D_TIME_V" TO "APP_ESG";
  GRANT SELECT ON "D_TIME_V" TO "APP_EOY" WITH GRANT OPTION;
  GRANT SELECT ON "D_TIME_V" TO "DWH_DM_STG" WITH GRANT OPTION;
  GRANT SELECT ON "D_TIME_V" TO "APP_BOF";
  GRANT SELECT ON "D_TIME_V" TO "APP_WAAM";
  GRANT SELECT ON "D_TIME_V" TO "APP_PMMB";
  GRANT SELECT ON "D_TIME_V" TO "D007838";
  GRANT SELECT ON "D_TIME_V" TO "D007840";
  GRANT SELECT ON "D_TIME_V" TO "D007839";
  GRANT MERGE VIEW ON "D_TIME_V" TO "APP_DR";
  GRANT FLASHBACK ON "D_TIME_V" TO "APP_DR";
  GRANT DEBUG ON "D_TIME_V" TO "APP_DR";
  GRANT QUERY REWRITE ON "D_TIME_V" TO "APP_DR";
  GRANT ON COMMIT REFRESH ON "D_TIME_V" TO "APP_DR";
  GRANT READ ON "D_TIME_V" TO "APP_DR";
  GRANT REFERENCES ON "D_TIME_V" TO "APP_DR";
  GRANT UPDATE ON "D_TIME_V" TO "APP_DR";
  GRANT SELECT ON "D_TIME_V" TO "APP_DR";
  GRANT INSERT ON "D_TIME_V" TO "APP_DR";
  GRANT DELETE ON "D_TIME_V" TO "APP_DR";
  GRANT SELECT ON "D_TIME_V" TO "APP_WAAM_REP";
  GRANT SELECT ON "D_TIME_V" TO "APP_MIFID" WITH GRANT OPTION;
  GRANT SELECT ON "D_TIME_V" TO "ODI_CONNECT";
  GRANT SELECT ON "D_TIME_V" TO "DWH_CTRL";
  GRANT SELECT ON "D_TIME_V" TO "INT_DCLINK";
  GRANT SELECT ON "D_TIME_V" TO "APP_MAR";
  GRANT SELECT ON "D_TIME_V" TO "APP_EOY" WITH GRANT OPTION;
  GRANT SELECT ON "D_TIME_V" TO "APP_DS";
  GRANT SELECT ON "D_TIME_V" TO "QUOV";
  GRANT SELECT ON "D_TIME_V" TO "DWH_DSA_RBC";
  GRANT SELECT ON "D_TIME_V" TO "DWH_DSA_SCD" WITH GRANT OPTION;
  GRANT SELECT ON "D_TIME_V" TO "DWH_SCHEDULER" WITH GRANT OPTION;
  GRANT SELECT ON "D_TIME_V" TO "INT_REPORTING";
  GRANT SELECT ON "D_TIME_V" TO "APP_DIMA" WITH GRANT OPTION;
  GRANT SELECT ON "D_TIME_V" TO "APP_SAS";
  GRANT SELECT ON "D_TIME_V" TO "APP_AUTHORITY" WITH GRANT OPTION;
  GRANT SELECT ON "D_TIME_V" TO "APP_GRIP" WITH GRANT OPTION;
  GRANT SELECT ON "D_TIME_V" TO "APP_CR" WITH GRANT OPTION;
  GRANT READ ON "D_TIME_V" TO "DWH_API_CONNECT" WITH GRANT OPTION;
  GRANT SELECT ON "D_TIME_V" TO "APP_GRIP_READ" WITH GRANT OPTION;
