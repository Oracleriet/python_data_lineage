
  CREATE OR REPLACE EDITIONABLE VIEW dwh_dm."F_TRANSACTION_V" ("F_TRANSACTION_ID", "L_TRANSACTION_ID", "TRANSACTION_SK", "D_TRANSACTION_TYPE_ID", "D_TRANSACTION_CANCEL_ID", "D_TRANSACTION_STATUS_ID", "D_CURRENCY_ID", "D_BANK_ACCOUNT_ID", "D_COUNTER_PART_ID", "D_INSTRUMENT_ID", "D_MODEL_PORTFOLIO_ID", "D_CERTIFICATE_ID", "D_FUND_ID", "TRANSACTION_NO", "TRADING_DATE_ID", "PORTFOLIO_BOOKING_DATE_ID", "SETTLEMENT_DATE_ID", "PRICE", "NOMINAL_AMOUNT", "CURRENT_VALUE_QC", "COST_AMOUNT_QC", "ACCRUED_INTEREST_QC", "PAYMENT_AMOUNT_QC", "CURRENT_VALUE_PC", "COST_AMOUNT_PC", "ACCRUED_INTEREST_PC", "PAYMENT_AMOUNT_PC", "RESERVE_FLAG", "FX_RATE_QP", "FX_RATE_QS", "DWH_CREATED_DATE", "DWH_CREATED_BY", "DWH_CHANGED_DATE", "DWH_CHANGED_BY", "D_PORTFOLIO_ID", "INTEREST_DIVIDEND_PC", "NOMINAL_BASIS", "DIVIDEND_PER_SHARE", "D_BROKER_ID", "D_CUSTODIAN_ID", "D_CUSTODY_ID", "AMOUNT_COST_TAX_QC", "AMOUNT_COST_OTHER_QC", "AMOUNT_COST_TAX_PC", "AMOUNT_COST_OTHER_PC", "AMOUNT_COST_BROKERAGE_PC", "AMOUNT_COST_BROKERAGE_QC", "D_UNIQUE_SWAP_IDENT_ID", "D_TRANSACTION_ORIGIN_ID", "D_EXCHANGE_ID", "TRADING_DATE_TIME", "D_ADVISOR_ID", "D_DISTRIBUTOR_ID", "SRC_CREATEDBY", "SRC_CREATEDDATE", "SRC_CHANGEDBY", "SRC_CHANGEDDATE", "D_TRANS_MISC1_ID", "PAYMENT_DATE_ID", "COST_VALUE_PC", "COST_VALUE_QC", "PL_COST_PC", "PL_COST_QC", "BOOKED_CURRENT_VALUE_PC", "BOOKED_CURRENT_VALUE_QC", "D_DEALER_ID", "TRANSACTION_EXTENDED_NO", "L_BATCHID", "CONFIRMATION_TIME", "CLEARING_TIME", "CONFIRMATION_MEANS", "AMOUNT_COST_DEPOTEX_QC", "AMOUNT_COST_DEPOTEX_PC", "BOND_DRAW_DATE", "TRANS_SERIAL_NO", "NUMBER_OF_UNITS", "TRANSORDER", "FWD_PRICE", "FWD_PREMIUM", "FWD_PREMIUM_AMOUNT_QC", "SUMMIT_STATUS", "EXTERNAL_TRANS_NO", "SUB_STATUS", "SUB_STATUS_NAME", "FI_FEE_SK", "FI_FEE", "FI_FEE_NAME", "FI_FUND_TRANS_TYPE_SK", "FI_FUND_TRANS_TYPE", "FI_FUND_TRANS_TYPE_NAME", "PL_BOOK_SEC_PC", "PL_BOOK_CCY_PC", "PL_BOOK_PC", "PL_BOOK_QC", "COST_VALUE_PC_2ND", "COST_VALUE_QC_2ND", "PL_BOOK_CCY_PC_2ND", "PL_BOOK_SEC_PC_2ND", "PL_BOOK_QC_2ND", "PL_COST_PC_2ND", "PL_COST_QC_2ND", "BOOKED_CURRENT_VALUE_PC_2ND", "BOOKED_CURRENT_VALUE_QC_2ND", "PL_BOOK_PC_2ND", "MIFID_DIRECT_COST_BUY", "MIFID_DIRECT_COST_SELL", "FREECOM", "DIMA_FUND_BUY_SELL_DIMA_FUND", "COMMENT_TO_BETS", "DISCOUNT_DUE_TO_MERGER", "ISSUE_REDEMPTION", "LASTFILLTS", "TRADPLATFORM", "FX_TYPE", "DSFCTEXT10", "PLACEMENT_ID", "UPFRONTFEEPCT", "BY_PASS_CTM", "EXECUTION_MEDIUM", "TVTIC", "ISOTMEXEC", "D_COUNTERPART_CUSTODY_ID", "CA_PAYM_AMOUNT", "FIN_CALC", "D_ACCOUNTING_FRAMEWORK_ID", "PAYMENT_AMOUNT_SC", "D_CURRENCY_ID_QC", "INTEREST_DATE", "SECURITY_ADJUSTMENT_QC", "SECURITY_ADJUSTMENT_PC", "CURRENCY_ADJUSTMENT_PC", "D_MARGIN_CLEARER_ID") AS select transaction.f_transaction_id,
       transaction.l_transaction_id,
       transaction.transaction_sk,
       transaction.d_transaction_type_id,
       transaction.d_transaction_cancel_id,
       transaction.d_transaction_status_id,
       transaction.d_currency_id,
       transaction.d_bank_account_id,
       transaction.d_counter_part_id,
       transaction.d_instrument_id,
       transaction.d_model_portfolio_id,
       transaction.d_certificate_id,
       transaction.d_fund_id,
       transaction.transaction_no,
       transaction.trading_date_id,
       transaction.portfolio_booking_date_id,
       transaction.settlement_date_id,
       transaction.price,
       transaction.nominal_amount,
       transaction.current_value_qc,
       transaction.cost_amount_qc,
       transaction.accrued_interest_qc,
       transaction.payment_amount_qc,
       transaction.current_value_pc,
       transaction.cost_amount_pc,
       transaction.accrued_interest_pc,
       transaction.payment_amount_pc,
       transaction.reserve_flag,
       transaction.fx_rate_qp,
       transaction.fx_rate_qs,
       transaction.dwh_created_date,
       transaction.dwh_created_by,
       transaction.dwh_changed_date,
       transaction.dwh_changed_by,
       transaction.d_portfolio_id,
       transaction.interest_dividend_pc,
       transaction.nominal_basis,
       transaction.dividend_per_share,
       transaction.d_broker_id,
       transaction.d_custodian_id,
       transaction.d_custody_id,
       transaction.amount_cost_tax_qc,
       transaction.amount_cost_other_qc,
       transaction.amount_cost_tax_pc,
       transaction.amount_cost_other_pc,
       transaction.amount_cost_brokerage_pc,
       transaction.amount_cost_brokerage_qc,
       transaction.d_unique_swap_ident_id,
       transaction.d_transaction_origin_id,
       transaction.d_exchange_id,
       transaction.trading_date_time,
       transaction.d_advisor_id,
       transaction.d_distributor_id,
       transaction.src_createdby,
       transaction.src_createddate,
       transaction.src_changedby,
       transaction.src_changeddate,
       transaction.d_trans_misc1_id,
       transaction.payment_date_id,
       transaction.cost_value_pc,
       transaction.cost_value_qc,
       transaction.pl_cost_pc,
       transaction.pl_cost_qc,
       transaction.booked_current_value_pc,
       transaction.booked_current_value_qc,
       transaction.d_dealer_id,
       transaction.transaction_extended_no,
       transaction.l_batchid,
       transaction.confirmation_time,
       transaction.clearing_time,
       transaction.confirmation_means,
       transaction.amount_cost_depotex_qc,
       transaction.amount_cost_depotex_pc,
       transaction.bond_draw_date,
       transaction.trans_serial_no,
       transaction.number_of_units,
       transaction.transorder,
       transaction.fwd_price,
       transaction.fwd_premium,
       transaction.fwd_premium_amount_qc,
       transaction.summit_status,
       transaction.external_trans_no,
       transaction.sub_status,
       transaction.sub_status_name,
       transaction.fi_fee_sk,
       transaction.fi_fee,
       transaction.fi_fee_name,
       transaction.fi_fund_trans_type_sk,
       transaction.fi_fund_trans_type,
       transaction.fi_fund_trans_type_name,
       transaction.pl_book_sec_pc,
       transaction.pl_book_ccy_pc,
       transaction.pl_book_pc,
       transaction.pl_book_qc,
       transaction.cost_value_pc_2nd,
       transaction.cost_value_qc_2nd,
       transaction.pl_book_ccy_pc_2nd,
       transaction.pl_book_sec_pc_2nd,
       transaction.pl_book_qc_2nd,
       transaction.pl_cost_pc_2nd,
       transaction.pl_cost_qc_2nd,
       transaction.booked_current_value_pc_2nd,
       transaction.booked_current_value_qc_2nd,
       transaction.pl_book_pc_2nd,
       transaction.mifid_direct_cost_buy,
       transaction.mifid_direct_cost_sell,
       transaction.freecom,
       transaction.dima_fund_buy_sell_dima_fund,
       transaction.comment_to_bets,
       transaction.discount_due_to_merger,
       transaction.issue_redemption,
       transaction.lastfillts,
       transaction.tradplatform,
       transaction.fx_type,
       transaction.dsfctext10,
       transaction.placement_id,
       transaction.upfrontfeepct,
       transaction.by_pass_ctm,
       transaction.execution_medium,
       transaction.tvtic,
       transaction.isotmexec,
       transaction.d_counterpart_custody_id,
       transaction.ca_paym_amount,
       transaction.fin_calc,
       transaction.d_accounting_framework_id,
       transaction.payment_amount_sc,
       transaction.d_currency_id_qc,
       transaction.interest_date,
       transaction.security_adjustment_qc,
       transaction.security_adjustment_pc,
       transaction.currency_adjustment_pc,
       transaction.d_margin_clearer_id
