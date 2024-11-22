
  CREATE OR REPLACE EDITIONABLE VIEW dwh_dm."F_HOLDING_BALANCE_V" ("F_HOLDING_BALANCE_ID", "D_MODEL_PORTFOLIO_ID", "D_INSTRUMENT_ID", "D_BROKER_ID", "D_COUNTER_PART_ID", "D_POR_CALC_ID", "D_POR_CALC_TEMPLATE_ID", "D_CUSTODY_ID", "D_CUSTODIAN_ID", "D_ATTRIBUTE_ID", "TOP_D_FUND_ID", "D_ADVISOR_ID", "D_PORTFOLIO_ID", "D_TIME_ID", "D_RESERVE_MARK_ID", "D_FUND_ID", "L_CALCFIG_HEAD_ID", "L_CALCHOL_LINE_ID", "BLOCKED_DATE", "DRAWN", "BOND_DRAW_DATE", "BOND_DRAW_PRICE", "FX_RATE_PC_RC", "FX_RATE_QC_PC", "FX_RATE_QC_RC", "ACCRUED_INTEREST_EOP_PC", "ACCRUED_INTEREST_EOP_QC", "BOOK_VALUE_PC", "BOOK_VALUE_QC", "NOMINAL_VALUE", "VARIATION_MARGIN_PC", "VARIATION_MARGIN_QC", "ACCRUED_INTEREST_PC", "ACCRUED_INTEREST_QC", "CLEAN_PRICE", "FUTURE_PRICE", "CLEAN_VALUE_PC", "CLEAN_VALUE_QC", "NEXT_COUPON_DATE", "DIRTY_PRICE", "DIRTY_VALUE_PC", "DIRTY_VALUE_QC", "DIRTY_VALUE_TOTAL_PC", "DIRTY_VALUE_TOTAL_QC", "DURATION_YTM", "EXPOSURE_PC", "EXPOSURE_QC", "YIELD", "MATURITY_DATE", "NEXT_COUPON_PC", "NEXT_COUPON_QC", "UNREALISED_PL_BOOK_CUR_PC", "UNREALISED_PL_BOOK_SEC_PC", "UNREALISED_PL_BOOK_SEC_QC", "UNREALISED_PL_COST_CUR_PC", "UNREALISED_PL_COST_SEC_PC", "UNREALISED_PL_COST_SEC_QC", "LONG_SETTLEMENT_CORR_VALUE_PC", "LONG_SETTLEMENT_CORR_VALUE_QC", "INTEREST_INCOME_PC", "INTEREST_INCOME_QC", "CUR_ADJUSTMENT_PC", "SEC_ADJUSTMENTS_PC", "SEC_ADJUSTMENTS_QC", "POR_CALC_RANK", "BALANCE_COST_VALUE_PC", "BALANCE_COST_VALUE_QC", "ONGOING_COST_EX_POST", "MANAGEMENT_FEE_EX_POST", "TRANSACTION_COST_EX_POST", "INCIDENTIAL_COST_EX_POST", "DWH_CREATED_DATE", "DWH_CREATED_BY", "DWH_CHANGED_DATE", "DWH_CHANGED_BY", "DI_FUND_IN_DI_FUND_FINANS_DK", "ACCR_INTEREST_PLUS_FEE_PC", "UNSETTL_ACCR_COUPON_PC", "SECIK_UNDERLYING", "MV_UNDERLYING", "MV_COLLATERAL_QC", "MV_COLLATERAL_PC", "MODIFIED_DURATION_YTM", "BALANCE_NUM_OF_UNITS", "D_CURRENCY_ID", "D_COLLATERAL_INSTRUMENT_ID", "EXPECTED_MATURITY_DATE", "D_MARGIN_CLEARER_ID", "COUPON_RATE", "UNSETTLED_AMOUNT_OUT_QC", "UNSETTLED_AMOUNT_OUT_PC", "UNSETTLED_AMOUNT_IN_QC", "UNSETTLED_AMOUNT_IN_PC", "FRMLNUM1", "FRMLNUM41", "FRMLNUM18", "FRMLNUM2", "FRMLNUM23", "SPOT_FX_RATE", "DELTA", "HOLDING_KEY_SK") AS select holdingbalance.f_holding_balance_id,
       holdingbalance.d_model_portfolio_id,
       holdingbalance.d_instrument_id,
       holdingbalance.d_broker_id,
       holdingbalance.d_counter_part_id,
       holdingbalance.d_por_calc_id,
       holdingbalance.d_por_calc_template_id,
       holdingbalance.d_custody_id,
       holdingbalance.d_custodian_id,
       holdingbalance.d_attribute_id,
       holdingbalance.top_d_fund_id,
       holdingbalance.d_advisor_id,
       holdingbalance.d_portfolio_id,
       holdingbalance.d_time_id,
       holdingbalance.d_reserve_mark_id,
       holdingbalance.d_fund_id,
       holdingbalance.l_calcfig_head_id,
       holdingbalance.l_calchol_line_id,
       holdingbalance.blocked_date,
       holdingbalance.drawn,
       holdingbalance.bond_draw_date,
       holdingbalance.bond_draw_price,
       holdingbalance.fx_rate_pc_rc,
       holdingbalance.fx_rate_qc_pc,
       holdingbalance.fx_rate_qc_rc,
       holdingbalance.accrued_interest_eop_pc,
       holdingbalance.accrued_interest_eop_qc,
       holdingbalance.book_value_pc,
       holdingbalance.book_value_qc,
       holdingbalance.nominal_value,
       holdingbalance.variation_margin_pc,
       holdingbalance.variation_margin_qc,
       holdingbalance.accrued_interest_pc,
       holdingbalance.accrued_interest_qc,
       holdingbalance.clean_price,
       holdingbalance.future_price,
       holdingbalance.clean_value_pc,
       holdingbalance.clean_value_qc,
       holdingbalance.next_coupon_date,
       holdingbalance.dirty_price,
       holdingbalance.dirty_value_pc,
       holdingbalance.dirty_value_qc,
       holdingbalance.dirty_value_total_pc,
       holdingbalance.dirty_value_total_qc,
       holdingbalance.duration_ytm,
       holdingbalance.exposure_pc,
       holdingbalance.exposure_qc,
       holdingbalance.yield,
       holdingbalance.maturity_date,
       holdingbalance.next_coupon_pc,
       holdingbalance.next_coupon_qc,
       holdingbalance.unrealised_pl_book_cur_pc,
       holdingbalance.unrealised_pl_book_sec_pc,
       holdingbalance.unrealised_pl_book_sec_qc,
       holdingbalance.unrealised_pl_cost_cur_pc,
       holdingbalance.unrealised_pl_cost_sec_pc,
       holdingbalance.unrealised_pl_cost_sec_qc,
       holdingbalance.long_settlement_corr_value_pc,
       holdingbalance.long_settlement_corr_value_qc,
       holdingbalance.interest_income_pc,
       holdingbalance.interest_income_qc,
       holdingbalance.cur_adjustment_pc,
       holdingbalance.sec_adjustments_pc,
       holdingbalance.sec_adjustments_qc,
       holdingbalance.por_calc_rank,
       holdingbalance.balance_cost_value_pc,
       holdingbalance.balance_cost_value_qc,
       holdingbalance.ongoing_cost_ex_post,
       holdingbalance.management_fee_ex_post,
       holdingbalance.transaction_cost_ex_post,
       holdingbalance.incidential_cost_ex_post,
       holdingbalance.dwh_created_date,
       holdingbalance.dwh_created_by,
       holdingbalance.dwh_changed_date,
       holdingbalance.dwh_changed_by,
       holdingbalance.di_fund_in_di_fund_finans_dk,
       holdingbalance.accr_interest_plus_fee_pc,
       holdingbalance.unsettl_accr_coupon_pc,
       holdingbalance.secik_underlying,
       holdingbalance.mv_underlying,
       holdingbalance.mv_collateral_qc,
       holdingbalance.mv_collateral_pc,
       holdingbalance.modified_duration_ytm,
       holdingbalance.balance_num_of_units,
       holdingbalance.d_currency_id,
       holdingbalance.d_collateral_instrument_id,
       holdingbalance.expected_maturity_date,
       holdingbalance.d_margin_clearer_id,
       holdingbalance.coupon_rate,
       holdingbalance.unsettled_amount_out_qc,
       holdingbalance.unsettled_amount_out_pc,
       holdingbalance.unsettled_amount_in_qc,
       holdingbalance.unsettled_amount_in_pc,
       holdingbalance.frmlnum1,
       holdingbalance.frmlnum41,
       holdingbalance.frmlnum18,
       holdingbalance.frmlnum2,
       holdingbalance.frmlnum23,
       holdingbalance.spot_fx_rate,
       holdingbalance.delta,
       holdingbalance.holding_key_sk
