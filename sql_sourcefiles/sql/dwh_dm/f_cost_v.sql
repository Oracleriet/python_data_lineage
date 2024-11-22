
  CREATE OR REPLACE EDITIONABLE VIEW dwh_dm."F_COST_V" ("F_COST_ID", "D_BANK_ACCOUNT_ID", "D_COST_ID", "D_INSTRUMENT_ID", "D_POR_CALC_ID", "D_POR_CALC_TEMPLATE_ID", "D_PORTFOLIO_ID", "D_TIME_ID", "D_TRANSACTION_CANCEL_ID", "D_TRANSACTION_STATUS_ID", "D_TRANSACTION_TYPE_ID", "TRANSACTION_SK", "TRANSACTION_NO", "TRANSACTION_AMOUNT_PC", "TRANSACTION_COST_AMOUNT_PC", "ONGOING_COST_EX_POST", "MANAGEMENT_FEE_EX_POST", "TRANSACTION_COST_EX_POST", "INCIDENTIAL_COST_EX_POST", "DIRTY_VALUE_PC", "NOMINAL_VALUE", "MIFID_DIRECT_COST_BUY", "MIFID_DIRECT_COST_SELL", "STAGING_SOURCE", "MD5_TRANS", "MD5_TRANS_COST", "MD5_HOLD_BAL", "L_BATCHID_TRANS", "L_BATCHID_TRANS_COST", "L_BATCHID_HOLD_BAL", "DWH_CREATED_DATE", "DWH_CREATED_BY", "DWH_CHANGED_DATE", "DWH_CHANGED_BY", "D_MODEL_PORTFOLIO_ID", "L_CALCFIG_HEAD_ID", "L_CALCHOL_LINE_ID", "L_TRANSACTION_ID", "L_TRANSACTION_COST_ID") AS select cost.f_cost_id,
       cost.d_bank_account_id,
       cost.d_cost_id,
       cost.d_instrument_id,
       cost.d_por_calc_id,
       cost.d_por_calc_template_id,
       cost.d_portfolio_id,
       cost.d_time_id,
       cost.d_transaction_cancel_id,
       cost.d_transaction_status_id,
       cost.d_transaction_type_id,
       cost.transaction_sk,
       cost.transaction_no,
       cost.transaction_amount_pc,
       cost.transaction_cost_amount_pc,
       cost.ongoing_cost_ex_post,
       cost.management_fee_ex_post,
       cost.transaction_cost_ex_post,
       cost.incidential_cost_ex_post,
       cost.dirty_value_pc,
       cost.nominal_value,
       cost.mifid_direct_cost_buy,
       cost.mifid_direct_cost_sell,
       cost.staging_source,
       cost.md5_trans,
       cost.md5_trans_cost,
       cost.md5_hold_bal,
       cost.l_batchid_trans,
       cost.l_batchid_trans_cost,
       cost.l_batchid_hold_bal,
       cost.dwh_created_date,
       cost.dwh_created_by,
       cost.dwh_changed_date,
       cost.dwh_changed_by,
       cost.d_model_portfolio_id,
       cost.l_calcfig_head_id,
       cost.l_calchol_line_id,
       cost.l_transaction_id,
       cost.l_transaction_cost_id