from f_transaction transaction
where 1=1;

   COMMENT ON COLUMN "F_TRANSACTION_V"."F_TRANSACTION_ID" IS 'Primary key on the table F_TRANSACTION (sequence generated surogate key)';
   COMMENT ON COLUMN "F_TRANSACTION_V"."L_TRANSACTION_ID" IS 'EDW link table ID for the table dwh_edw.l_transaction';
   COMMENT ON COLUMN "F_TRANSACTION_V"."TRANSACTION_SK" IS 'Transaction number (IK)';
   COMMENT ON COLUMN "F_TRANSACTION_V"."D_TRANSACTION_TYPE_ID" IS 'Foreign key referring to D_TRANSACTION_TYPE.D_TRANSACTION_TYPE_ID';
   COMMENT ON COLUMN "F_TRANSACTION_V"."D_TRANSACTION_CANCEL_ID" IS 'Foreign key referring to D_TRANSACTION_CANCEL.D_TRANSACTION_CANCEL_ID';
   COMMENT ON COLUMN "F_TRANSACTION_V"."D_TRANSACTION_STATUS_ID" IS 'Foreign key referring to D_TRANSACTION_STATUS.D_TRANSACTION_STATUS_ID';
   COMMENT ON COLUMN "F_TRANSACTION_V"."D_CURRENCY_ID" IS 'Foreign key referring to D_CURRENCY.D_CURRENCY_ID';
   COMMENT ON COLUMN "F_TRANSACTION_V"."D_BANK_ACCOUNT_ID" IS 'Foreign key referring to D_BANK_ACCOUNT.D_BANK_ACCOUNT_ID';
   COMMENT ON COLUMN "F_TRANSACTION_V"."D_COUNTER_PART_ID" IS 'Foreign key referring to D_COUNTER_PART.D_COUNTER_PART_ID';
   COMMENT ON COLUMN "F_TRANSACTION_V"."D_INSTRUMENT_ID" IS 'Foreign key referring to D_INSTRUMENT.D_INSTRUMENT_ID';
   COMMENT ON COLUMN "F_TRANSACTION_V"."D_MODEL_PORTFOLIO_ID" IS 'Foreign key referring to D_MODEL_PORTFOLIO.D_MODEL_PORTFOLIO_ID';
   COMMENT ON COLUMN "F_TRANSACTION_V"."D_CERTIFICATE_ID" IS 'Foreign key referring to D_CERTIFICATE.D_CERTIFICATE_ID';
   COMMENT ON COLUMN "F_TRANSACTION_V"."D_FUND_ID" IS 'Foreign key referring to D_FUND.D_FUND_ID';
   COMMENT ON COLUMN "F_TRANSACTION_V"."TRANSACTION_NO" IS 'Transaction no. #SCD: tmsdat.transmain.transex #EDW: l_transaction.trans_no';
   COMMENT ON COLUMN "F_TRANSACTION_V"."PRICE" IS 'Price';
   COMMENT ON COLUMN "F_TRANSACTION_V"."NOMINAL_AMOUNT" IS 'Nominal #EDW: l_transaction.amount_nominal';
   COMMENT ON COLUMN "F_TRANSACTION_V"."CURRENT_VALUE_QC" IS 'Current value QC #EDW: l_transaction.amount_net_qc';
   COMMENT ON COLUMN "F_TRANSACTION_V"."COST_AMOUNT_QC" IS '#EDW: l_transaction.amount_cost_qc';
   COMMENT ON COLUMN "F_TRANSACTION_V"."ACCRUED_INTEREST_QC" IS 'Accrued interest QC';
   COMMENT ON COLUMN "F_TRANSACTION_V"."PAYMENT_AMOUNT_QC" IS '#EDW: l_transaction.amount_total_qc';
   COMMENT ON COLUMN "F_TRANSACTION_V"."CURRENT_VALUE_PC" IS '#EDW: l_transaction.amount_net_pc';
   COMMENT ON COLUMN "F_TRANSACTION_V"."COST_AMOUNT_PC" IS '#EDW: l_transaction.amount_cost_pc';
   COMMENT ON COLUMN "F_TRANSACTION_V"."ACCRUED_INTEREST_PC" IS 'Accrued interest PC';
   COMMENT ON COLUMN "F_TRANSACTION_V"."PAYMENT_AMOUNT_PC" IS '#EDW: l_transaction.amount_total_pc';
   COMMENT ON COLUMN "F_TRANSACTION_V"."RESERVE_FLAG" IS 'Reserve mark';
   COMMENT ON COLUMN "F_TRANSACTION_V"."DWH_CREATED_DATE" IS 'Trigger generated creation date';
   COMMENT ON COLUMN "F_TRANSACTION_V"."DWH_CHANGED_DATE" IS 'Trigger generated changed date';
   COMMENT ON COLUMN "F_TRANSACTION_V"."D_PORTFOLIO_ID" IS 'Foreign key referring to D_PORTFOLIO.D_PORTFOLIO_ID';
   COMMENT ON COLUMN "F_TRANSACTION_V"."INTEREST_DIVIDEND_PC" IS 'Interest, dividend, capital event PC #SCD: transinterests.intdivpc';
   COMMENT ON COLUMN "F_TRANSACTION_V"."DIVIDEND_PER_SHARE" IS 'Dividend per share (Pct.)';
   COMMENT ON COLUMN "F_TRANSACTION_V"."D_BROKER_ID" IS 'Foreign key referring to D_BROKER.D_BROKER_ID';
   COMMENT ON COLUMN "F_TRANSACTION_V"."D_CUSTODIAN_ID" IS 'Foreign key referring to D_CUSTODIAN.D_CUSTODIAN_ID';
   COMMENT ON COLUMN "F_TRANSACTION_V"."D_CUSTODY_ID" IS 'Foreign key referring to D_CUSTODY.D_CUSTODY_ID';
   COMMENT ON COLUMN "F_TRANSACTION_V"."AMOUNT_COST_TAX_QC" IS 'Tax amount quotation currency #SCD: TMSDAT.TRANSCOSTTAX.AMOUNTQC where COSTIK via COSTTYPE corresponds to COSTTYPE in (''Tax'',''Coupon/dividend tax'',''Tax - Securities'',''Tax - Commodities'')';
   COMMENT ON COLUMN "F_TRANSACTION_V"."AMOUNT_COST_OTHER_QC" IS 'Amount quotation currency thats''s not tax #SCD: TMSDAT.TRANSCOSTTAX.AMOUNTQC where COSTIK via COSTTYPE corresponds to COSTTYPE in (''Tax'',''Coupon/dividend tax'',''Tax - Securities'',''Tax - Commodities'')''';
   COMMENT ON COLUMN "F_TRANSACTION_V"."AMOUNT_COST_TAX_PC" IS 'Tax amount portfolio currency #SCD: TMSDAT.TRANSCOSTTAX.AMOUNTPC where COSTIK via COSTTYPE corresponds to COSTTYPE in (''Tax'',''Coupon/dividend tax'',''Tax - Securities'',''Tax - Commodities'')';
   COMMENT ON COLUMN "F_TRANSACTION_V"."AMOUNT_COST_OTHER_PC" IS 'Amount portfolio currency thats''s not tax #SCD: TMSDAT.TRANSCOSTTAX.AMOUNTPC where COSTIK via COSTTYPE corresponds to COSTTYPE in (''Tax'',''Coupon/dividend tax'',''Tax - Securities'',''Tax - Commodities'')''';
   COMMENT ON COLUMN "F_TRANSACTION_V"."AMOUNT_COST_BROKERAGE_PC" IS 'Brokerage amount portfolio currency #SCD: TMSDAT.TRANSCOSTTAX.AMOUNTPC where COSTIK corresponds to TMSDAT.COSTS where COST = ''BROKERAGE''';
   COMMENT ON COLUMN "F_TRANSACTION_V"."AMOUNT_COST_BROKERAGE_QC" IS 'Brokerage amount quotation currency #SCD: TMSDAT.TRANSCOSTTAX.AMOUNTQC where COSTIK corresponds to TMSDAT.COSTS where COST = ''BROKERAGE''';
   COMMENT ON COLUMN "F_TRANSACTION_V"."TRADING_DATE_TIME" IS 'Trading date and time (Agreement time stamp) #SCD: TMSDAT.TRANSMAIN.AGRTS';
   COMMENT ON COLUMN "F_TRANSACTION_V"."COST_VALUE_PC" IS 'Cost value PC #SCD: TMSDAT.TRANSGAINLOSS.COSTVALPC';
   COMMENT ON COLUMN "F_TRANSACTION_V"."COST_VALUE_QC" IS 'Cost value QC #SCD: TMSDAT.TRANSGAINLOSS.COSTVALQC';
   COMMENT ON COLUMN "F_TRANSACTION_V"."PL_COST_PC" IS 'P/L cost PC #SCD: TMSDAT.TRANSGAINLOSS.PRLCOSTCURPC + TMSDAT.TRANSGAINLOSS.PRLCOSTSECPC ';
   COMMENT ON COLUMN "F_TRANSACTION_V"."PL_COST_QC" IS 'P/L cost QC #SCD: TMSDAT.TRANSGAINLOSS.PRLCOSTSECPC ';
   COMMENT ON COLUMN "F_TRANSACTION_V"."BOOKED_CURRENT_VALUE_PC" IS 'Booked current value PC #SCD: TMSDAT.TRANSGAINLOSS.RECCURVALPC';
   COMMENT ON COLUMN "F_TRANSACTION_V"."BOOKED_CURRENT_VALUE_QC" IS 'Booked current value QC #SCD: TMSDAT.TRANSGAINLOSS.RECCURVALQC';
   COMMENT ON COLUMN "F_TRANSACTION_V"."TRANSACTION_EXTENDED_NO" IS 'Extended transaction No. #SCD: TMSDAT.TRANSMAIN.TRANSEXEXT';
   COMMENT ON COLUMN "F_TRANSACTION_V"."CONFIRMATION_TIME" IS 'Confirmation time (Transaction free code 24) #SCD: transsettle.dsfctext5 ';
   COMMENT ON COLUMN "F_TRANSACTION_V"."CLEARING_TIME" IS 'Transaction free code 24 #SCD: transsettle.dsfctext5';
   COMMENT ON COLUMN "F_TRANSACTION_V"."CONFIRMATION_MEANS" IS 'Transaction free code name #SCD: trafreecodespm8.dsfcname';
   COMMENT ON COLUMN "F_TRANSACTION_V"."AMOUNT_COST_DEPOTEX_QC" IS 'Depot Cost Ex. Excl. Payment amount, quotation currency #SCD: TMSDAT.TRANSCOSTTAX.AMOUNTQC where COSTIK corresponds to TMSDAT.COSTS where COST = ''DEPOT EX''';
   COMMENT ON COLUMN "F_TRANSACTION_V"."AMOUNT_COST_DEPOTEX_PC" IS 'Depot Cost Ex. Excl. Payment amount, portfolio currency #SCD: TMSDAT.TRANSCOSTTAX.AMOUNTPC where COSTIK corresponds to TMSDAT.COSTS where COST = ''DEPOT EX''';
   COMMENT ON COLUMN "F_TRANSACTION_V"."BOND_DRAW_DATE" IS 'Maturity date drawn bonds #SCD: transmain.wthdrwdate';
   COMMENT ON COLUMN "F_TRANSACTION_V"."TRANS_SERIAL_NO" IS 'Elementary transaction serial No. #SCD: TMSDAT.TRANSMAIN.TRAUNIEX';
   COMMENT ON COLUMN "F_TRANSACTION_V"."NUMBER_OF_UNITS" IS 'Number of units #SCD: TMSDAT.TRANSMAIN.NUMUNITS';
   COMMENT ON COLUMN "F_TRANSACTION_V"."TRANSORDER" IS 'Order info present #SCD: TMSDAT.TRANSMAIN.XI_TRANSORDER';
   COMMENT ON COLUMN "F_TRANSACTION_V"."FWD_PRICE" IS 'Forward price #SCD: TMSDAT.TRANSFWD.FWDPRICE';
   COMMENT ON COLUMN "F_TRANSACTION_V"."FWD_PREMIUM" IS 'Forward premium #SCD: TMSDAT.TRANSFWD.FWDPREMIUM';
   COMMENT ON COLUMN "F_TRANSACTION_V"."FWD_PREMIUM_AMOUNT_QC" IS 'Forward premium amount QC #SCD: TMSDAT.TRANSFWD.FWDPREMAMTQC';
   COMMENT ON COLUMN "F_TRANSACTION_V"."SUMMIT_STATUS" IS '#SCD: TRANSSETTLE.DSFCTEXT1 ';
   COMMENT ON COLUMN "F_TRANSACTION_V"."EXTERNAL_TRANS_NO" IS '#SCD: TRANSSETTLE.TRANSEXTNO';
   COMMENT ON COLUMN "F_TRANSACTION_V"."SUB_STATUS" IS 'Trans free code 16, #SCD: TRAFREECODES16.TRAFC16 ';
   COMMENT ON COLUMN "F_TRANSACTION_V"."SUB_STATUS_NAME" IS 'Trans free code 16, #SCD: TRAFREECODES16.TRAFCNAME ';
   COMMENT ON COLUMN "F_TRANSACTION_V"."FI_FEE_SK" IS 'Trans free code 33, #SCD: TRAFREECODESPM4.DSFC4IK';
   COMMENT ON COLUMN "F_TRANSACTION_V"."FI_FEE" IS 'Trans free code 33, #SCD: TRAFREECODESPM4.DSFC4';
   COMMENT ON COLUMN "F_TRANSACTION_V"."FI_FEE_NAME" IS 'Trans free code 33, #SCD: TRAFREECODESPM4.DSFCNAME';
   COMMENT ON COLUMN "F_TRANSACTION_V"."FI_FUND_TRANS_TYPE_SK" IS 'Trans free code 43, #SCD: TRAFREECODES43.TRAFC43IK';
   COMMENT ON COLUMN "F_TRANSACTION_V"."FI_FUND_TRANS_TYPE" IS 'Trans free code 43, #SCD: TRAFREECODES43.TRAFC43';
   COMMENT ON COLUMN "F_TRANSACTION_V"."FI_FUND_TRANS_TYPE_NAME" IS 'Trans free code 43, #SCD: TRAFREECODES43.TRAFCNAME';
   COMMENT ON COLUMN "F_TRANSACTION_V"."PL_BOOK_SEC_PC" IS 'P/L book Sec. PC, #SCD TRANSGAINLOSS.PRLBOOKSECPC';
   COMMENT ON COLUMN "F_TRANSACTION_V"."PL_BOOK_CCY_PC" IS 'P/L book Ccy PC, #SCD TRANSGAINLOSS.PRLBOOKCURPC';
   COMMENT ON COLUMN "F_TRANSACTION_V"."PL_BOOK_PC" IS 'P/L book PC, #SCD TRANSGAINLOSS.PRLBOOKSECPC + TRANSGAINLOSS.PRLBOOKCURPC';
   COMMENT ON COLUMN "F_TRANSACTION_V"."PL_BOOK_QC" IS 'P/L book QC, #SCD TRANSGAINLOSS.PRLBOOKSECQC';
   COMMENT ON COLUMN "F_TRANSACTION_V"."COST_VALUE_PC_2ND" IS 'Cost value PC for the second accounting framework #SCD: TMSDAT.TRANSGAINLOSS.COSTVALPC with accik -> acc = ''SECOND''';
   COMMENT ON COLUMN "F_TRANSACTION_V"."COST_VALUE_QC_2ND" IS 'Cost value QC for the second accounting framework #SCD: TMSDAT.TRANSGAINLOSS.COSTVALQC with accik -> acc = ''SECOND''';
   COMMENT ON COLUMN "F_TRANSACTION_V"."PL_BOOK_CCY_PC_2ND" IS 'P/L book ccy PC for the second accounting framework #SCD: TMSDAT.TRANSGAINLOSS.PRLBOOKCURPCwith accik -> acc = ''SECOND''';
   COMMENT ON COLUMN "F_TRANSACTION_V"."PL_BOOK_SEC_PC_2ND" IS 'P/L book sec PC for the second accounting framework #SCD: TMSDAT.TRANSGAINLOSS.PRLBOOKSECPC with accik -> acc = ''SECOND''';
   COMMENT ON COLUMN "F_TRANSACTION_V"."PL_BOOK_QC_2ND" IS 'P/L book QC for the second accounting framework #SCD: TMSDAT.TRANSGAINLOSS.PRLBOOKSECPC with accik -> acc = ''SECOND''';
   COMMENT ON COLUMN "F_TRANSACTION_V"."PL_COST_PC_2ND" IS 'P/L cost PC for the second accounting framework #SCD: TMSDAT.TRANSGAINLOSS.PRLCOSTCURPC + TMSDAT.TRANSGAINLOSS.PRLCOSTSECPC with accik -> acc = ''SECOND''';
   COMMENT ON COLUMN "F_TRANSACTION_V"."PL_COST_QC_2ND" IS 'P/L cost QC for the second accounting framework #SCD: TMSDAT.TRANSGAINLOSS.PRLCOSTSECPC with accik -> acc = ''SECOND''';
   COMMENT ON COLUMN "F_TRANSACTION_V"."BOOKED_CURRENT_VALUE_PC_2ND" IS 'Booked current value PC for the second accounting framework #SCD: TMSDAT.TRANSGAINLOSS.RECCURVALPC with accik -> acc = ''SECOND''';
   COMMENT ON COLUMN "F_TRANSACTION_V"."BOOKED_CURRENT_VALUE_QC_2ND" IS 'Booked current value QC for the second accounting framework #SCD: TMSDAT.TRANSGAINLOSS.RECCURVALQC with accik -> acc = ''SECOND''';
   COMMENT ON COLUMN "F_TRANSACTION_V"."PL_BOOK_PC_2ND" IS 'P/L book PC for the second accounting framework #SCD: TMSDAT.TRANSGAINLOSS.PRLBOOKCURPC + TMSDAT.TRANSGAINLOSS.PRLBOOKSECPC with accik -> acc = ''SECOND''';
   COMMENT ON COLUMN "F_TRANSACTION_V"."MIFID_DIRECT_COST_BUY" IS 'MiFID direct cost buy (For transaction types Buy, AllocBuyInt and AllocBuyExt this is One Off Max Entry (Security free code 174, tmsdat.securities.secfc204) times Payment amount PC (tmsdat.transmain.stlmamtpc), calculated in the view  dwh_edw_stg.stg_pre_transaction_v)';
   COMMENT ON COLUMN "F_TRANSACTION_V"."MIFID_DIRECT_COST_SELL" IS 'MiFID direct cost sell (For transaction types Sell, AllocSellInt and AllocSellExt this is One Off Max Exit (Security free code 175, tmsdat.securities.secfc205) times Payment amount PC (tmsdat.transmain.stlmamtpc), calculated in the view  dwh_edw_stg.stg_pre_transaction_v)';
   COMMENT ON COLUMN "F_TRANSACTION_V"."FREECOM" IS 'Free comment';
   COMMENT ON COLUMN "F_TRANSACTION_V"."DIMA_FUND_BUY_SELL_DIMA_FUND" IS 'DIMA fund buying or selling another DIMA fund''s fund certificate (special column created in dwh_dm_stg.transaction_va)';
   COMMENT ON COLUMN "F_TRANSACTION_V"."COMMENT_TO_BETS" IS 'Comments to BETS (source transmain.trafc19)';
   COMMENT ON COLUMN "F_TRANSACTION_V"."DISCOUNT_DUE_TO_MERGER" IS 'Transaction created as a copy in the fund merger process, the figures already exist in old funds (special column created in dwh_dm_stg.transaction_va)';
   COMMENT ON COLUMN "F_TRANSACTION_V"."LASTFILLTS" IS 'FI: Last Fill Timestamp #SCD: FNTALLOC.LASTFILLTS';
   COMMENT ON COLUMN "F_TRANSACTION_V"."TRADPLATFORM" IS 'Trading platform #SCD: FNTALLOC.TRADPLATFORM';
   COMMENT ON COLUMN "F_TRANSACTION_V"."FX_TYPE" IS 'DSFCTEXT8 in table TRANSSETTLE (Transaction free code 27)';
   COMMENT ON COLUMN "F_TRANSACTION_V"."DSFCTEXT10" IS 'DSFCTEXT10 in table TRANSSETTLE (Transaction free code 29)';
   COMMENT ON COLUMN "F_TRANSACTION_V"."PLACEMENT_ID" IS 'FNTPLCID in table FNTALLOC';
   COMMENT ON COLUMN "F_TRANSACTION_V"."UPFRONTFEEPCT" IS 'UPFRONTFEEPCT in table TRANSSPECINPVAL';
   COMMENT ON COLUMN "F_TRANSACTION_V"."BY_PASS_CTM" IS 'DSFC5 in table TRAFREECODESPM5';
   COMMENT ON COLUMN "F_TRANSACTION_V"."EXECUTION_MEDIUM" IS 'TRAFC42 in table TRAFREECODES42';
   COMMENT ON COLUMN "F_TRANSACTION_V"."TVTIC" IS 'TVTIC in table TRANSSETTLE';
   COMMENT ON COLUMN "F_TRANSACTION_V"."ISOTMEXEC" IS 'ISOTMEXEC in table TRANSSETTLE';
   COMMENT ON COLUMN "F_TRANSACTION_V"."D_COUNTERPART_CUSTODY_ID" IS 'Counterparty''s custody (join to d_custody_id) #SCD: tmsdat.transsettle.ctpcdyptr';
   COMMENT ON COLUMN "F_TRANSACTION_V"."CA_PAYM_AMOUNT" IS 'CA Paym. Amount SC DB (Transaction free code 40) #SCD: tmsdat.transmain.trafc40';
   COMMENT ON COLUMN "F_TRANSACTION_V"."D_ACCOUNTING_FRAMEWORK_ID" IS 'd_accounting_framework_id derived from #SCD: TMSDAT.TRANSMAIN.ACCFRAME Accounting framework';
   COMMENT ON COLUMN "F_TRANSACTION_V"."PAYMENT_AMOUNT_SC" IS '#SCD: TMSDAT.TRANSMAIN.STLMAMTSC Payment amount in settlement currency';
   COMMENT ON COLUMN "F_TRANSACTION_V"."D_CURRENCY_ID_QC" IS 'd_currency_id derived from #SCD: TMSDAT.TRANSMAIN.QUOCUR Quotation currency';
   COMMENT ON COLUMN "F_TRANSACTION_V"."INTEREST_DATE" IS '#SCD: TMSDAT.TRANSMAIN.INTBEGDATE Interest date';
   COMMENT ON COLUMN "F_TRANSACTION_V"."SECURITY_ADJUSTMENT_QC" IS '#SCD: TMSDAT.TRANSSPECINPVAL.REGSECQC Security adjustment QC';
   COMMENT ON COLUMN "F_TRANSACTION_V"."SECURITY_ADJUSTMENT_PC" IS '#SCD: TMSDAT.TRANSSPECINPVAL.REGSECPC Security adjustment PC';
   COMMENT ON COLUMN "F_TRANSACTION_V"."CURRENCY_ADJUSTMENT_PC" IS '#SCD: TMSDAT.TRANSSPECINPVAL.REGCURPC Currency adjustment PC';
   COMMENT ON COLUMN "F_TRANSACTION_V"."D_MARGIN_CLEARER_ID" IS 'Margin clearer';


  GRANT SELECT ON "F_TRANSACTION_V" TO "DWH_DM_READ";
  GRANT SELECT ON "F_TRANSACTION_V" TO "APP_EOY" WITH GRANT OPTION;
  GRANT SELECT ON "F_TRANSACTION_V" TO "APP_WAAM";
  GRANT SELECT ON "F_TRANSACTION_V" TO "APP_PMMB";
  GRANT MERGE VIEW ON "F_TRANSACTION_V" TO "APP_DR";
  GRANT FLASHBACK ON "F_TRANSACTION_V" TO "APP_DR";
  GRANT DEBUG ON "F_TRANSACTION_V" TO "APP_DR";
  GRANT QUERY REWRITE ON "F_TRANSACTION_V" TO "APP_DR";
  GRANT ON COMMIT REFRESH ON "F_TRANSACTION_V" TO "APP_DR";
  GRANT READ ON "F_TRANSACTION_V" TO "APP_DR";
  GRANT REFERENCES ON "F_TRANSACTION_V" TO "APP_DR";
  GRANT UPDATE ON "F_TRANSACTION_V" TO "APP_DR";
  GRANT SELECT ON "F_TRANSACTION_V" TO "APP_DR";
  GRANT INSERT ON "F_TRANSACTION_V" TO "APP_DR";
  GRANT DELETE ON "F_TRANSACTION_V" TO "APP_DR";
  GRANT SELECT ON "F_TRANSACTION_V" TO "APP_MIFID" WITH GRANT OPTION;
  GRANT SELECT ON "F_TRANSACTION_V" TO "ODI_CONNECT";
  GRANT SELECT ON "F_TRANSACTION_V" TO "APP_MAR";
  GRANT SELECT ON "F_TRANSACTION_V" TO "APP_EOY" WITH GRANT OPTION;
  GRANT SELECT ON "F_TRANSACTION_V" TO "QUOV";
  GRANT SELECT ON "F_TRANSACTION_V" TO "INT_REPORTING";
  GRANT SELECT ON "F_TRANSACTION_V" TO "APP_DIMA" WITH GRANT OPTION;
  GRANT SELECT ON "F_TRANSACTION_V" TO "APP_SAS";
  GRANT SELECT ON "F_TRANSACTION_V" TO "APP_AUTHORITY" WITH GRANT OPTION;
  GRANT SELECT ON "F_TRANSACTION_V" TO "APP_GRIP" WITH GRANT OPTION;
  GRANT SELECT ON "F_TRANSACTION_V" TO "APP_CR" WITH GRANT OPTION;
  GRANT SELECT ON "F_TRANSACTION_V" TO "APP_ESG";