from f_holding_balance holdingbalance
where 1=1;

   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."F_HOLDING_BALANCE_ID" IS 'Primary key on the table F_HOLDING_BALANCE (sequence generated surogate key)';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."D_MODEL_PORTFOLIO_ID" IS 'Foreign key referring to D_MODEL_PORTFOLIO.D_MODEL_PORTFOLIO_ID';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."D_INSTRUMENT_ID" IS 'Foreign key referring to D_INSTRUMENT.D_INSTRUMENT_ID';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."D_BROKER_ID" IS 'Foreign key referring to D_BROKER.D_BROKER_ID';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."D_COUNTER_PART_ID" IS 'Foreign key referring to D_COUNTER_PART.D_COUNTER_PART_ID';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."D_POR_CALC_ID" IS 'Foreign key referring to D_POR_CALC.D_POR_CALC_ID';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."D_POR_CALC_TEMPLATE_ID" IS 'Foreign key referring to D_POR_CALC_TEMPLATE.D_POR_CALC_TEMPLATE_ID';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."D_CUSTODY_ID" IS 'Foreign key referring to D_CUSTODY.D_CUSTODY_ID';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."D_CUSTODIAN_ID" IS 'Foreign key referring to D_CUSTODIAN.D_CUSTODIAN_ID';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."D_ADVISOR_ID" IS 'Foreign key referring to D_ADVISOR.D_ADVISOR_ID';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."D_PORTFOLIO_ID" IS 'Foreign key referring to D_PORTFOLIO.D_PORTFOLIO_ID';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."D_TIME_ID" IS 'Foreign key referring to D_TIME.D_TIME_ID';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."FX_RATE_PC_RC" IS 'FX rate PC/RC #SCD: tmsdat.pfckeyratios.fxratepr';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."FX_RATE_QC_PC" IS 'FX rate QC/PC #SCD: tmsdat.transmain.fxrateqp';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."FX_RATE_QC_RC" IS 'FX rate QC/RC #SCD: tmsdat.pfckeyratios.fxrateqr';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."ACCRUED_INTEREST_EOP_PC" IS 'Accrued interest EOP PC #SCD: tmsdat.transinterests.accintperendpc';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."ACCRUED_INTEREST_EOP_QC" IS 'Accrued interest EOP QC #SCD: tmsdat.transinterests.accintperendqc';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."BOOK_VALUE_PC" IS 'Balance book value PC #SCD: tmsdat.pfcholdings.balbookvalpc';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."BOOK_VALUE_QC" IS 'Balance book value QC #SCD: tmsdat.pfcholdings.balbookvalqc';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."NOMINAL_VALUE" IS 'Balance nominal/number #SCD: tmsdat.pfcholdings.balnomval';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."VARIATION_MARGIN_PC" IS 'Balance variation margin PC #SCD: tmsdat.pfcholdings.balvarmarpc';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."VARIATION_MARGIN_QC" IS 'Balance variation margin QC #SCD: tmsdat.pfcholdings.balvarmarqc';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."ACCRUED_INTEREST_PC" IS 'Accrued interest PC';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."ACCRUED_INTEREST_QC" IS 'Accrued interest QC';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."CLEAN_PRICE" IS 'Clean price #SCD: tmsdat.pfckeyratios.clean';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."FUTURE_PRICE" IS 'Price future #SCD: tmsdat.pfckeyratios.cleanfut';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."CLEAN_VALUE_PC" IS 'Clean value PC #SCD: tmsdat.pfckeyratios.cleanvalpc';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."CLEAN_VALUE_QC" IS 'Clean value QC #SCD: tmsdat.pfckeyratios.cleanvalqc';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."NEXT_COUPON_DATE" IS 'Next coupon date #SCD: tmsdat.pfckeyratios.coudatenext';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."DIRTY_PRICE" IS 'Dirty price #SCD: tmsdat.pfckeyratios.dirty';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."DIRTY_VALUE_PC" IS 'Dirty value PC #SCD: tmsdat.pfckeyratios.dirtyvalpc';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."DIRTY_VALUE_QC" IS 'Dirty value QC #SCD: tmsdat.pfckeyratios.dirtyvalqc';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."DIRTY_VALUE_TOTAL_PC" IS 'Dirty value total PC #SCD: tmsdat.pfckeyratios.dirtyvaltotpc';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."DIRTY_VALUE_TOTAL_QC" IS 'Dirty value total QC #SCD: tmsdat.pfckeyratios.dirtyvaltotqc';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."DURATION_YTM" IS 'Duration YTM #SCD: tmsdat.pfckeyratios.dur';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."EXPOSURE_PC" IS 'Exposure PC';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."EXPOSURE_QC" IS 'Exposure QC';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."YIELD" IS 'Yield #SCD: tmsdat.transmain.interest';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."MATURITY_DATE" IS 'Final maturity date';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."NEXT_COUPON_PC" IS 'Next coupon PC #SCD: tmsdat.transinterests.nextcouvalpc';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."NEXT_COUPON_QC" IS 'Next coupon QC #SCD: tmsdat.transinterests.nextcouvalqc';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."UNREALISED_PL_BOOK_CUR_PC" IS 'Unrealised P/L book, Ccy PC #SCD: tmsdat.transgainloss.uprlbookcurpc';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."UNREALISED_PL_BOOK_SEC_PC" IS 'Unrealised P/L book Sec. PC #SCD: tmsdat.transgainloss.uprlbooksecpc';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."UNREALISED_PL_BOOK_SEC_QC" IS 'Unrealised P/L book value QC #SCD: tmsdat.transgainloss.uprlbooksecqc';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."UNREALISED_PL_COST_CUR_PC" IS 'Unrealised P/L cost, Ccy PC #SCD: tmsdat.transgainloss.uprlcostcurpc';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."UNREALISED_PL_COST_SEC_PC" IS 'Unrealised P/L cost Sec. PC #SCD: tmsdat.transgainloss.uprlcostsecpc';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."UNREALISED_PL_COST_SEC_QC" IS 'Unrealised P/L cost value QC #SCD: tmsdat.transgainloss.uprlcostsecqc';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."LONG_SETTLEMENT_CORR_VALUE_PC" IS 'Long settlement correction value PC #SCD: tmsdat.pfckeyratios.longstlmcorvalpc';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."LONG_SETTLEMENT_CORR_VALUE_QC" IS 'Long settlement correction value QC #SCD: tmsdat.pfckeyratios.longstlmcorvalqc';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."INTEREST_INCOME_PC" IS 'Interest income PC #SCD: tmsdat.transgainloss.intincpc';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."INTEREST_INCOME_QC" IS 'Interest income IC #SCD: tmsdat.transgainloss.intincqc';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."CUR_ADJUSTMENT_PC" IS 'Ccy adjustment PC #SCD: tmsdat.transspecinpval.regcurpc';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."SEC_ADJUSTMENTS_PC" IS 'Security adjustments PC #SCD: tmsdat.transspecinpval.regsecpc';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."SEC_ADJUSTMENTS_QC" IS 'Security adjustments QC #SCD: tmsdat.transspecinpval.regsecqc';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."BALANCE_COST_VALUE_PC" IS 'Balance cost value PC #SCD: tmsdat.transspecinpval.balcostvalpc';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."BALANCE_COST_VALUE_QC" IS 'Balance cost value QC #SCD: tmsdat.transspecinpval.balcostvalqc';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."DWH_CREATED_DATE" IS 'Trigger generated creation date';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."DWH_CHANGED_DATE" IS 'Trigger generated changed date';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."DI_FUND_IN_DI_FUND_FINANS_DK" IS 'Column indication if the holding is a fund certificate in a DIMA fund being held by another DIMA fund (special column calculated in MAP_F_HOLDING_BALANCE)';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."ACCR_INTEREST_PLUS_FEE_PC" IS '#pfc_formula: ''DI:ACCR INTEREST + FEE PC''';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."UNSETTL_ACCR_COUPON_PC" IS '#pfc_formula: ''DI:UNSETTL ACCR/COUPON PC''';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."SECIK_UNDERLYING" IS '#pfc_formula: ''APOLLO SECIK OFUNDERLYING''';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."MV_UNDERLYING" IS '#pfc_formula: ''APOLLO MV OF UNDERLYING''';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."MV_COLLATERAL_QC" IS '#pfc_formula: ''APOLLO MV OF COLL QC''';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."MV_COLLATERAL_PC" IS '#pfc_formula: ''APOLLO MV OF COLL PC''';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."MODIFIED_DURATION_YTM" IS 'Modified duration YTM #SCD: tmsdat.pfckeyratios.moddur';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."BALANCE_NUM_OF_UNITS" IS 'Balance number of units #SCD: tmsdat.pfcholdings.balnumunits';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."D_CURRENCY_ID" IS 'Foreign key referring to D_CURRENCY.D_CURRENCY_ID';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."D_COLLATERAL_INSTRUMENT_ID" IS 'Foreign key referring to D_INSTRUMENT.D_INSTRUMENT_ID';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."EXPECTED_MATURITY_DATE" IS 'Expected maturity date #SCD: tmsdat.pfckeyratios.matdtprepay';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."D_MARGIN_CLEARER_ID" IS 'Margin clearer (clearinghouse) #SCD: tmsdat.holkeys.clearinghouse';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."UNSETTLED_AMOUNT_OUT_QC" IS 'Unsettled amount in PC #SCD: tmsdat.pfcholdings.unsetamtinpc';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."FRMLNUM1" IS '#SCD: tmsdat.pfcformulasflds.frmlnum1';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."FRMLNUM41" IS '#SCD: tmsdat.pfcformulasflds.frmlnum41';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."FRMLNUM18" IS '#SCD: tmsdat.pfcformulasflds.frmlnum18';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."FRMLNUM2" IS '#SCD: tmsdat.pfcformulasflds.frmlnum2';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."FRMLNUM23" IS '#SCD: tmsdat.pfcformulasflds.frmlnum23';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."SPOT_FX_RATE" IS 'Spot FX rate #SCD: tmsdat.pfckeyratios.spotfxrate';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."DELTA" IS 'Delta #SCD: tmsdat.pfckeyratios.delta';
   COMMENT ON COLUMN "F_HOLDING_BALANCE_V"."HOLDING_KEY_SK" IS 'holkeyik converted to text #SCD: tmsdat.holkeys.holkeyik';


  GRANT SELECT ON "F_HOLDING_BALANCE_V" TO "DWH_DM_READ";
  GRANT SELECT ON "F_HOLDING_BALANCE_V" TO "APP_ESG" WITH GRANT OPTION;
  GRANT SELECT ON "F_HOLDING_BALANCE_V" TO "APP_PMCC";
  GRANT SELECT ON "F_HOLDING_BALANCE_V" TO "APP_WAAM";
  GRANT SELECT ON "F_HOLDING_BALANCE_V" TO "APP_EOY" WITH GRANT OPTION;
  GRANT SELECT ON "F_HOLDING_BALANCE_V" TO "D007840";
  GRANT MERGE VIEW ON "F_HOLDING_BALANCE_V" TO "APP_DR";
  GRANT FLASHBACK ON "F_HOLDING_BALANCE_V" TO "APP_DR";
  GRANT DEBUG ON "F_HOLDING_BALANCE_V" TO "APP_DR";
  GRANT QUERY REWRITE ON "F_HOLDING_BALANCE_V" TO "APP_DR";
  GRANT ON COMMIT REFRESH ON "F_HOLDING_BALANCE_V" TO "APP_DR";
  GRANT READ ON "F_HOLDING_BALANCE_V" TO "APP_DR";
  GRANT DELETE ON "F_HOLDING_BALANCE_V" TO "APP_DR";
  GRANT REFERENCES ON "F_HOLDING_BALANCE_V" TO "APP_DR";
  GRANT UPDATE ON "F_HOLDING_BALANCE_V" TO "APP_DR";
  GRANT SELECT ON "F_HOLDING_BALANCE_V" TO "APP_DR";
  GRANT INSERT ON "F_HOLDING_BALANCE_V" TO "APP_DR";
  GRANT SELECT ON "F_HOLDING_BALANCE_V" TO "ODI_CONNECT";
  GRANT SELECT ON "F_HOLDING_BALANCE_V" TO "APP_EOY" WITH GRANT OPTION;
  GRANT SELECT ON "F_HOLDING_BALANCE_V" TO "APP_DS";
  GRANT SELECT ON "F_HOLDING_BALANCE_V" TO "DWH_DSA_SMF";
  GRANT SELECT ON "F_HOLDING_BALANCE_V" TO "QUOV";
  GRANT SELECT ON "F_HOLDING_BALANCE_V" TO "INT_REPORTING";
  GRANT SELECT ON "F_HOLDING_BALANCE_V" TO "APP_DIMA" WITH GRANT OPTION;
  GRANT SELECT ON "F_HOLDING_BALANCE_V" TO "APP_SAS";
  GRANT SELECT ON "F_HOLDING_BALANCE_V" TO "APP_AUTHORITY" WITH GRANT OPTION;
  GRANT SELECT ON "F_HOLDING_BALANCE_V" TO "APP_GRIP" WITH GRANT OPTION;
  GRANT SELECT ON "F_HOLDING_BALANCE_V" TO "APP_CR" WITH GRANT OPTION;
