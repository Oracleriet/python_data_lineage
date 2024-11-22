
  CREATE OR REPLACE EDITIONABLE VIEW dwh_dm."D_COST_V" ("D_COST_ID", "H_COST_ID", "COST_SK", "COST", "COST_NAME", "CLIENT_REP_COST_GROUP_SORT", "CLIENT_REP_COST_GROUP", "CLIENT_REP_COST_TYPE", "DWH_CREATED_DATE", "DWH_CREATED_BY", "DWH_CHANGED_DATE", "DWH_CHANGED_BY", "S_BATCHID", "EXCLUDE_AS_CLIENT_COST", "COST_INCL_SETTLED_AMOUNT") AS select cost.d_cost_id,
       cost.h_cost_id,
       cost.cost_sk,
       cost.cost,
       cost.cost_name,
       cost.client_rep_cost_group_sort,
       cost.client_rep_cost_group,
       cost.client_rep_cost_type,
       cost.dwh_created_date,
       cost.dwh_created_by,
       cost.dwh_changed_date,
       cost.dwh_changed_by,
       cost.s_batchid,
       cost.exclude_as_client_cost,
       cost.cost_incl_settled_amount
from d_cost cost
where 1=1;


  GRANT SELECT ON "D_COST_V" TO "DWH_DM_READ";
  GRANT SELECT ON "D_COST_V" TO "APP_EOY" WITH GRANT OPTION;
  GRANT MERGE VIEW ON "D_COST_V" TO "APP_DR";
  GRANT FLASHBACK ON "D_COST_V" TO "APP_DR";
  GRANT DEBUG ON "D_COST_V" TO "APP_DR";
  GRANT QUERY REWRITE ON "D_COST_V" TO "APP_DR";
  GRANT ON COMMIT REFRESH ON "D_COST_V" TO "APP_DR";
  GRANT READ ON "D_COST_V" TO "APP_DR";
  GRANT REFERENCES ON "D_COST_V" TO "APP_DR";
  GRANT UPDATE ON "D_COST_V" TO "APP_DR";
  GRANT SELECT ON "D_COST_V" TO "APP_DR";
  GRANT INSERT ON "D_COST_V" TO "APP_DR";
  GRANT DELETE ON "D_COST_V" TO "APP_DR";
  GRANT SELECT ON "D_COST_V" TO "ODI_CONNECT";
  GRANT SELECT ON "D_COST_V" TO "APP_EOY" WITH GRANT OPTION;
  GRANT SELECT ON "D_COST_V" TO "QUOV";
  GRANT SELECT ON "D_COST_V" TO "INT_REPORTING";
  GRANT SELECT ON "D_COST_V" TO "APP_DIMA" WITH GRANT OPTION;
  GRANT SELECT ON "D_COST_V" TO "APP_SAS";
  GRANT SELECT ON "D_COST_V" TO "APP_GRIP" WITH GRANT OPTION;
  GRANT SELECT ON "D_COST_V" TO "APP_AUTHORITY" WITH GRANT OPTION;
  GRANT SELECT ON "D_COST_V" TO "APP_CR" WITH GRANT OPTION;
