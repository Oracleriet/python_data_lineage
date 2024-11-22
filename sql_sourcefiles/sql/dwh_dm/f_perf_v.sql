
  CREATE OR REPLACE EDITIONABLE VIEW dwh_dm."F_PERF_V" ("DWH_CREATED_DATE", "DWH_CREATED_BY", "DWH_CHANGED_DATE", "DWH_CHANGED_BY", "DWH_BATCHID", "F_PERF_ID", "PERF_LOAD_CTRL_ID", "REPORT_CALCTYPE", "D_TIME_ID", "D_PORTFOLIO_ID", "D_PSEUDO_PORTFOLIO_ID", "D_CURRENCY_ID", "D_FUND_ID", "D_PERF_REPORT_ID", "D_PERF_REPORT_SPLIT_ID", "D_INSTRUMENT_ID", "D_CERTFICATE_ID", "D_MODEL_PORTFOLIO_ID", "D_BUSINESS_CLASS_LEVEL_2_ID", "D_BUSINESS_CLASS_LEVEL_4_ID", "D_BUSINESS_CLASS_LEVEL_5_ID", "D_SCD_INS_TYPE_ID", "D_ADVISOR_ID", "D_COUNTRY_ID", "PERFORMEXECNO", "L_PERFORMANCE_REPORT_HEAD_ID", "L_PERFORMANCE_REPORT_LINE_ID", "SRC_REF", "PERFORMANCE_REPORT_HEAD_SK", "PERFORMANCE_REPORT_LINE_SK", "ROW_CONTENT", "EDW_DATE", "WEIGHT_SOD_PF", "WEIGHT_SOD_BM", "WEIGHT_EOD_PF", "WEIGHT_EOD_BM", "WEIGHT_TOP_SOD_PF", "WEIGHT_TOP_SOD_BM", "WEIGHT_TOP_EOD_PF", "WEIGHT_TOP_EOD_BM", "WEIGHT_EOD_BM2", "WEIGHT_TOP_SOD_BM2", "WEIGHT_TOP_EOD_BM2", "LEV_EXP_WGT_TO_TOP_NODE_PF", "LEV_EXP_WGT_TO_TOP_NODE_BM", "LEV_EXP_WGT_TO_TOP_NODE_BM2", "REP_PERF_MARKET_VALUE_PC", "EXPOSURE_WEIGHT_TO_TOP_NODE_RC", "EXPOSURE_RC", "WEIGHT_SOD_BM2", "EXPOSUREWEIGHTRC", "INFO_RATIO", "JENSEN_ALPHA_BM", "JENSEN_ALPHA_PF", "PERF_DIRTY_VALUE_RC", "TRACK_ERROR", "NOMINAL", "PERF_MARKET_VALUE_PC", "PERF_DIRTY_VALUE_PC", "INCEPTION_DATE_MARKET_VALUE_RC", "TWR_PF_DAILY", "TWR_BM_DAILY", "TWR_BM2_DAILY", "BETA_BM_DAILY", "TWR2_BM_DAILY", "VOL_BM_DAILY", "TWR2_PF_DAILY", "VOL_PF_DAILY", "IR_BM_12M", "TE_BM_12M", "VOL_BM_12M", "TWR_PF_ACC", "TWR_PF_MTD", "TWR_PF_YTD", "TWR_PF_12M", "TWR_PF_3M", "TWR_PF_6M", "TWR2_PF_YTD", "TWR2_PF_MTD", "TWR2_PF_12M", "TWR2_PF_3M", "TWR2_PF_6M", "TWR2_PF_ACC", "CO_PF_10M", "CO_PF_11M", "CO_PF_12M", "CO_PF_1M", "CO_PF_2M", "CO_PF_3M", "CO_PF_4M", "CO_PF_5M", "CO_PF_6M", "CO_PF_7M", "CO_PF_8M", "CO_PF_9M", "CO_PF_ACC", "MWR_PF_3M", "MWR_PF_ACC", "MWR_PF_FYTD", "MWR_PF_MTD", "MWR_PF_YTD", "PERIOD_NET_CASHFLOW_1M", "PERIOD_NET_CASHFLOW_3M", "PERIOD_NET_CASHFLOW_FYTD", "PERIOD_NET_CASHFLOW_YTD", "PERIOD_RESULT_1M", "PERIOD_RESULT_3M", "PERIOD_RESULT_FYTD", "PERIOD_RESULT_YTD", "TWR_PF_FYTD", "TWR2_PF_FYTD", "MWR_PF_12M", "MWR_PF_6M", "VOL_PF_12M", "IRR_PF_FQTD", "IRR_PF_QTD", "TWR_BM_36M", "TWR_PF_36M", "TWR_PF_1M", "AVGW_BM_12M", "AVGW_BM_6M", "AVGW_BM_ACC", "AVGW_BM_FYTD", "AVGW_BM_MTD", "AVGW_BM_YTD", "SS_12M", "SS_3M", "SS_6M", "SS_ACC", "SS_FYTD", "SS_MTD", "SS_YTD", "AA_12M", "AA_3M", "AA_ACC", "AA_FYTD", "AA_MTD", "AA_YTD", "AVGW_PF_12M", "AVGW_PF_3M", "AVGW_PF_6M", "AVGW_PF_ACC", "AVGW_PF_FYTD", "AVGW_PF_MTD", "AVGW_PF_YTD", "ALPHA_52W", "ALPHA_52W_ANN", "ANN_BM_TWR_52W", "BETA_52W", "IR_52W", "SR_BM_52W", "TE_52W", "TWR_BM_52W", "VOL_BM_52W", "SR_PF_52W", "ANN_TWR_52W", "TWR_PF_52W", "TWR2_PF_1M", "VOL_PF_52W", "TWR2_BM2_DAILY", "VOL_BM2_DAILY", "IR_BM_3Y", "SR_BM_3Y", "TE_BM_3Y", "VOL_BM_3Y", "SR_PF_3Y", "VOL_PF_3Y", "ANTWR_PF_5Y", "DR_PF_3Y", "LR_PF_3Y", "PR_PF_3Y", "TWR_PF_3Y", "TWR_PF_5Y", "TWR_PF_7Y", "VOL_PF_MTD", "ALPHA_36M", "ANTWR_BM_5Y", "BETA_36M", "TE_BM_1M", "TWR_BM_1M", "ALPHA_BM_36M", "BETA_BM_36M", "CO_BM_5Y", "IR_BM_10Y", "IR_BM_52W", "R2_BM_36M", "SR_BM_10Y", "TE_BM_10Y", "TE_BM_52W", "TE_BM_5Y", "TWR_BM_120M", "TWR_BM_2W", "TWR_BM_60M", "VOL_BM_10Y", "VOL_BM_1Y", "VOL_BM_5Y", "AA_5Y", "SR_PF_10Y", "SR_PF_5Y", "TWR_PF_2W", "TWR2_PF_1W", "TWR2_PF_36M", "VOL_PF_10Y", "VOL_PF_1M", "VOL_PF_1Y", "VOL_PF_5Y", "VOL_PF_ACC", "TWR_PF_120M", "TWR_PF_60M", "TWR2_PF_120M", "TWR2_PF_60M", "IR_PF_MTD", "TWR_BM2_35M", "TWR_BM2_3Y", "TWR_BM2_59M", "TWR_BM2_5Y", "TWR_BM2_ACC", "TWR_BM2_MTD", "TWR_BM2_QTD", "TWR_BM2_YTD", "TWR_PF_1Y", "ALPHA_BM2_12M", "ALPHA_BM2_36M", "ALPHA_BM2_3Y", "ALPHA_BM2_5Y", "ALPHA_BM2_ACC", "ALPHA_BM2_YTD", "ANTWR_BM_2Y", "ANTWR_BM_3Y", "ANTWR_BM_7Y", "ANTWR_PF_2Y", "ANTWR_PF_3Y", "ANTWR_PF_7Y", "BETA_BM_12M", "BETA_BM2_12M", "BETA_BM2_36M", "BETA_BM2_3Y", "BETA_BM2_5Y", "BETA_BM2_ACC", "BETA_BM2_DAILY", "BETA_BM2_YTD", "DOWN_VOL_BM_1M", "DOWN_VOL_BM_3M", "DOWN_VOL_BM_ACC", "DOWN_VOL_BM_YTD", "DOWN_VOL_PF_1M", "DOWN_VOL_PF_3M", "DOWN_VOL_PF_ACC", "DOWN_VOL_PF_YTD", "IR_BM2_10Y", "IR_BM2_12M", "IR_BM2_3Y", "IR_BM2_52W", "IR_BM2_5Y", "IR_BM2_ACC", "IR_BM2_YTD", "MWR_PF_2Y", "MWR_PF_3Y", "MWR_PF_5Y", "R2_BM2_1Y", "R2_BM2_2Y", "R2_BM2_36M", "R2_BM2_3Y", "R2_BM2_5Y", "R2_BM2_ACC", "SORTINO_BM_1M", "SORTINO_BM_3M", "SORTINO_BM_ACC", "SORTINO_BM_YTD", "SORTINO_PF_1M", "SORTINO_PF_3M", "SORTINO_PF_ACC", "SORTINO_PF_YTD", "SR_BM_1M", "SR_BM_3M", "SR_BM_5Y", "SR_BM_ACC", "SR_BM_YTD", "SR_BM2_12M", "SR_BM2_3Y", "SR_BM2_5Y", "SR_BM2_ACC", "SR_BM2_YTD", "SR_PF_12M", "SR_PF_1M", "SR_PF_2Y", "SR_PF_3M", "SR_PF_ACC", "SR_PF_YTD", "TE_BM2_10Y", "TE_BM2_1Y", "TE_BM2_2Y", "TE_BM2_3Y", "TE_BM2_52W", "TE_BM2_5Y", "TE_BM2_ACC", "TWR_BM_1W", "TWR_BM2_120M", "TWR_BM2_12M", "TWR_BM2_1M", "TWR_BM2_36M", "TWR_BM2_60M", "TWR_BM2_7Y", "TWR_BM2_ACC_IDX", "TWR_BM3_ACC", "TWR_PF_1D", "TWR_PF_2Y", "VOL_BM_1M", "VOL_BM_3M", "VOL_BM_ACC", "VOL_BM_YTD", "VOL_BM2_10Y", "VOL_BM2_12M", "VOL_BM2_1Y", "VOL_BM2_3Y", "VOL_BM2_5Y", "VOL_BM2_ACC", "VOL_BM2_YTD", "VOL_PF_2Y", "VOL_PF_3M", "VOL_PF_YTD", "AA_6M", "AA_BM2_12M", "AA_BM2_1M", "AA_BM2_3Y", "AA_BM2_5Y", "AA_BM2_ACC", "AA_BM2_QTD", "AA_BM2_YTD", "AVGW_BM_3M", "CO_BM2_12M", "CO_BM2_1M", "CO_BM2_3Y", "CO_BM2_5Y", "CO_BM2_ACC", "CO_BM2_QTD", "CO_BM2_YTD", "CO_PF_36M", "CO_PF_3Y", "CO_PF_5Y", "CO_PF_YTD", "CX_BM2_1M", "CX_BM2_1Y", "CX_BM2_3M", "CX_BM2_3Y", "CX_BM2_5Y", "CX_BM2_ACC", "CX_BM2_YTD", "MI_BM2_1M", "MI_BM2_1Y", "MI_BM2_3M", "MI_BM2_3Y", "MI_BM2_5Y", "MI_BM2_ACC", "MI_BM2_YTD", "SS_BM2_12M", "SS_BM2_1M", "SS_BM2_3Y", "SS_BM2_5Y", "SS_BM2_ACC", "SS_BM2_QTD", "SS_BM2_YTD", "TE_BM_ACC", "TWR2_PF_10M", "TWR2_PF_11M", "TWR2_PF_2M", "TWR2_PF_4M", "TWR2_PF_5M", "TWR2_PF_6MD", "TWR2_PF_7M", "TWR2_PF_8M", "TWR2_PF_9M", "TWR2_PF_QTD", "TWR_BM2_2Y", "TWR_BM2_3M", "TWR_BM_10M", "TWR_BM_11M", "TWR_BM_12M", "TWR_BM_1Y", "TWR_BM_2M", "TWR_BM_3M", "TWR_BM_4M", "TWR_BM_5M", "TWR_BM_6M", "TWR_BM_7M", "TWR_BM_8M", "TWR_BM_9M", "TWR_BM_ACC", "TWR_BM_FYTD", "TWR_BM_IDX_1M", "TWR_BM_IDX_ACC", "TWR_BM_MTD", "TWR_BM_QTD", "TWR_BM_YTD", "TWR_PF_10M", "TWR_PF_11M", "TWR_PF_2M", "TWR_PF_4M", "TWR_PF_5M", "TWR_PF_7M", "TWR_PF_8M", "TWR_PF_9M", "TWR_PF_IDX_1M", "TWR_PF_IDX_ACC", "TWR_PF_QTD", "VOL_BM_MTD", "TE_BM_3M", "IR_BM_1M", "IR_BM_3M", "IR_BM_5Y", "CO_BM_ACC", "CO_BM_1M", "CO_BM_3M", "CO_BM_YTD", "DOWN_VOL_PF_52W", "DOWN_VOL_BM_52W", "DOWN_VOL_PF_3Y", "DOWN_VOL_PF_5Y", "DOWN_VOL_PF_10Y", "DOWN_VOL_BM_3Y", "DOWN_VOL_BM_5Y", "DOWN_VOL_BM_10Y", "SORTINO_PF_52W", "SORTINO_BM_52W", "SORTINO_PF_3Y", "SORTINO_PF_5Y", "SORTINO_PF_10Y", "SORTINO_BM_3Y", "SORTINO_BM_5Y", "SORTINO_BM_10Y", "NET_CASH_FLOW_RC", "CO_RETURN_TO_TOP_NODE_RC", "TWR_PF_1W", "TWR2_PF_3Y", "TWR2_PF_5Y", "TWR2_PF_10Y", "TWR_BM_5Y", "TWR_BM_10Y", "TWR_PF_10Y") AS select perf.dwh_created_date,
       perf.dwh_created_by,
       perf.dwh_changed_date,
       perf.dwh_changed_by,
       perf.dwh_batchid,
       perf.f_perf_id,
       perf.perf_load_ctrl_id,
       perf.report_calctype,
       perf.d_time_id,
       perf.d_portfolio_id,
       perf.d_pseudo_portfolio_id,
       perf.d_currency_id,
       perf.d_fund_id,
       perf.d_perf_report_id,
       perf.d_perf_report_split_id,
       perf.d_instrument_id,
       perf.d_certficate_id,
       perf.d_model_portfolio_id,
       perf.d_business_class_level_2_id,
       perf.d_business_class_level_4_id,
       perf.d_business_class_level_5_id,
       perf.d_scd_ins_type_id,
       perf.d_advisor_id,
       perf.d_country_id,
       perf.performexecno,
       perf.l_performance_report_head_id,
       perf.l_performance_report_line_id,
       perf.src_ref,
       perf.performance_report_head_sk,
       perf.performance_report_line_sk,
       perf.row_content,
       perf.edw_date,
       perf.weight_sod_pf,
       perf.weight_sod_bm,
       perf.weight_eod_pf,
       perf.weight_eod_bm,
       perf.weight_top_sod_pf,
       perf.weight_top_sod_bm,
       perf.weight_top_eod_pf,
       perf.weight_top_eod_bm,
       perf.weight_eod_bm2,
       perf.weight_top_sod_bm2,
       perf.weight_top_eod_bm2,
       perf.lev_exp_wgt_to_top_node_pf,
       perf.lev_exp_wgt_to_top_node_bm,
       perf.lev_exp_wgt_to_top_node_bm2,
       perf.rep_perf_market_value_pc,
       perf.exposure_weight_to_top_node_rc,
       perf.exposure_rc,
       perf.weight_sod_bm2,
       perf.exposureweightrc,
       perf.info_ratio,
       perf.jensen_alpha_bm,
       perf.jensen_alpha_pf,
       perf.perf_dirty_value_rc,
       perf.track_error,
       perf.nominal,
       perf.perf_market_value_pc,
       perf.perf_dirty_value_pc,
       perf.inception_date_market_value_rc,
       perf.twr_pf_daily,
       perf.twr_bm_daily,
       perf.twr_bm2_daily,
       perf.beta_bm_daily,
       perf.twr2_bm_daily,
       perf.vol_bm_daily,
       perf.twr2_pf_daily,
       perf.vol_pf_daily,
       perf.ir_bm_12m,
       perf.te_bm_12m,
       perf.vol_bm_12m,
       perf.twr_pf_acc,
       perf.twr_pf_mtd,
       perf.twr_pf_ytd,
       perf.twr_pf_12m,
       perf.twr_pf_3m,
       perf.twr_pf_6m,
       perf.twr2_pf_ytd,
       perf.twr2_pf_mtd,
       perf.twr2_pf_12m,
       perf.twr2_pf_3m,
       perf.twr2_pf_6m,
       perf.twr2_pf_acc,
       perf.co_pf_10m,
       perf.co_pf_11m,
       perf.co_pf_12m,
       perf.co_pf_1m,
       perf.co_pf_2m,
       perf.co_pf_3m,
       perf.co_pf_4m,
       perf.co_pf_5m,
       perf.co_pf_6m,
       perf.co_pf_7m,
       perf.co_pf_8m,
       perf.co_pf_9m,
       perf.co_pf_acc,
       perf.mwr_pf_3m,
       perf.mwr_pf_acc,
       perf.mwr_pf_fytd,
       perf.mwr_pf_mtd,
       perf.mwr_pf_ytd,
       perf.period_net_cashflow_1m,
       perf.period_net_cashflow_3m,
       perf.period_net_cashflow_fytd,
       perf.period_net_cashflow_ytd,
       perf.period_result_1m,
       perf.period_result_3m,
       perf.period_result_fytd,
       perf.period_result_ytd,
       perf.twr_pf_fytd,
       perf.twr2_pf_fytd,
       perf.mwr_pf_12m,
       perf.mwr_pf_6m,
       perf.vol_pf_12m,
       perf.irr_pf_fqtd,
       perf.irr_pf_qtd,
       perf.twr_bm_36m,
       perf.twr_pf_36m,
       perf.twr_pf_1m,
       perf.avgw_bm_12m,
       perf.avgw_bm_6m,
       perf.avgw_bm_acc,
       perf.avgw_bm_fytd,
       perf.avgw_bm_mtd,
       perf.avgw_bm_ytd,
       perf.ss_12m,
       perf.ss_3m,
       perf.ss_6m,
       perf.ss_acc,
       perf.ss_fytd,
       perf.ss_mtd,
       perf.ss_ytd,
       perf.aa_12m,
       perf.aa_3m,
       perf.aa_acc,
       perf.aa_fytd,
       perf.aa_mtd,
       perf.aa_ytd,
       perf.avgw_pf_12m,
       perf.avgw_pf_3m,
       perf.avgw_pf_6m,
       perf.avgw_pf_acc,
       perf.avgw_pf_fytd,
       perf.avgw_pf_mtd,
       perf.avgw_pf_ytd,
       perf.alpha_52w,
       perf.alpha_52w_ann,
       perf.ann_bm_twr_52w,
       perf.beta_52w,
       perf.ir_52w,
       perf.sr_bm_52w,
       perf.te_52w,
       perf.twr_bm_52w,
       perf.vol_bm_52w,
       perf.sr_pf_52w,
       perf.ann_twr_52w,
       perf.twr_pf_52w,
       perf.twr2_pf_1m,
       perf.vol_pf_52w,
       perf.twr2_bm2_daily,
       perf.vol_bm2_daily,
       perf.ir_bm_3y,
       perf.sr_bm_3y,
       perf.te_bm_3y,
       perf.vol_bm_3y,
       perf.sr_pf_3y,
       perf.vol_pf_3y,
       perf.antwr_pf_5y,
       perf.dr_pf_3y,
       perf.lr_pf_3y,
       perf.pr_pf_3y,
       perf.twr_pf_3y,
       perf.twr_pf_5y,
       perf.twr_pf_7y,
       perf.vol_pf_mtd,
       perf.alpha_36m,
       perf.antwr_bm_5y,
       perf.beta_36m,
       perf.te_bm_1m,
       perf.twr_bm_1m,
       perf.alpha_bm_36m,
       perf.beta_bm_36m,
       perf.co_bm_5y,
       perf.ir_bm_10y,
       perf.ir_bm_52w,
       perf.r2_bm_36m,
       perf.sr_bm_10y,
       perf.te_bm_10y,
       perf.te_bm_52w,
       perf.te_bm_5y,
       perf.twr_bm_120m,
       perf.twr_bm_2w,
       perf.twr_bm_60m,
       perf.vol_bm_10y,
       perf.vol_bm_1y,
       perf.vol_bm_5y,
       perf.aa_5y,
       perf.sr_pf_10y,
       perf.sr_pf_5y,
       perf.twr_pf_2w,
       perf.twr2_pf_1w,
       perf.twr2_pf_36m,
       perf.vol_pf_10y,
       perf.vol_pf_1m,
       perf.vol_pf_1y,
       perf.vol_pf_5y,
       perf.vol_pf_acc,
       perf.twr_pf_120m,
       perf.twr_pf_60m,
       perf.twr2_pf_120m,
       perf.twr2_pf_60m,
       perf.ir_pf_mtd,
       perf.twr_bm2_35m,
       perf.twr_bm2_3y,
       perf.twr_bm2_59m,
       perf.twr_bm2_5y,
       perf.twr_bm2_acc,
       perf.twr_bm2_mtd,
       perf.twr_bm2_qtd,
       perf.twr_bm2_ytd,
       perf.twr_pf_1y,
       perf.alpha_bm2_12m,
       perf.alpha_bm2_36m,
       perf.alpha_bm2_3y,
       perf.alpha_bm2_5y,
       perf.alpha_bm2_acc,
       perf.alpha_bm2_ytd,
       perf.antwr_bm_2y,
       perf.antwr_bm_3y,
       perf.antwr_bm_7y,
       perf.antwr_pf_2y,
       perf.antwr_pf_3y,
       perf.antwr_pf_7y,
       perf.beta_bm_12m,
       perf.beta_bm2_12m,
       perf.beta_bm2_36m,
       perf.beta_bm2_3y,
       perf.beta_bm2_5y,
       perf.beta_bm2_acc,
       perf.beta_bm2_daily,
       perf.beta_bm2_ytd,
       perf.down_vol_bm_1m,
       perf.down_vol_bm_3m,
       perf.down_vol_bm_acc,
       perf.down_vol_bm_ytd,
       perf.down_vol_pf_1m,
       perf.down_vol_pf_3m,
       perf.down_vol_pf_acc,
       perf.down_vol_pf_ytd,
       perf.ir_bm2_10y,
       perf.ir_bm2_12m,
       perf.ir_bm2_3y,
       perf.ir_bm2_52w,
       perf.ir_bm2_5y,
       perf.ir_bm2_acc,
       perf.ir_bm2_ytd,
       perf.mwr_pf_2y,
       perf.mwr_pf_3y,
       perf.mwr_pf_5y,
       perf.r2_bm2_1y,
       perf.r2_bm2_2y,
       perf.r2_bm2_36m,
       perf.r2_bm2_3y,
       perf.r2_bm2_5y,
       perf.r2_bm2_acc,
       perf.sortino_bm_1m,
       perf.sortino_bm_3m,
       perf.sortino_bm_acc,
       perf.sortino_bm_ytd,
       perf.sortino_pf_1m,
       perf.sortino_pf_3m,
       perf.sortino_pf_acc,
       perf.sortino_pf_ytd,
       perf.sr_bm_1m,
       perf.sr_bm_3m,
       perf.sr_bm_5y,
       perf.sr_bm_acc,
       perf.sr_bm_ytd,
       perf.sr_bm2_12m,
       perf.sr_bm2_3y,
       perf.sr_bm2_5y,
       perf.sr_bm2_acc,
       perf.sr_bm2_ytd,
       perf.sr_pf_12m,
       perf.sr_pf_1m,
       perf.sr_pf_2y,
       perf.sr_pf_3m,
       perf.sr_pf_acc,
       perf.sr_pf_ytd,
       perf.te_bm2_10y,
       perf.te_bm2_1y,
       perf.te_bm2_2y,
       perf.te_bm2_3y,
       perf.te_bm2_52w,
       perf.te_bm2_5y,
       perf.te_bm2_acc,
       perf.twr_bm_1w,
       perf.twr_bm2_120m,
       perf.twr_bm2_12m,
       perf.twr_bm2_1m,
       perf.twr_bm2_36m,
       perf.twr_bm2_60m,
       perf.twr_bm2_7y,
       perf.twr_bm2_acc_idx,
       perf.twr_bm3_acc,
       perf.twr_pf_1d,
       perf.twr_pf_2y,
       perf.vol_bm_1m,
       perf.vol_bm_3m,
       perf.vol_bm_acc,
       perf.vol_bm_ytd,
       perf.vol_bm2_10y,
       perf.vol_bm2_12m,
       perf.vol_bm2_1y,
       perf.vol_bm2_3y,
       perf.vol_bm2_5y,
       perf.vol_bm2_acc,
       perf.vol_bm2_ytd,
       perf.vol_pf_2y,
       perf.vol_pf_3m,
       perf.vol_pf_ytd,
       perf.aa_6m,
       perf.aa_bm2_12m,
       perf.aa_bm2_1m,
       perf.aa_bm2_3y,
       perf.aa_bm2_5y,
       perf.aa_bm2_acc,
       perf.aa_bm2_qtd,
       perf.aa_bm2_ytd,
       perf.avgw_bm_3m,
       perf.co_bm2_12m,
       perf.co_bm2_1m,
       perf.co_bm2_3y,
       perf.co_bm2_5y,
       perf.co_bm2_acc,
       perf.co_bm2_qtd,
       perf.co_bm2_ytd,
       perf.co_pf_36m,
       perf.co_pf_3y,
       perf.co_pf_5y,
       perf.co_pf_ytd,
       perf.cx_bm2_1m,
       perf.cx_bm2_1y,
       perf.cx_bm2_3m,
       perf.cx_bm2_3y,
       perf.cx_bm2_5y,
       perf.cx_bm2_acc,
       perf.cx_bm2_ytd,
       perf.mi_bm2_1m,
       perf.mi_bm2_1y,
       perf.mi_bm2_3m,
       perf.mi_bm2_3y,
       perf.mi_bm2_5y,
       perf.mi_bm2_acc,
       perf.mi_bm2_ytd,
       perf.ss_bm2_12m,
       perf.ss_bm2_1m,
       perf.ss_bm2_3y,
       perf.ss_bm2_5y,
       perf.ss_bm2_acc,
       perf.ss_bm2_qtd,
       perf.ss_bm2_ytd,
       perf.te_bm_acc,
       perf.twr2_pf_10m,
       perf.twr2_pf_11m,
       perf.twr2_pf_2m,
       perf.twr2_pf_4m,
       perf.twr2_pf_5m,
       perf.twr2_pf_6md,
       perf.twr2_pf_7m,
       perf.twr2_pf_8m,
       perf.twr2_pf_9m,
       perf.twr2_pf_qtd,
       perf.twr_bm2_2y,
       perf.twr_bm2_3m,
       perf.twr_bm_10m,
       perf.twr_bm_11m,
       perf.twr_bm_12m,
       perf.twr_bm_1y,
       perf.twr_bm_2m,
       perf.twr_bm_3m,
       perf.twr_bm_4m,
       perf.twr_bm_5m,
       perf.twr_bm_6m,
       perf.twr_bm_7m,
       perf.twr_bm_8m,
       perf.twr_bm_9m,
       perf.twr_bm_acc,
       perf.twr_bm_fytd,
       perf.twr_bm_idx_1m,
       perf.twr_bm_idx_acc,
       perf.twr_bm_mtd,
       perf.twr_bm_qtd,
       perf.twr_bm_ytd,
       perf.twr_pf_10m,
       perf.twr_pf_11m,
       perf.twr_pf_2m,
       perf.twr_pf_4m,
       perf.twr_pf_5m,
       perf.twr_pf_7m,
       perf.twr_pf_8m,
       perf.twr_pf_9m,
       perf.twr_pf_idx_1m,
       perf.twr_pf_idx_acc,
       perf.twr_pf_qtd,
       perf.vol_bm_mtd,
       perf.te_bm_3m,
       perf.ir_bm_1m,
       perf.ir_bm_3m,
       perf.ir_bm_5y,
       perf.co_bm_acc,
       perf.co_bm_1m,
       perf.co_bm_3m,
       perf.co_bm_ytd,
       perf.down_vol_pf_52w,
       perf.down_vol_bm_52w,
       perf.down_vol_pf_3y,
       perf.down_vol_pf_5y,
       perf.down_vol_pf_10y,
       perf.down_vol_bm_3y,
       perf.down_vol_bm_5y,
       perf.down_vol_bm_10y,
       perf.sortino_pf_52w,
       perf.sortino_bm_52w,
       perf.sortino_pf_3y,
       perf.sortino_pf_5y,
       perf.sortino_pf_10y,
       perf.sortino_bm_3y,
       perf.sortino_bm_5y,
       perf.sortino_bm_10y,
       perf.net_cash_flow_rc,
       perf.co_return_to_top_node_rc,
       perf.twr_pf_1w,
       perf.twr2_pf_3y,
       perf.twr2_pf_5y,
       perf.twr2_pf_10y,
       perf.twr_bm_5y,
       perf.twr_bm_10y,
       perf.twr_pf_10y