from f_cost cost
where 1=1;

   COMMENT ON COLUMN "F_COST_V"."F_COST_ID" IS 'PK, artificial ';
   COMMENT ON COLUMN "F_COST_V"."D_BANK_ACCOUNT_ID" IS 'FK to D_BANK_ACCOUNT, Src: Transmain (and transcost)';
   COMMENT ON COLUMN "F_COST_V"."D_COST_ID" IS 'FK to D_COST, Src: Transcost';
   COMMENT ON COLUMN "F_COST_V"."D_INSTRUMENT_ID" IS 'FK to D_INSTRUMENT, Src:Transmain, Transcost, Holkeys';
   COMMENT ON COLUMN "F_COST_V"."D_POR_CALC_ID" IS 'FK to POR_CALC, Src:Calcfigures:Pfcmaster.pfcmik';
   COMMENT ON COLUMN "F_COST_V"."D_POR_CALC_TEMPLATE_ID" IS 'FK to POR_CALC_TEMPLATE,Src:Calcfigures';
   COMMENT ON COLUMN "F_COST_V"."D_PORTFOLIO_ID" IS 'FK to D_PORTFOLIO,Src:Transmain, Transcost, Calcfigures';
   COMMENT ON COLUMN "F_COST_V"."D_TIME_ID" IS 'FK to D_TIME: Src:Transmain,Transcost (Tradingdate),Calcfigures(todate)';
   COMMENT ON COLUMN "F_COST_V"."D_TRANSACTION_CANCEL_ID" IS 'FK to D_TRANSACTION_CANCEL, Src:Transmain';
   COMMENT ON COLUMN "F_COST_V"."D_TRANSACTION_STATUS_ID" IS 'FK to D_TRANSACTION_STATUS, Src:Transmain';
   COMMENT ON COLUMN "F_COST_V"."TRANSACTION_SK" IS 'Src:Transaction, Transcosttax, SCD: Transmain.transik';
   COMMENT ON COLUMN "F_COST_V"."TRANSACTION_NO" IS 'Src:Transaction, Transcosttax, SCD: Transmain.transex';
   COMMENT ON COLUMN "F_COST_V"."TRANSACTION_AMOUNT_PC" IS 'Src:Transaction, SCD: Transmain.stlmamtpc';
   COMMENT ON COLUMN "F_COST_V"."TRANSACTION_COST_AMOUNT_PC" IS 'Src:Transcosttax, SCD: Transcosttax.amountpc';
   COMMENT ON COLUMN "F_COST_V"."ONGOING_COST_EX_POST" IS 'Src:Calcfigures, SCD: Pfcformulas.frmlnum (and Formulas.frml)';
   COMMENT ON COLUMN "F_COST_V"."MANAGEMENT_FEE_EX_POST" IS 'Src:Calcfigures, SCD: Pfcformulas.frmlnum (and Formulas.frml)';
   COMMENT ON COLUMN "F_COST_V"."TRANSACTION_COST_EX_POST" IS 'Src:Calcfigures, SCD: Pfcformulas.frmlnum (and Formulas.frml)';
   COMMENT ON COLUMN "F_COST_V"."INCIDENTIAL_COST_EX_POST" IS 'Src:Calcfigures, SCD: Pfcformulas.frmlnum (and Formulas.frml)';
   COMMENT ON COLUMN "F_COST_V"."DIRTY_VALUE_PC" IS 'Src:Calcfigures, SCD: Pfckeyratios.dirtyvalpc';
   COMMENT ON COLUMN "F_COST_V"."NOMINAL_VALUE" IS 'Src:Calcfigures, SCD: Pfcholdings.balnomval';
   COMMENT ON COLUMN "F_COST_V"."MIFID_DIRECT_COST_BUY" IS 'Src:Transmain, SCD: Transmain.stlmamtpc*Securities.secfc204';
   COMMENT ON COLUMN "F_COST_V"."MIFID_DIRECT_COST_SELL" IS 'Src:Transmain, SCD: Transmain.stlmamtpc*Securities.secfc205';
   COMMENT ON COLUMN "F_COST_V"."STAGING_SOURCE" IS 'Values:''TRANSACTION'',TRANS_COST'',''POR_CALC''';
   COMMENT ON COLUMN "F_COST_V"."MD5_TRANS" IS 'Md5 for Transaction';
   COMMENT ON COLUMN "F_COST_V"."MD5_TRANS_COST" IS 'Md5 for Transaction_cost';
   COMMENT ON COLUMN "F_COST_V"."MD5_HOLD_BAL" IS 'Not used';
   COMMENT ON COLUMN "F_COST_V"."L_BATCHID_TRANS" IS 'l_batchid for Transaction';
   COMMENT ON COLUMN "F_COST_V"."L_BATCHID_TRANS_COST" IS 'l_batchid for Transaction_cost';
   COMMENT ON COLUMN "F_COST_V"."L_BATCHID_HOLD_BAL" IS 'Not used';
   COMMENT ON COLUMN "F_COST_V"."DWH_CREATED_DATE" IS 'Record timestamp';


  GRANT SELECT ON "F_COST_V" TO "DWH_DM_READ";
  GRANT SELECT ON "F_COST_V" TO "APP_EOY" WITH GRANT OPTION;
  GRANT SELECT ON "F_COST_V" TO "ODI_CONNECT";
  GRANT SELECT ON "F_COST_V" TO "APP_EOY" WITH GRANT OPTION;
  GRANT SELECT ON "F_COST_V" TO "DWH_DSA_SMF";
  GRANT SELECT ON "F_COST_V" TO "QUOV";
  GRANT SELECT ON "F_COST_V" TO "INT_REPORTING";
  GRANT SELECT ON "F_COST_V" TO "APP_GRIP" WITH GRANT OPTION;
  GRANT SELECT ON "F_COST_V" TO "APP_AUTHORITY" WITH GRANT OPTION;
  GRANT SELECT ON "F_COST_V" TO "APP_CR" WITH GRANT OPTION;
  GRANT SELECT ON "F_COST_V" TO "APP_DIMA" WITH GRANT OPTION;
  GRANT SELECT ON "F_COST_V" TO "APP_SAS";
