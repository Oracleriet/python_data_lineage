
  CREATE OR REPLACE EDITIONABLE VIEW dwh_dm."D_MODEL_PORTFOLIO_V" ("D_MODEL_PORTFOLIO_ID", "MODEL_PORTFOLIO_SK", "MODEL_PORTFOLIO_CODE", "MODEL_PORTFOLIO_NAME", "DWH_CREATED_DATE", "DWH_CREATED_BY", "DWH_CHANGED_DATE", "DWH_CHANGED_BY", "NODE_NAME", "NODE_LEVEL", "LEVEL1", "LEVEL2", "LEVEL3", "LEVEL4", "FULL_PATH", "SORT", "LEV2SORT", "LEV3SORT") AS select modelportfolio.d_model_portfolio_id,
       modelportfolio.model_portfolio_sk,
       modelportfolio.model_portfolio_code,
       modelportfolio.model_portfolio_name,
       modelportfolio.dwh_created_date,
       modelportfolio.dwh_created_by,
       modelportfolio.dwh_changed_date,
       modelportfolio.dwh_changed_by,
       modelportfolio.node_name,
       modelportfolio.node_level,
       modelportfolio.level1,
       modelportfolio.level2,
       modelportfolio.level3,
       modelportfolio.level4,
       modelportfolio.full_path,
       modelportfolio.sort,
       modelportfolio.lev2sort,
       modelportfolio.lev3sort
from d_model_portfolio modelportfolio
where 1=1;

   COMMENT ON COLUMN "D_MODEL_PORTFOLIO_V"."D_MODEL_PORTFOLIO_ID" IS 'Primary key on the table D_MODEL_PORTFOLIO (sequence generated surogate key)';
   COMMENT ON COLUMN "D_MODEL_PORTFOLIO_V"."DWH_CREATED_DATE" IS 'Trigger generated creation date';
   COMMENT ON COLUMN "D_MODEL_PORTFOLIO_V"."DWH_CHANGED_DATE" IS 'Trigger generated changed date';
   COMMENT ON COLUMN "D_MODEL_PORTFOLIO_V"."NODE_NAME" IS 'Investment structure node name';
   COMMENT ON COLUMN "D_MODEL_PORTFOLIO_V"."NODE_LEVEL" IS 'Investment structure node level';
   COMMENT ON COLUMN "D_MODEL_PORTFOLIO_V"."LEVEL1" IS 'Investment structure Level 1';
   COMMENT ON COLUMN "D_MODEL_PORTFOLIO_V"."LEVEL2" IS 'Investment structure Level 2';
   COMMENT ON COLUMN "D_MODEL_PORTFOLIO_V"."LEVEL3" IS 'Investment structure Level 3';
   COMMENT ON COLUMN "D_MODEL_PORTFOLIO_V"."LEVEL4" IS 'Investment structure Level 4';
   COMMENT ON COLUMN "D_MODEL_PORTFOLIO_V"."SORT" IS 'Sort';


  GRANT SELECT ON "D_MODEL_PORTFOLIO_V" TO "DWH_DM_READ";
  GRANT SELECT ON "D_MODEL_PORTFOLIO_V" TO "APP_PMCC";
  GRANT SELECT ON "D_MODEL_PORTFOLIO_V" TO "APP_EOY" WITH GRANT OPTION;
  GRANT SELECT ON "D_MODEL_PORTFOLIO_V" TO "D007840";
  GRANT SELECT ON "D_MODEL_PORTFOLIO_V" TO "APP_WAAM" WITH GRANT OPTION;
  GRANT SELECT ON "D_MODEL_PORTFOLIO_V" TO "APP_PMMB";
  GRANT SELECT ON "D_MODEL_PORTFOLIO_V" TO "APP_DR";
  GRANT SELECT ON "D_MODEL_PORTFOLIO_V" TO "APP_MIFID" WITH GRANT OPTION;
  GRANT SELECT ON "D_MODEL_PORTFOLIO_V" TO "ODI_CONNECT";
  GRANT SELECT ON "D_MODEL_PORTFOLIO_V" TO "APP_MAR";
  GRANT SELECT ON "D_MODEL_PORTFOLIO_V" TO "APP_EOY" WITH GRANT OPTION;
  GRANT SELECT ON "D_MODEL_PORTFOLIO_V" TO "QUOV";
  GRANT SELECT ON "D_MODEL_PORTFOLIO_V" TO "INT_REPORTING";
  GRANT SELECT ON "D_MODEL_PORTFOLIO_V" TO "APP_DIMA" WITH GRANT OPTION;
  GRANT SELECT ON "D_MODEL_PORTFOLIO_V" TO "APP_SAS";
  GRANT SELECT ON "D_MODEL_PORTFOLIO_V" TO "APP_AUTHORITY" WITH GRANT OPTION;
  GRANT SELECT ON "D_MODEL_PORTFOLIO_V" TO "APP_OS";
  GRANT SELECT ON "D_MODEL_PORTFOLIO_V" TO "APP_GRIP" WITH GRANT OPTION;
  GRANT SELECT ON "D_MODEL_PORTFOLIO_V" TO "APP_CR" WITH GRANT OPTION;