from f_perf perf
where 1=1;

   COMMENT ON COLUMN "F_PERF_V"."DWH_BATCHID" IS 'DWH batchid for the staging mapping DWH_DM_STG.MAP_PERF_2. Used for identifying which rows might be obsolete';
   COMMENT ON COLUMN "F_PERF_V"."PERF_LOAD_CTRL_ID" IS 'Primary key, sequence generated';
   COMMENT ON COLUMN "F_PERF_V"."REPORT_CALCTYPE" IS 'Report head calc type';
   COMMENT ON COLUMN "F_PERF_V"."D_TIME_ID" IS 'Time ID';
   COMMENT ON COLUMN "F_PERF_V"."D_PORTFOLIO_ID" IS 'Portolio ID';
   COMMENT ON COLUMN "F_PERF_V"."D_CURRENCY_ID" IS 'Primary key on the table D_CURRENCY (sequence generated surogate key)';
   COMMENT ON COLUMN "F_PERF_V"."D_FUND_ID" IS 'Fund ID';
   COMMENT ON COLUMN "F_PERF_V"."D_INSTRUMENT_ID" IS 'Primary key on the table D_INSTRUMENT (sequence generated surogate key)';
   COMMENT ON COLUMN "F_PERF_V"."D_MODEL_PORTFOLIO_ID" IS 'Primary key on the table D_MODEL_PORTFOLIO (sequence generated surogate key)';
   COMMENT ON COLUMN "F_PERF_V"."PERFORMEXECNO" IS 'Performance Execution No. #SCD: tmsdat.perfreplog.performexecno';
   COMMENT ON COLUMN "F_PERF_V"."L_PERFORMANCE_REPORT_HEAD_ID" IS 'Performance report head ID';
   COMMENT ON COLUMN "F_PERF_V"."L_PERFORMANCE_REPORT_LINE_ID" IS 'Performance report line ID';
   COMMENT ON COLUMN "F_PERF_V"."SRC_REF" IS 'Source reference #SCD perfrep.perfrepik';
   COMMENT ON COLUMN "F_PERF_V"."PERFORMANCE_REPORT_HEAD_SK" IS 'Performance report head source key #SCD concatanation of perfrepdefik,repcurik,todate,topsplitik,porik,calcsegik,fundik,fundclassik';
   COMMENT ON COLUMN "F_PERF_V"."PERFORMANCE_REPORT_LINE_SK" IS 'Performance report line source key #SCD concatanation of perfrepdefik,perfmeascalcik,perfsplitik,perfaggrkey1,perfaggrkey2,perfaggrkey3,perfaggrkey4,perfaggrkey5';
   COMMENT ON COLUMN "F_PERF_V"."ROW_CONTENT" IS 'Row content (portfolio, benchmark or mixed)';
   COMMENT ON COLUMN "F_PERF_V"."EDW_DATE" IS 'Date and time for load to EDW';
   COMMENT ON COLUMN "F_PERF_V"."WEIGHT_SOD_PF" IS 'Weight SOD RC portfolio #SCD perfrep.weightsodrc';
   COMMENT ON COLUMN "F_PERF_V"."WEIGHT_SOD_BM" IS 'Weight SOD RC benchmark #SCD perfrep.weightsodrc';
   COMMENT ON COLUMN "F_PERF_V"."WEIGHT_EOD_PF" IS 'Weight EOD RC #SCD perfrep.weighteodrc';
   COMMENT ON COLUMN "F_PERF_V"."WEIGHT_EOD_BM" IS 'Weight EOD RC benchmark #SCD perfrep.weighteodrc';
   COMMENT ON COLUMN "F_PERF_V"."WEIGHT_TOP_SOD_PF" IS 'Weight to top node SOD RC portfolio #SCD perfrep.weighttopsodrc';
   COMMENT ON COLUMN "F_PERF_V"."WEIGHT_TOP_SOD_BM" IS 'Weight to top node SOD RC benchmark #SCD perfrep.weighttopsodrc';
   COMMENT ON COLUMN "F_PERF_V"."WEIGHT_TOP_EOD_PF" IS 'Weight to top node EOD RC portfolio #SCD perfrep.weighttopeodrc';
   COMMENT ON COLUMN "F_PERF_V"."WEIGHT_TOP_EOD_BM" IS 'Weight to top node EOD RC benchmark #SCD perfrep.weighttopeodrc';
   COMMENT ON COLUMN "F_PERF_V"."WEIGHT_EOD_BM2" IS 'Weight EOD RC benchmark 2 #SCD perfrep.weighteodrc';
   COMMENT ON COLUMN "F_PERF_V"."WEIGHT_TOP_SOD_BM2" IS 'Weight to top node SOD RC benchmark 2 #SCD perfrep.weighttopsodrc';
   COMMENT ON COLUMN "F_PERF_V"."WEIGHT_TOP_EOD_BM2" IS 'Weight to top node EOD RC benchmark 2 #SCD perfrep.weighttopeodrc';
   COMMENT ON COLUMN "F_PERF_V"."LEV_EXP_WGT_TO_TOP_NODE_PF" IS 'Leverage exposure weight to top node RC #SCD: tmsdat.perfrep.levexposureweighttoprc (on portfolio level)';
   COMMENT ON COLUMN "F_PERF_V"."LEV_EXP_WGT_TO_TOP_NODE_BM" IS 'Leverage exposure weight to top node RC #SCD: tmsdat.perfrep.levexposureweighttoprc (on benchmark level)';
   COMMENT ON COLUMN "F_PERF_V"."REP_PERF_MARKET_VALUE_PC" IS 'Reporing market value PC (column defined in dwh_edw_stg.stg_perfreport_pb1line_v)';
   COMMENT ON COLUMN "F_PERF_V"."EXPOSURE_WEIGHT_TO_TOP_NODE_RC" IS 'Exposure weight to top node RC';
   COMMENT ON COLUMN "F_PERF_V"."EXPOSURE_RC" IS 'Exposure RC';
   COMMENT ON COLUMN "F_PERF_V"."WEIGHT_SOD_BM2" IS 'Weight SOD RC benchmark 2 #SCD perfrep.weightsodrc';
   COMMENT ON COLUMN "F_PERF_V"."EXPOSUREWEIGHTRC" IS 'Exposure weight RC #SCD: tmsdat.perfrep.exposureweightrc';
   COMMENT ON COLUMN "F_PERF_V"."INFO_RATIO" IS 'Information ratio RC #SCD: tmsdat.perfrep.inforatiorc';
   COMMENT ON COLUMN "F_PERF_V"."JENSEN_ALPHA_BM" IS 'Jensen''s alpha benchmark #SCD: tmsdat.perfrep.alpharc  where tmsdat.perfrep.perfaggrpb = 1';
   COMMENT ON COLUMN "F_PERF_V"."JENSEN_ALPHA_PF" IS 'Jensen''s alpha portfolio #SCD: tmsdat.perfrep.alpharc  where tmsdat.perfrep.perfaggrpb = 0';
   COMMENT ON COLUMN "F_PERF_V"."PERF_DIRTY_VALUE_RC" IS 'Dirty value RC #SCD: tmsdat.perfrep.dirtyvalrc';
   COMMENT ON COLUMN "F_PERF_V"."TRACK_ERROR" IS 'Tracking error RC #SCD: tmsdat.perfrep.trackerrorrc';
   COMMENT ON COLUMN "F_PERF_V"."NOMINAL" IS 'Nominal';
   COMMENT ON COLUMN "F_PERF_V"."PERF_MARKET_VALUE_PC" IS 'Market value PC #SCD perfrep.perfmarkvalpc';
   COMMENT ON COLUMN "F_PERF_V"."PERF_DIRTY_VALUE_PC" IS 'Performance Dirty value (does not match portfolio calculations) #SCD perfrep.dirtyvalpc ';
   COMMENT ON COLUMN "F_PERF_V"."INCEPTION_DATE_MARKET_VALUE_RC" IS 'Inception date market value #SCD perfrep.perfincepmarkvalrc';
   COMMENT ON COLUMN "F_PERF_V"."TWR_PF_DAILY" IS 'TWR daily portfolio #SCD perfrep.perftwirc';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM_DAILY" IS 'TWR daily benchmark #SCD perfrep.perftwirc';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM2_DAILY" IS 'TWR daily benchmark 2 #SCD perfrep.perftwirc';
   COMMENT ON COLUMN "F_PERF_V"."BETA_BM_DAILY" IS 'Beta, benchmark, daily';
   COMMENT ON COLUMN "F_PERF_V"."TWR2_BM_DAILY" IS 'Time Weighted Return 2, benchmark, daily';
   COMMENT ON COLUMN "F_PERF_V"."VOL_BM_DAILY" IS 'Volatility, benchmark, daily';
   COMMENT ON COLUMN "F_PERF_V"."TWR2_PF_DAILY" IS 'Time Weighted Return 2, portfolio, daily';
   COMMENT ON COLUMN "F_PERF_V"."VOL_PF_DAILY" IS 'Volatility, portfolio, daily';
   COMMENT ON COLUMN "F_PERF_V"."IR_BM_12M" IS 'Information ratio, benchmark 12 months';
   COMMENT ON COLUMN "F_PERF_V"."TE_BM_12M" IS 'Tracking Error, benchmark 12 months';
   COMMENT ON COLUMN "F_PERF_V"."VOL_BM_12M" IS 'Volatility, benchmark 12 months';
   COMMENT ON COLUMN "F_PERF_V"."TWR_PF_ACC" IS 'Time Weighted Return, portfolio accumulated';
   COMMENT ON COLUMN "F_PERF_V"."TWR_PF_MTD" IS 'Time Weighted Return, portfolio month-to-date';
   COMMENT ON COLUMN "F_PERF_V"."TWR_PF_YTD" IS 'Time Weighted Return, portfolio year-to-date';
   COMMENT ON COLUMN "F_PERF_V"."TWR_PF_12M" IS 'Time Weighted Return, portfolio 12 months';
   COMMENT ON COLUMN "F_PERF_V"."TWR_PF_3M" IS 'Time Weighted Return, portfolio 3 months';
   COMMENT ON COLUMN "F_PERF_V"."TWR_PF_6M" IS 'Time Weighted Return, portfolio 6 months';
   COMMENT ON COLUMN "F_PERF_V"."TWR2_PF_YTD" IS 'Time Weighted Return 2, portfolio year-to-date';
   COMMENT ON COLUMN "F_PERF_V"."TWR2_PF_MTD" IS 'Time Weighted Return 2, portfolio month-to-date';
   COMMENT ON COLUMN "F_PERF_V"."TWR2_PF_12M" IS 'Time Weighted Return 2, portfolio 12 months';
   COMMENT ON COLUMN "F_PERF_V"."TWR2_PF_3M" IS 'Time Weighted Return 2, portfolio 3 months';
   COMMENT ON COLUMN "F_PERF_V"."TWR2_PF_6M" IS 'Time Weighted Return 2, portfolio 6 months';
   COMMENT ON COLUMN "F_PERF_V"."TWR2_PF_ACC" IS 'Time Weighted Return 2, portfolio accumulated';
   COMMENT ON COLUMN "F_PERF_V"."CO_PF_10M" IS 'Contribution, portfolio 10 months';
   COMMENT ON COLUMN "F_PERF_V"."CO_PF_11M" IS 'Contribution, portfolio 11 months';
   COMMENT ON COLUMN "F_PERF_V"."CO_PF_12M" IS 'Contribution, portfolio 12 months';
   COMMENT ON COLUMN "F_PERF_V"."CO_PF_1M" IS 'Contribution, portfolio 1 month';
   COMMENT ON COLUMN "F_PERF_V"."CO_PF_2M" IS 'Contribution, portfolio 2 months';
   COMMENT ON COLUMN "F_PERF_V"."CO_PF_3M" IS 'Contribution, portfolio 3 months';
   COMMENT ON COLUMN "F_PERF_V"."CO_PF_4M" IS 'Contribution, portfolio 4 months';
   COMMENT ON COLUMN "F_PERF_V"."CO_PF_5M" IS 'Contribution, portfolio 5 months';
   COMMENT ON COLUMN "F_PERF_V"."CO_PF_6M" IS 'Contribution, portfolio 6 months';
   COMMENT ON COLUMN "F_PERF_V"."CO_PF_7M" IS 'Contribution, portfolio 7 months';
   COMMENT ON COLUMN "F_PERF_V"."CO_PF_8M" IS 'Contribution, portfolio 8 months';
   COMMENT ON COLUMN "F_PERF_V"."CO_PF_9M" IS 'Contribution, portfolio 9 months';
   COMMENT ON COLUMN "F_PERF_V"."CO_PF_ACC" IS 'Contribution, portfolio accumulated';
   COMMENT ON COLUMN "F_PERF_V"."MWR_PF_3M" IS 'Money Weighted Return (aka IRR), portfolio 3 months';
   COMMENT ON COLUMN "F_PERF_V"."MWR_PF_ACC" IS 'Money Weighted Return (aka IRR), portfolio accumulated';
   COMMENT ON COLUMN "F_PERF_V"."MWR_PF_FYTD" IS 'Money Weighted Return (aka IRR), portfolio financial year to date';
   COMMENT ON COLUMN "F_PERF_V"."MWR_PF_MTD" IS 'Money Weighted Return (aka IRR), portfolio month to date';
   COMMENT ON COLUMN "F_PERF_V"."MWR_PF_YTD" IS 'Money Weighted Return (aka IRR), portfolio year to date';
   COMMENT ON COLUMN "F_PERF_V"."PERIOD_NET_CASHFLOW_1M" IS 'Period net cash flow 1 month';
   COMMENT ON COLUMN "F_PERF_V"."PERIOD_NET_CASHFLOW_3M" IS 'Period net cash flow 3 months';
   COMMENT ON COLUMN "F_PERF_V"."PERIOD_NET_CASHFLOW_FYTD" IS 'Period net cash flow Financial year to date';
   COMMENT ON COLUMN "F_PERF_V"."PERIOD_NET_CASHFLOW_YTD" IS 'Period net cash flow year to date';
   COMMENT ON COLUMN "F_PERF_V"."PERIOD_RESULT_1M" IS 'Perfiod result, 1 month (afkast i kr)';
   COMMENT ON COLUMN "F_PERF_V"."PERIOD_RESULT_3M" IS 'Period, result 3 months (afkast i kr)';
   COMMENT ON COLUMN "F_PERF_V"."PERIOD_RESULT_FYTD" IS 'Period result, Financial year to date (afkast i kr)';
   COMMENT ON COLUMN "F_PERF_V"."PERIOD_RESULT_YTD" IS 'Period result, year to date (afkast i kr)';
   COMMENT ON COLUMN "F_PERF_V"."TWR_PF_FYTD" IS 'Time Weighted Return, portfolio financial-year-to-date';
   COMMENT ON COLUMN "F_PERF_V"."TWR2_PF_FYTD" IS 'Time Weighted Return 2, portfolio  financial-year-to-date';
   COMMENT ON COLUMN "F_PERF_V"."MWR_PF_12M" IS 'Money Weighted Return (aka IRR), portfolio 12 months';
   COMMENT ON COLUMN "F_PERF_V"."MWR_PF_6M" IS 'Money Weighted Return (aka IRR), portfolio 6 months';
   COMMENT ON COLUMN "F_PERF_V"."VOL_PF_12M" IS 'Volatility, portfolio 12 months';
   COMMENT ON COLUMN "F_PERF_V"."IRR_PF_FQTD" IS 'IRR, portfolio 3 months';
   COMMENT ON COLUMN "F_PERF_V"."IRR_PF_QTD" IS 'IRR, portfolio QTD';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM_36M" IS 'Time Weighted Return, benchmark 36 months';
   COMMENT ON COLUMN "F_PERF_V"."TWR_PF_36M" IS 'Time Weighted Return, portfolio 36 months';
   COMMENT ON COLUMN "F_PERF_V"."TWR_PF_1M" IS 'Time Weighted Return, portfolio 1 month';
   COMMENT ON COLUMN "F_PERF_V"."AVGW_BM_12M" IS 'Average weight, benchmark 12 months';
   COMMENT ON COLUMN "F_PERF_V"."AVGW_BM_6M" IS 'Average weight, benchmark 6 months';
   COMMENT ON COLUMN "F_PERF_V"."AVGW_BM_ACC" IS 'Average weight, benchmark accumulated';
   COMMENT ON COLUMN "F_PERF_V"."AVGW_BM_FYTD" IS 'Average weight, benchmark financial year-to-date';
   COMMENT ON COLUMN "F_PERF_V"."AVGW_BM_MTD" IS 'Average weight, benchmark month-to-date';
   COMMENT ON COLUMN "F_PERF_V"."AVGW_BM_YTD" IS 'Average weight, benchmark year-to-date';
   COMMENT ON COLUMN "F_PERF_V"."SS_12M" IS 'Security selection, 12 months';
   COMMENT ON COLUMN "F_PERF_V"."SS_3M" IS 'Security selection, 3 months';
   COMMENT ON COLUMN "F_PERF_V"."SS_6M" IS 'Security selection, 6 months';
   COMMENT ON COLUMN "F_PERF_V"."SS_ACC" IS 'Security selection, accumulated';
   COMMENT ON COLUMN "F_PERF_V"."SS_FYTD" IS 'Security selection, financial year-to-date';
   COMMENT ON COLUMN "F_PERF_V"."SS_MTD" IS 'Security selection, month-to-date';
   COMMENT ON COLUMN "F_PERF_V"."SS_YTD" IS 'Security selection, year-to-date';
   COMMENT ON COLUMN "F_PERF_V"."AA_12M" IS 'Asset allocation, 12 months';
   COMMENT ON COLUMN "F_PERF_V"."AA_3M" IS 'Asset allocation, 3 months';
   COMMENT ON COLUMN "F_PERF_V"."AA_ACC" IS 'Asset allocation, accumulated';
   COMMENT ON COLUMN "F_PERF_V"."AA_FYTD" IS 'Asset allocation, financial year-to-date';
   COMMENT ON COLUMN "F_PERF_V"."AA_MTD" IS 'Asset allocation, month-to-date';
   COMMENT ON COLUMN "F_PERF_V"."AA_YTD" IS 'Asset allocation, year-to-date';
   COMMENT ON COLUMN "F_PERF_V"."AVGW_PF_12M" IS 'Average weight, portfolio 12 months';
   COMMENT ON COLUMN "F_PERF_V"."AVGW_PF_3M" IS 'Average weight, portfolio 3 months';
   COMMENT ON COLUMN "F_PERF_V"."AVGW_PF_6M" IS 'Average weight, portfolio 6 months';
   COMMENT ON COLUMN "F_PERF_V"."AVGW_PF_ACC" IS 'Average weight, portfolio accumulated';
   COMMENT ON COLUMN "F_PERF_V"."AVGW_PF_FYTD" IS 'Average weight, portfolio financial year-to-date';
   COMMENT ON COLUMN "F_PERF_V"."AVGW_PF_MTD" IS 'Average weight, portfolio month-to-date';
   COMMENT ON COLUMN "F_PERF_V"."AVGW_PF_YTD" IS 'Average weight, portfolio year-to-date';
   COMMENT ON COLUMN "F_PERF_V"."ALPHA_52W" IS 'Alpha, 52 weeks';
   COMMENT ON COLUMN "F_PERF_V"."ALPHA_52W_ANN" IS 'Annualised Alpha, 52 weeks';
   COMMENT ON COLUMN "F_PERF_V"."ANN_BM_TWR_52W" IS 'Annualised TWR, benchmark 52 weeks';
   COMMENT ON COLUMN "F_PERF_V"."BETA_52W" IS 'Beta, 52 weeks';
   COMMENT ON COLUMN "F_PERF_V"."IR_52W" IS 'Information ratio, 52 weeks';
   COMMENT ON COLUMN "F_PERF_V"."SR_BM_52W" IS 'Sharpe ratio, benchmark, 52 weeks';
   COMMENT ON COLUMN "F_PERF_V"."TE_52W" IS 'Tracking error, 52 weeks';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM_52W" IS 'Time Weighted Return, benchmark, 52 weeks';
   COMMENT ON COLUMN "F_PERF_V"."VOL_BM_52W" IS 'Volatility, benchmark 52 weeks';
   COMMENT ON COLUMN "F_PERF_V"."SR_PF_52W" IS 'Sharpe ratio, portfolio, 52 weeks';
   COMMENT ON COLUMN "F_PERF_V"."ANN_TWR_52W" IS 'Annualised TWR, portfolio 52 weeks';
   COMMENT ON COLUMN "F_PERF_V"."TWR_PF_52W" IS 'Time Weighted Return, portfolio 52 weeks';
   COMMENT ON COLUMN "F_PERF_V"."TWR2_PF_1M" IS 'Time Weighted Return 2, portfolio 1 month';
   COMMENT ON COLUMN "F_PERF_V"."VOL_PF_52W" IS 'Volatility, portfolio 52 weeks';
   COMMENT ON COLUMN "F_PERF_V"."TWR2_BM2_DAILY" IS 'Time Weighted Return 2, benchmark 2, daily';
   COMMENT ON COLUMN "F_PERF_V"."VOL_BM2_DAILY" IS 'Volatility, benchmark 2, daily';
   COMMENT ON COLUMN "F_PERF_V"."IR_BM_3Y" IS 'Information ratio, benchmark, 3 years';
   COMMENT ON COLUMN "F_PERF_V"."SR_BM_3Y" IS 'Sharpe ratio, benchmark, 3 years';
   COMMENT ON COLUMN "F_PERF_V"."TE_BM_3Y" IS 'Tracking error, benchmark, 3 years';
   COMMENT ON COLUMN "F_PERF_V"."VOL_BM_3Y" IS 'Volatility, benchmark 3 years';
   COMMENT ON COLUMN "F_PERF_V"."SR_PF_3Y" IS 'Sharpe ratio, portfolio 3 years';
   COMMENT ON COLUMN "F_PERF_V"."VOL_PF_3Y" IS 'Volatility, portfolio 3 years';
   COMMENT ON COLUMN "F_PERF_V"."ANTWR_PF_5Y" IS 'Annualised Time Weighted Return, portfolio 5 years';
   COMMENT ON COLUMN "F_PERF_V"."DR_PF_3Y" IS 'Direct return, portfolio 3 years';
   COMMENT ON COLUMN "F_PERF_V"."LR_PF_3Y" IS 'Local Return, portfolio 3 years';
   COMMENT ON COLUMN "F_PERF_V"."PR_PF_3Y" IS 'Period result, portfolio 3 years';
   COMMENT ON COLUMN "F_PERF_V"."TWR_PF_3Y" IS 'Time Weighted Return, portfolio 3 years';
   COMMENT ON COLUMN "F_PERF_V"."TWR_PF_5Y" IS 'Time Weighted Return, portfolio 5 years';
   COMMENT ON COLUMN "F_PERF_V"."TWR_PF_7Y" IS 'Time Weighted Return, portfolio 7 years';
   COMMENT ON COLUMN "F_PERF_V"."VOL_PF_MTD" IS 'Volatility, portfolio month-to-date';
   COMMENT ON COLUMN "F_PERF_V"."ALPHA_36M" IS 'Alpha, 36 months';
   COMMENT ON COLUMN "F_PERF_V"."ANTWR_BM_5Y" IS 'Annualised Time Weighted Return, benchmark 5 years';
   COMMENT ON COLUMN "F_PERF_V"."BETA_36M" IS 'Beta, 36 months';
   COMMENT ON COLUMN "F_PERF_V"."TE_BM_1M" IS 'Tracking error, benchmark, 1 month';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM_1M" IS 'Time Weighted Return, benchmark 1 month';
   COMMENT ON COLUMN "F_PERF_V"."ALPHA_BM_36M" IS 'Alpha, benchmark, 36 months';
   COMMENT ON COLUMN "F_PERF_V"."BETA_BM_36M" IS 'Beta, benchmark, 36 months';
   COMMENT ON COLUMN "F_PERF_V"."CO_BM_5Y" IS 'Contribution, benchmark 5 years';
   COMMENT ON COLUMN "F_PERF_V"."IR_BM_10Y" IS 'Information ratio, benchmark, 10 years';
   COMMENT ON COLUMN "F_PERF_V"."IR_BM_52W" IS 'Information ratio, benchmark, 52 weeks';
   COMMENT ON COLUMN "F_PERF_V"."R2_BM_36M" IS 'R-squared, benchmark, 36 months';
   COMMENT ON COLUMN "F_PERF_V"."SR_BM_10Y" IS 'Sharpe ratio, benchmark, 10 years';
   COMMENT ON COLUMN "F_PERF_V"."TE_BM_10Y" IS 'Tracking error, benchmark, 10 years';
   COMMENT ON COLUMN "F_PERF_V"."TE_BM_52W" IS 'Tracking error, benchmark, 52 weeks';
   COMMENT ON COLUMN "F_PERF_V"."TE_BM_5Y" IS 'Tracking error, benchmark, 5 years';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM_120M" IS 'Time Weighted Return, benchmark, 120 months';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM_2W" IS 'Time Weighted Return, benchmark 2 weeks';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM_60M" IS 'Time Weighted Return, benchmark 60 months';
   COMMENT ON COLUMN "F_PERF_V"."VOL_BM_10Y" IS 'Volatility, benchmark, 10 years';
   COMMENT ON COLUMN "F_PERF_V"."VOL_BM_1Y" IS 'Volatility, benchmark 1 year';
   COMMENT ON COLUMN "F_PERF_V"."VOL_BM_5Y" IS 'Volatility, benchmark 5 years';
   COMMENT ON COLUMN "F_PERF_V"."AA_5Y" IS 'Asset allocation, 5 years';
   COMMENT ON COLUMN "F_PERF_V"."SR_PF_10Y" IS 'Sharpe ratio, portfolio, 10 years';
   COMMENT ON COLUMN "F_PERF_V"."SR_PF_5Y" IS 'Sharpe ratio, portfolio 5 years';
   COMMENT ON COLUMN "F_PERF_V"."TWR_PF_2W" IS 'Time Weighted Return, portfolio 2 weeks';
   COMMENT ON COLUMN "F_PERF_V"."TWR2_PF_1W" IS 'Time Weighted Return 2, portfolio 1 week';
   COMMENT ON COLUMN "F_PERF_V"."TWR2_PF_36M" IS 'Time Weighted Return 2, portfolio 36 months';
   COMMENT ON COLUMN "F_PERF_V"."VOL_PF_10Y" IS 'Volatility, portfolio, 10 years';
   COMMENT ON COLUMN "F_PERF_V"."VOL_PF_1M" IS 'Volatility, portfolio 1 month';
   COMMENT ON COLUMN "F_PERF_V"."VOL_PF_1Y" IS 'Volatility, portfolio 1 year';
   COMMENT ON COLUMN "F_PERF_V"."VOL_PF_5Y" IS 'Volatility, portfolio 5 years';
   COMMENT ON COLUMN "F_PERF_V"."VOL_PF_ACC" IS 'Volatility, portfolio accumulated';
   COMMENT ON COLUMN "F_PERF_V"."TWR_PF_120M" IS 'Time Weighted Return, portfolio, 120 months';
   COMMENT ON COLUMN "F_PERF_V"."TWR_PF_60M" IS 'Time Weighted Return, portfolio 60 months';
   COMMENT ON COLUMN "F_PERF_V"."TWR2_PF_120M" IS 'Time Weighted Return 2 RC, portfolio, 120 months';
   COMMENT ON COLUMN "F_PERF_V"."TWR2_PF_60M" IS 'Time Weighted Return 2 RC, portfolio, 60 months';
   COMMENT ON COLUMN "F_PERF_V"."IR_PF_MTD" IS 'Information ratio, portfolio month-to-date';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM2_35M" IS 'Time Weighted Return, benchmark 2 35 months';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM2_3Y" IS 'Time Weighted Return, benchmark 2 3 years';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM2_59M" IS 'Time Weighted Return, benchmark 2 59 months';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM2_5Y" IS 'Time Weighted Return, benchmark 2 5 years';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM2_ACC" IS 'Time Weighted Return, benchmark 2 accumulated';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM2_MTD" IS 'Time Weighted Return, benchmark 2 month-to-date';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM2_QTD" IS 'Time Weighted Return, benchmark 2 quarter-to-date';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM2_YTD" IS 'Time Weighted Return, benchmark 2 year-to-date';
   COMMENT ON COLUMN "F_PERF_V"."TWR_PF_1Y" IS 'Time Weighted Return, portfolio 1 year';
   COMMENT ON COLUMN "F_PERF_V"."ALPHA_BM2_12M" IS 'Alpha, benchmark 2 12 months';
   COMMENT ON COLUMN "F_PERF_V"."ALPHA_BM2_36M" IS 'Alpha, benchmark 2, 36 months';
   COMMENT ON COLUMN "F_PERF_V"."ALPHA_BM2_3Y" IS 'Alpha, benchmark 2 3 years';
   COMMENT ON COLUMN "F_PERF_V"."ALPHA_BM2_5Y" IS 'Alpha, benchmark 2, 5 years';
   COMMENT ON COLUMN "F_PERF_V"."ALPHA_BM2_ACC" IS 'Alpha, benchmark 2 accumulated';
   COMMENT ON COLUMN "F_PERF_V"."ALPHA_BM2_YTD" IS 'Alpha, benchmark 2 year-to-date';
   COMMENT ON COLUMN "F_PERF_V"."ANTWR_BM_2Y" IS 'Annualised Time Weighted Return, benchmark 2 years';
   COMMENT ON COLUMN "F_PERF_V"."ANTWR_BM_3Y" IS 'Annualised Time Weighted Return, benchmark 3 years';
   COMMENT ON COLUMN "F_PERF_V"."ANTWR_BM_7Y" IS 'Annualised Time Weighted Return, benchmark 7 years';
   COMMENT ON COLUMN "F_PERF_V"."ANTWR_PF_2Y" IS 'Annualised Time Weighted Return, portfolio 2 years';
   COMMENT ON COLUMN "F_PERF_V"."ANTWR_PF_3Y" IS 'Annualised Time Weighted Return, portfolio 3 years';
   COMMENT ON COLUMN "F_PERF_V"."ANTWR_PF_7Y" IS 'Annualised Time Weighted Return, portfolio 7 years';
   COMMENT ON COLUMN "F_PERF_V"."BETA_BM_12M" IS 'Beta, benchmark 12 months';
   COMMENT ON COLUMN "F_PERF_V"."BETA_BM2_12M" IS 'Beta, benchmark 2 12 months';
   COMMENT ON COLUMN "F_PERF_V"."BETA_BM2_36M" IS 'Beta, benchmark 2, 36 months';
   COMMENT ON COLUMN "F_PERF_V"."BETA_BM2_3Y" IS 'Beta, benchmark 2 3 years';
   COMMENT ON COLUMN "F_PERF_V"."BETA_BM2_5Y" IS 'Beta, benchmark 2, 5 years';
   COMMENT ON COLUMN "F_PERF_V"."BETA_BM2_ACC" IS 'Beta, benchmark 2 accumulated';
   COMMENT ON COLUMN "F_PERF_V"."BETA_BM2_DAILY" IS 'Beta, benchmark 2, daily';
   COMMENT ON COLUMN "F_PERF_V"."BETA_BM2_YTD" IS 'Beta, benchmark 2 year-to-date';
   COMMENT ON COLUMN "F_PERF_V"."DOWN_VOL_BM_1M" IS 'Downside volatility, benchmark 1 months';
   COMMENT ON COLUMN "F_PERF_V"."DOWN_VOL_BM_3M" IS 'Downside volatility, benchmark 3 months';
   COMMENT ON COLUMN "F_PERF_V"."DOWN_VOL_BM_ACC" IS 'Downside volatility, benchmark accumulated';
   COMMENT ON COLUMN "F_PERF_V"."DOWN_VOL_BM_YTD" IS 'Downside volatility, benchmark 1 years';
   COMMENT ON COLUMN "F_PERF_V"."DOWN_VOL_PF_1M" IS 'Downside volatility, portfolio 1 months';
   COMMENT ON COLUMN "F_PERF_V"."DOWN_VOL_PF_3M" IS 'Downside volatility, portfolio 3 months';
   COMMENT ON COLUMN "F_PERF_V"."DOWN_VOL_PF_ACC" IS 'Downside volatility, portfolio accumulated';
   COMMENT ON COLUMN "F_PERF_V"."DOWN_VOL_PF_YTD" IS 'Downside volatility, portfolio 1 years';
   COMMENT ON COLUMN "F_PERF_V"."IR_BM2_10Y" IS 'Information ratio, benchmark 2, 10 years';
   COMMENT ON COLUMN "F_PERF_V"."IR_BM2_12M" IS 'Information ratio, benchmark 2 12 months';
   COMMENT ON COLUMN "F_PERF_V"."IR_BM2_3Y" IS 'Information ratio, benchmark 2 3 years';
   COMMENT ON COLUMN "F_PERF_V"."IR_BM2_52W" IS 'Information ratio, benchmark 2, 52 weeks';
   COMMENT ON COLUMN "F_PERF_V"."IR_BM2_5Y" IS 'Information ratio, benchmark 2, 5 years';
   COMMENT ON COLUMN "F_PERF_V"."IR_BM2_ACC" IS 'Information ratio, benchmark 2 accumulated';
   COMMENT ON COLUMN "F_PERF_V"."IR_BM2_YTD" IS 'Information ratio, benchmark 2 year-to-date';
   COMMENT ON COLUMN "F_PERF_V"."MWR_PF_2Y" IS 'Money Weighted Return (aka IRR), portfolio, 2 years';
   COMMENT ON COLUMN "F_PERF_V"."MWR_PF_3Y" IS 'Money Weighted Return (aka IRR), portfolio 3 years';
   COMMENT ON COLUMN "F_PERF_V"."MWR_PF_5Y" IS 'Money Weighted Return (aka IRR), portfolio 5 years';
   COMMENT ON COLUMN "F_PERF_V"."R2_BM2_1Y" IS 'R-squared, benchmark 2, 1 year';
   COMMENT ON COLUMN "F_PERF_V"."R2_BM2_2Y" IS 'R-squared, benchmark 2, 2 years';
   COMMENT ON COLUMN "F_PERF_V"."R2_BM2_36M" IS 'R-squared, benchmark 2, 36 months';
   COMMENT ON COLUMN "F_PERF_V"."R2_BM2_3Y" IS 'R-squared, benchmark 2, 3 years';
   COMMENT ON COLUMN "F_PERF_V"."R2_BM2_5Y" IS 'R-squared, benchmark 2, 5 years';
   COMMENT ON COLUMN "F_PERF_V"."R2_BM2_ACC" IS 'R-squared, benchmark 2, accumulated';
   COMMENT ON COLUMN "F_PERF_V"."SORTINO_BM_1M" IS 'Sortino ratio, benchmark 1 months';
   COMMENT ON COLUMN "F_PERF_V"."SORTINO_BM_3M" IS 'Sortino ratio, benchmark 3 months';
   COMMENT ON COLUMN "F_PERF_V"."SORTINO_BM_ACC" IS 'Sortino ratio, benchmark accumulated';
   COMMENT ON COLUMN "F_PERF_V"."SORTINO_BM_YTD" IS 'Sortino ratio, benchmark 1 years';
   COMMENT ON COLUMN "F_PERF_V"."SORTINO_PF_1M" IS 'Sortino ratio, portfolio 1 months';
   COMMENT ON COLUMN "F_PERF_V"."SORTINO_PF_3M" IS 'Sortino ratio, portfolio 3 months';
   COMMENT ON COLUMN "F_PERF_V"."SORTINO_PF_ACC" IS 'Sortino ratio, portfolio accumulated';
   COMMENT ON COLUMN "F_PERF_V"."SORTINO_PF_YTD" IS 'Sortino ratio, portfolio 1 years';
   COMMENT ON COLUMN "F_PERF_V"."SR_BM_1M" IS 'Sharpe ratio, benchmark 1 months';
   COMMENT ON COLUMN "F_PERF_V"."SR_BM_3M" IS 'Sharpe ratio, benchmark 3 months';
   COMMENT ON COLUMN "F_PERF_V"."SR_BM_5Y" IS 'Sharpe ratio, benchmark, 5 years';
   COMMENT ON COLUMN "F_PERF_V"."SR_BM_ACC" IS 'Sharpe ratio, benchmark accumulated';
   COMMENT ON COLUMN "F_PERF_V"."SR_BM_YTD" IS 'Sharpe ratio, benchmark 1 years';
   COMMENT ON COLUMN "F_PERF_V"."SR_BM2_12M" IS 'Sharpe ratio, benchmark 2 12 months';
   COMMENT ON COLUMN "F_PERF_V"."SR_BM2_3Y" IS 'Sharpe ratio, benchmark 2 3 years';
   COMMENT ON COLUMN "F_PERF_V"."SR_BM2_5Y" IS 'Sharpe ratio, benchmark 2, 5 years';
   COMMENT ON COLUMN "F_PERF_V"."SR_BM2_ACC" IS 'Sharpe ratio, benchmark 2 accumulated';
   COMMENT ON COLUMN "F_PERF_V"."SR_BM2_YTD" IS 'Sharpe ratio, benchmark 2 year-to-date';
   COMMENT ON COLUMN "F_PERF_V"."SR_PF_12M" IS 'Sharpe ratio, portfolio 12 months';
   COMMENT ON COLUMN "F_PERF_V"."SR_PF_1M" IS 'Sharpe ratio, portfolio 1 months';
   COMMENT ON COLUMN "F_PERF_V"."SR_PF_2Y" IS 'Sharpe ratio, portfolio, 2 years';
   COMMENT ON COLUMN "F_PERF_V"."SR_PF_3M" IS 'Sharpe ratio, portfolio 3 months';
   COMMENT ON COLUMN "F_PERF_V"."SR_PF_ACC" IS 'Sharpe ratio, portfolio accumulated';
   COMMENT ON COLUMN "F_PERF_V"."SR_PF_YTD" IS 'Sharpe ratio, portfolio 1 years';
   COMMENT ON COLUMN "F_PERF_V"."TE_BM2_10Y" IS 'Tracking error, benchmark 2, 10 years';
   COMMENT ON COLUMN "F_PERF_V"."TE_BM2_1Y" IS 'Tracking error, benchmark 2, 1 year';
   COMMENT ON COLUMN "F_PERF_V"."TE_BM2_2Y" IS 'Tracking error, benchmark 2, 2 years';
   COMMENT ON COLUMN "F_PERF_V"."TE_BM2_3Y" IS 'Tracking Error, benchmark 2 3 years';
   COMMENT ON COLUMN "F_PERF_V"."TE_BM2_52W" IS 'Tracking error, benchmark 2, 52 weeks';
   COMMENT ON COLUMN "F_PERF_V"."TE_BM2_5Y" IS 'Tracking error, benchmark 2, 5 years';
   COMMENT ON COLUMN "F_PERF_V"."TE_BM2_ACC" IS 'Tracking Error, benchmark 2 accumulated';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM_1W" IS 'Time Weighted Return, benchmark week';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM2_120M" IS 'Time Weighted Return, benchmark 2, 120 months';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM2_12M" IS 'Time Weighted Return, benchmark 2 12 months';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM2_1M" IS 'Time Weighted Return, benchmark 2 1 month';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM2_36M" IS 'Time Weighted Return, benchmark 2 36 months';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM2_60M" IS 'Time Weighted Return, benchmark 2 60 months';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM2_7Y" IS 'Time Weighted Return, benchmark 2 7 years';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM2_ACC_IDX" IS 'Time Weighted Return, benchmark 2 accumulated index';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM3_ACC" IS 'Time Weighted Return, benchmark 3, 0 (none)';
   COMMENT ON COLUMN "F_PERF_V"."TWR_PF_1D" IS 'Time Weighted Return, portfolio daily';
   COMMENT ON COLUMN "F_PERF_V"."TWR_PF_2Y" IS 'Time Weighted Return, portfolio 2 years';
   COMMENT ON COLUMN "F_PERF_V"."VOL_BM_1M" IS 'Volatility, benchmark 1 month';
   COMMENT ON COLUMN "F_PERF_V"."VOL_BM_3M" IS 'Volatility, benchmark 3 months';
   COMMENT ON COLUMN "F_PERF_V"."VOL_BM_ACC" IS 'Volatility, benchmark accumulated';
   COMMENT ON COLUMN "F_PERF_V"."VOL_BM_YTD" IS 'Volatility, benchmark year-to-date';
   COMMENT ON COLUMN "F_PERF_V"."VOL_BM2_10Y" IS 'Volatility, benchmark 2, 10 years';
   COMMENT ON COLUMN "F_PERF_V"."VOL_BM2_12M" IS 'Volatility, benchmark 2 12 months';
   COMMENT ON COLUMN "F_PERF_V"."VOL_BM2_1Y" IS 'Volatility, benchmark 2 1 year';
   COMMENT ON COLUMN "F_PERF_V"."VOL_BM2_3Y" IS 'Volatility, benchmark 2 3 years';
   COMMENT ON COLUMN "F_PERF_V"."VOL_BM2_5Y" IS 'Volatility, benchmark 2 5 years';
   COMMENT ON COLUMN "F_PERF_V"."VOL_BM2_ACC" IS 'Volatility, benchmark 2 accumulated';
   COMMENT ON COLUMN "F_PERF_V"."VOL_BM2_YTD" IS 'Volatility, benchmark 2 year-to-date';
   COMMENT ON COLUMN "F_PERF_V"."VOL_PF_2Y" IS 'Volatility, portfolio 2 years';
   COMMENT ON COLUMN "F_PERF_V"."VOL_PF_3M" IS 'Volatility, portfolio 3 months';
   COMMENT ON COLUMN "F_PERF_V"."VOL_PF_YTD" IS 'Volatility, portfolio year-to-date';
   COMMENT ON COLUMN "F_PERF_V"."AA_6M" IS 'Asset allocation, 6 months';
   COMMENT ON COLUMN "F_PERF_V"."AA_BM2_12M" IS 'Asset allocation, benchmark 2 12 months';
   COMMENT ON COLUMN "F_PERF_V"."AA_BM2_1M" IS 'Asset allocation, benchmark 2 1 month';
   COMMENT ON COLUMN "F_PERF_V"."AA_BM2_3Y" IS 'Asset allocation, benchmark 2 3 years';
   COMMENT ON COLUMN "F_PERF_V"."AA_BM2_5Y" IS 'Asset allocation, benchmark 2, 5 years';
   COMMENT ON COLUMN "F_PERF_V"."AA_BM2_ACC" IS 'Asset allocation, benchmark 2 accumulated';
   COMMENT ON COLUMN "F_PERF_V"."AA_BM2_QTD" IS 'Asset allocation, benchmark 2 quarter-to-date';
   COMMENT ON COLUMN "F_PERF_V"."AA_BM2_YTD" IS 'Asset allocation, benchmark 2 year-to-date';
   COMMENT ON COLUMN "F_PERF_V"."AVGW_BM_3M" IS 'Average weight, benchmark 3 months';
   COMMENT ON COLUMN "F_PERF_V"."CO_BM2_12M" IS 'Contribution, benchmark 2 12 months';
   COMMENT ON COLUMN "F_PERF_V"."CO_BM2_1M" IS 'Contribution, benchmark 2 1 month';
   COMMENT ON COLUMN "F_PERF_V"."CO_BM2_3Y" IS 'Contribution, benchmark 2 3 years';
   COMMENT ON COLUMN "F_PERF_V"."CO_BM2_5Y" IS 'Contribution, benchmark 2, 5 years';
   COMMENT ON COLUMN "F_PERF_V"."CO_BM2_ACC" IS 'Contribution, benchmark 2 accumulated';
   COMMENT ON COLUMN "F_PERF_V"."CO_BM2_QTD" IS 'Contribution, benchmark 2 quarter-to-date';
   COMMENT ON COLUMN "F_PERF_V"."CO_BM2_YTD" IS 'Contribution, benchmark 2 year-to-date';
   COMMENT ON COLUMN "F_PERF_V"."CO_PF_36M" IS 'Contribution, portfolio 36 months';
   COMMENT ON COLUMN "F_PERF_V"."CO_PF_3Y" IS 'Contribution, portfolio 3 years';
   COMMENT ON COLUMN "F_PERF_V"."CO_PF_5Y" IS 'Contribution, portfolio 5 years';
   COMMENT ON COLUMN "F_PERF_V"."CO_PF_YTD" IS 'Contribution, portfolio year-to-date';
   COMMENT ON COLUMN "F_PERF_V"."CX_BM2_1M" IS 'Contribution excess return, benchmark 2 1 month';
   COMMENT ON COLUMN "F_PERF_V"."CX_BM2_1Y" IS 'Contribution excess return, benchmark 2, 1 year';
   COMMENT ON COLUMN "F_PERF_V"."CX_BM2_3M" IS 'Contribution excess return, benchmark 2, 3 months';
   COMMENT ON COLUMN "F_PERF_V"."CX_BM2_3Y" IS 'Contribution excess return, benchmark 2 3 years';
   COMMENT ON COLUMN "F_PERF_V"."CX_BM2_5Y" IS 'Contribution excess return, benchmark 2, 5 years';
   COMMENT ON COLUMN "F_PERF_V"."CX_BM2_ACC" IS 'Contribution excess return, benchmark 2 accumulated';
   COMMENT ON COLUMN "F_PERF_V"."CX_BM2_YTD" IS 'Contribution excess return, benchmark 2 year-to-date';
   COMMENT ON COLUMN "F_PERF_V"."MI_BM2_1M" IS 'Market interaction, benchmark 2, 1 month';
   COMMENT ON COLUMN "F_PERF_V"."MI_BM2_1Y" IS 'Market interaction, benchmark 2, 1 year';
   COMMENT ON COLUMN "F_PERF_V"."MI_BM2_3M" IS 'Market interaction, benchmark 2, 3 months';
   COMMENT ON COLUMN "F_PERF_V"."MI_BM2_3Y" IS 'Market interaction, benchmark 2, 3 years';
   COMMENT ON COLUMN "F_PERF_V"."MI_BM2_5Y" IS 'Market interaction, benchmark 2, 5 years';
   COMMENT ON COLUMN "F_PERF_V"."MI_BM2_ACC" IS 'Market interaction, benchmark 2, accumulated';
   COMMENT ON COLUMN "F_PERF_V"."MI_BM2_YTD" IS 'Market interaction, benchmark 2 year-to-date';
   COMMENT ON COLUMN "F_PERF_V"."SS_BM2_12M" IS 'Security selection, benchmark 2 12 months';
   COMMENT ON COLUMN "F_PERF_V"."SS_BM2_1M" IS 'Security selection, benchmark 2 1 month';
   COMMENT ON COLUMN "F_PERF_V"."SS_BM2_3Y" IS 'Security selection, benchmark 2 3 years';
   COMMENT ON COLUMN "F_PERF_V"."SS_BM2_5Y" IS 'Security selection, benchmark 2, 5 years';
   COMMENT ON COLUMN "F_PERF_V"."SS_BM2_ACC" IS 'Security selection, benchmark 2 accumulated';
   COMMENT ON COLUMN "F_PERF_V"."SS_BM2_QTD" IS 'Security selection, benchmark 2 quarter-to-date';
   COMMENT ON COLUMN "F_PERF_V"."SS_BM2_YTD" IS 'Security selection, benchmark 2 year-to-date';
   COMMENT ON COLUMN "F_PERF_V"."TE_BM_ACC" IS 'Tracking Error, benchmark accumulated';
   COMMENT ON COLUMN "F_PERF_V"."TWR2_PF_10M" IS 'Time Weighted Return 2, portfolio 10 months';
   COMMENT ON COLUMN "F_PERF_V"."TWR2_PF_11M" IS 'Time Weighted Return 2, portfolio 11 month';
   COMMENT ON COLUMN "F_PERF_V"."TWR2_PF_2M" IS 'Time Weighted Return 2, portfolio 2 months';
   COMMENT ON COLUMN "F_PERF_V"."TWR2_PF_4M" IS 'Time Weighted Return 2, portfolio 4 months';
   COMMENT ON COLUMN "F_PERF_V"."TWR2_PF_5M" IS 'Time Weighted Return 2, portfolio 5 months';
   COMMENT ON COLUMN "F_PERF_V"."TWR2_PF_6MD" IS 'Time Weighted Return 2, portfolio half-year-to-date';
   COMMENT ON COLUMN "F_PERF_V"."TWR2_PF_7M" IS 'Time Weighted Return 2, portfolio 7 months';
   COMMENT ON COLUMN "F_PERF_V"."TWR2_PF_8M" IS 'Time Weighted Return 2, portfolio 8 months';
   COMMENT ON COLUMN "F_PERF_V"."TWR2_PF_9M" IS 'Time Weighted Return 2, portfolio 9 months';
   COMMENT ON COLUMN "F_PERF_V"."TWR2_PF_QTD" IS 'Time Weighted Return 2, portfolio quarter-to-date';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM2_2Y" IS 'Time Weighted Return, benchmark 2 2 years';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM2_3M" IS 'Time Weighted Return, benchmark 2 3 months';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM_10M" IS 'Time Weighted Return, benchmark 10 months';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM_11M" IS 'Time Weighted Return, benchmark 11 month';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM_12M" IS 'Time Weighted Return, benchmark 12 months';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM_1Y" IS 'Time Weighted Return, benchmark 1 year';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM_2M" IS 'Time Weighted Return, benchmark 2 months';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM_3M" IS 'Time Weighted Return, benchmark 3 months';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM_4M" IS 'Time Weighted Return, benchmark 4 months';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM_5M" IS 'Time Weighted Return, benchmark 5 months';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM_6M" IS 'Time Weighted Return, benchmark 6 months';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM_7M" IS 'Time Weighted Return, benchmark 7 months';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM_8M" IS 'Time Weighted Return, benchmark 8 months';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM_9M" IS 'Time Weighted Return, benchmark 9 months';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM_ACC" IS 'Time Weighted Return, benchmark accumulated';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM_FYTD" IS 'Time Weighted Return, benchmark financial-year-to-date';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM_IDX_1M" IS 'Time Weighted Return (index), benchmark 1 month';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM_IDX_ACC" IS 'Time Weighted Return, benchmark accumulated index';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM_MTD" IS 'Time Weighted Return, benchmark month-to-date';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM_QTD" IS 'Time Weighted Return, benchmark quarter-to-date';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM_YTD" IS 'Time Weighted Return, benchmark year-to-date';
   COMMENT ON COLUMN "F_PERF_V"."TWR_PF_10M" IS 'Time Weighted Return, portfolio 10 months';
   COMMENT ON COLUMN "F_PERF_V"."TWR_PF_11M" IS 'Time Weighted Return, portfolio 11 month';
   COMMENT ON COLUMN "F_PERF_V"."TWR_PF_2M" IS 'Time Weighted Return, portfolio 2 months';
   COMMENT ON COLUMN "F_PERF_V"."TWR_PF_4M" IS 'Time Weighted Return, portfolio 4 months';
   COMMENT ON COLUMN "F_PERF_V"."TWR_PF_5M" IS 'Time Weighted Return, portfolio 5 months';
   COMMENT ON COLUMN "F_PERF_V"."TWR_PF_7M" IS 'Time Weighted Return, portfolio 7 months';
   COMMENT ON COLUMN "F_PERF_V"."TWR_PF_8M" IS 'Time Weighted Return, portfolio 8 months';
   COMMENT ON COLUMN "F_PERF_V"."TWR_PF_9M" IS 'Time Weighted Return, portfolio 9 months';
   COMMENT ON COLUMN "F_PERF_V"."TWR_PF_IDX_1M" IS 'Time Weighted Return (index), portfolio 1 month';
   COMMENT ON COLUMN "F_PERF_V"."TWR_PF_IDX_ACC" IS 'Time Weighted Return, portfolio accumulated index';
   COMMENT ON COLUMN "F_PERF_V"."TWR_PF_QTD" IS 'Time Weighted Return, portfolio quarter-to-date';
   COMMENT ON COLUMN "F_PERF_V"."VOL_BM_MTD" IS 'Volatility, benchmark month-to-date';
   COMMENT ON COLUMN "F_PERF_V"."TE_BM_3M" IS 'Tracking error, benchmark, 3 months';
   COMMENT ON COLUMN "F_PERF_V"."IR_BM_1M" IS 'Information ratio, benchmark 1 month';
   COMMENT ON COLUMN "F_PERF_V"."IR_BM_3M" IS 'Information ratio, benchmark, 3 months';
   COMMENT ON COLUMN "F_PERF_V"."IR_BM_5Y" IS 'Information ratio, benchmark, 5 years';
   COMMENT ON COLUMN "F_PERF_V"."CO_BM_ACC" IS 'Contribution, benchmark accumulated';
   COMMENT ON COLUMN "F_PERF_V"."CO_BM_1M" IS 'Contribution, benchmark 1 month';
   COMMENT ON COLUMN "F_PERF_V"."CO_BM_3M" IS 'Contribution, benchmark 3 months';
   COMMENT ON COLUMN "F_PERF_V"."CO_BM_YTD" IS 'Contribution, benchmark year-to-date';
   COMMENT ON COLUMN "F_PERF_V"."DOWN_VOL_PF_52W" IS 'Downside volatility, portfolio, 52 weeks';
   COMMENT ON COLUMN "F_PERF_V"."DOWN_VOL_BM_52W" IS 'Downside volatility, benchmark, 52 weeks';
   COMMENT ON COLUMN "F_PERF_V"."DOWN_VOL_PF_3Y" IS 'Downside volatility, portfolio, 3 years';
   COMMENT ON COLUMN "F_PERF_V"."DOWN_VOL_PF_5Y" IS 'Downside volatility, portfolio, 5 years';
   COMMENT ON COLUMN "F_PERF_V"."DOWN_VOL_PF_10Y" IS 'Downside volatility, portfolio, 10 years';
   COMMENT ON COLUMN "F_PERF_V"."DOWN_VOL_BM_3Y" IS 'Downside volatility, benchmark, 3 years';
   COMMENT ON COLUMN "F_PERF_V"."DOWN_VOL_BM_5Y" IS 'Downside volatility, benchmark, 5 years';
   COMMENT ON COLUMN "F_PERF_V"."DOWN_VOL_BM_10Y" IS 'Downside volatility, benchmark, 10 years';
   COMMENT ON COLUMN "F_PERF_V"."SORTINO_PF_52W" IS 'Sortino ratio, portfolio, 52 weeks';
   COMMENT ON COLUMN "F_PERF_V"."SORTINO_BM_52W" IS 'Sortino ratio, benchmark, 52 weeks';
   COMMENT ON COLUMN "F_PERF_V"."SORTINO_PF_3Y" IS 'Sortino ratio, portfolio, 3 years';
   COMMENT ON COLUMN "F_PERF_V"."SORTINO_PF_5Y" IS 'Sortino ratio, portfolio, 5 years';
   COMMENT ON COLUMN "F_PERF_V"."SORTINO_PF_10Y" IS 'Sortino ratio, portfolio, 10 years';
   COMMENT ON COLUMN "F_PERF_V"."SORTINO_BM_3Y" IS 'Sortino ratio, benchmark, 3 years';
   COMMENT ON COLUMN "F_PERF_V"."SORTINO_BM_5Y" IS 'Sortino ratio, benchmark, 5 years';
   COMMENT ON COLUMN "F_PERF_V"."SORTINO_BM_10Y" IS 'Sortino ratio, benchmark, 10 years';
   COMMENT ON COLUMN "F_PERF_V"."NET_CASH_FLOW_RC" IS 'Net cash flow RC #SCD: tmsdat.perfrep.perfnetcfrc';
   COMMENT ON COLUMN "F_PERF_V"."CO_RETURN_TO_TOP_NODE_RC" IS 'Contribution to top node return RC #SCD: tmsdat.perfrep.contribrettoprc';
   COMMENT ON COLUMN "F_PERF_V"."TWR_PF_1W" IS 'Time Weighted Return, portfolio, 1 week';
   COMMENT ON COLUMN "F_PERF_V"."TWR2_PF_3Y" IS 'Time Weighted Return 2 RC, portfolio, 3 years';
   COMMENT ON COLUMN "F_PERF_V"."TWR2_PF_5Y" IS 'Time Weighted Return 2 RC, portfolio, 5 years';
   COMMENT ON COLUMN "F_PERF_V"."TWR2_PF_10Y" IS 'Time Weighted Return 2 RC, portfolio, 10 years';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM_5Y" IS 'Time Weighted Return, benchmark, 5 years';
   COMMENT ON COLUMN "F_PERF_V"."TWR_BM_10Y" IS 'Time Weighted Return, benchmark, 10 years';
   COMMENT ON COLUMN "F_PERF_V"."TWR_PF_10Y" IS 'Time Weighted Return, portfolio, 10 years';


  GRANT SELECT ON "F_PERF_V" TO "DWH_DM_READ";
  GRANT SELECT ON "F_PERF_V" TO "APP_PMCC";
  GRANT SELECT ON "F_PERF_V" TO "APP_ESG";
  GRANT SELECT ON "F_PERF_V" TO "APP_EOY" WITH GRANT OPTION;
  GRANT SELECT ON "F_PERF_V" TO "D007839";
  GRANT SELECT ON "F_PERF_V" TO "D007840";
  GRANT SELECT ON "F_PERF_V" TO "ODI_CONNECT";
  GRANT SELECT ON "F_PERF_V" TO "APP_DS";
  GRANT SELECT ON "F_PERF_V" TO "DWH_CTRL";
  GRANT SELECT ON "F_PERF_V" TO "INT_DCLINK";
  GRANT SELECT ON "F_PERF_V" TO "APP_EOY" WITH GRANT OPTION;
  GRANT SELECT ON "F_PERF_V" TO "QUOV";
  GRANT SELECT ON "F_PERF_V" TO "INT_REPORTING";
  GRANT SELECT ON "F_PERF_V" TO "APP_DIMA" WITH GRANT OPTION;
  GRANT SELECT ON "F_PERF_V" TO "APP_SAS";
  GRANT SELECT ON "F_PERF_V" TO "APP_AUTHORITY" WITH GRANT OPTION;
  GRANT SELECT ON "F_PERF_V" TO "APP_GRIP" WITH GRANT OPTION;
  GRANT SELECT ON "F_PERF_V" TO "APP_CR" WITH GRANT OPTION;
