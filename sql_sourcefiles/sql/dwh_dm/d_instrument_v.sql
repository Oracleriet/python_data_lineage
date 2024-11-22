
  CREATE OR REPLACE EDITIONABLE VIEW dwh_dm."D_INSTRUMENT_V" ("D_INSTRUMENT_ID", "INSTRUMENT", "INSTRUMENT_NAME", "INSTRUMENT_SK", "NOMINAL_SIZE", "SECNO", "ISIN", "LEGNO_INS", "BLOOMBERG_CODE", "CUSIP", "MATURITY_DATE", "REUTER_CODE", "SEDOL", "INS_TYPE", "INS_TYPE_NAME", "INS_GROUP", "INS_GROUP_NAME", "EXCHANGE", "EXCHANGE_NAME", "MIC_CODE", "QUOTATION_CURRENCY", "QUOTATION_CURRENCY_NAME", "ISSUER_NAME", "ISSUER", "D_COUNTRY_ID_ISSUER", "AIF_TRANCHED_SEC", "AIF_ILLIQUID_SEC", "DC_SECTORS_DMEM", "DC_SECTORS_CLASS", "DC_SECTORS_DETAIL1", "DC_SECTORS_DETAIL2", "DC_SECTORS_SUB", "GICS_DB_SECTOR", "GICS_DB_INDUSTRY_GROUP", "GICS_DB_INDUSTRY", "GICS_DB_SUB_INDUSTRY", "AIF_EXPOSURE_MACRO_ASSET_TYPE", "AIF_EXPOSURE_ASSET_TYPE", "AIF_EXPOSURE_SUB_ASSET_TYPE", "AIF_TURNOVER_MACRO_ASSET_TYPE", "AIF_TURNOVER_ASSET_TYPE", "AIF_TURNOVER_SUB_ASSET_TYPE", "SCD_INS_TYPE", "SCD_INS_TYPE_TXT", "CALL_PUT", "STRIKE_PRICE", "REGULATED_MARKET", "CFI_CODE", "DWH_CREATED_DATE", "DWH_CREATED_BY", "DWH_CHANGED_DATE", "DWH_CHANGED_BY", "SERIAL_NO", "ISSUER_COUNTRY", "ISSUER_COUNTRY_NAME", "ISSUER_OECD", "ISSUER_EEA", "CIC_CODE", "CIC_TEXT", "CIC_COUNTRY", "UNDERLYING_D_INSTRUMENT_ID", "UNDERLYING_INSTRUMENT", "UNDERLYING_INSTRUMENT_NAME", "UNDERLYING_ISIN", "BLM_FUND", "BLM_FUND_NAME", "BLOCKINGTYPE_CODE", "COUNTRY_OF_INCORPORATION", "FAP_FUND", "MOODY_RATING", "NORWEGIAN_REPORT", "REPORT_ASSET_CLASS", "BOND_INTEREST_RATE", "FINNISH_NAME", "ENGLISH_NAME", "SWEDISH_NAME", "TAX_STAMP", "DIMA_ISSUER_REL", "CLIENT_REP_NAME", "COUNTRY", "COUNTRY_NAME", "ISDA_TAXONOMY", "ISDA_TAXONOMY_NAME", "EXTRANET_CLASSIFICATION", "EXTRANET_COUNTRY", "EXTRANET_ASSET", "CLASSIFICATION_OF_ASSETS", "CFI_CATEGORY_GROUP", "CFI_ATTRIBUTE_1", "CFI_ATTRIBUTE_2", "CFI_ATTRIBUTE_3", "CFI_ATTRIBUTE_4", "GICS_DB_SECTOR_NUMBER", "ASSET_CLASS_DI", "COUNTRY_OF_RISK", "REGION_BY_COUNTRY_OF_RISK", "COUNTRY_NAME_OF_RISK", "GICS_DB_INDUSTRY_GROUP_NUMBER", "GICS_DB_INDUSTRY_GROUP_DA", "GICS_DB_INDUSTRY_GROUP_NAME", "GICS_DB_INDUSTRY_NUMBER", "GICS_DB_INDUSTRY_DA", "GICS_DB_INDUSTRY_NAME", "GICS_DB_SUB_INDUSTRY_NUMBER", "GICS_DB_SUB_INDUSTRY_NAME", "GICS_DB_SECTOR_DA", "GICS_DB_SECTOR_NAME", "ISSUER_GROUP", "ISSUER_GROUP_NAME", "DST_SECTOR_NUMBER", "DST_INDUSTRY_NUMBER", "DST_INDUSTRY_CODE", "COMPANY_TO_PARENT", "TYPE_OF_BOND", "BLOOMBERG_SECURITY_TYPE_2", "BOND_NAME", "GL_CLASSIFICATION", "GL_CLASSIFICATION_NAME", "GICS_DB_SUB_INDUSTRY_DA", "DST_SECTOR", "DST_SECTOR_DA", "DST_INDUSTRY", "DST_INDUSTRY_DA", "UNDERLYING_SCD_INS_TYPE", "UNDERLYING_SCD_INS_TYPE_TXT", "UNDERLYING_INS_TYPE", "UNDERLYING_INS_TYPE_NAME", "PA_FUND_TYPE", "DI_REG_MARKET", "S_BATCHID", "CTM_ALERT_CODE", "VP", "STINA_INS_GROUP", "ISSUE_DATE", "COUPON_TERM_LENGTH", "COUPON_TERM_UNIT", "SCD_UNDERLYING_TYPE", "SCD_UNDERLYING_TYPE_TXT", "UNDERLYING_ISSUER_COUNTRY", "STINA_ISSUECATEGORY", "STINA_MATURITY", "TOTV", "STINA_COUNTRY", "STINA_SECTOR", "STINA_CURRENCY", "STINA_UNDERLYINGASSET", "STINA_COUPONFREQ", "STINA_VPREG", "STINA_INDUSTRY", "H_COUNTRY_ID_ISSUER", "H_INSTRUMENT_ID_UNDERLYING", "CONTRACT_SIZE", "SCD_SECURITY_GROUP", "SCD_SECURITY_GROUP_NAME", "QUOTE_TYPE", "QUOTE_TYPE_TXT", "QUOTATION", "QUOTATION_TXT", "BLOOMBERG_PRICENOTATION", "BIZ_DAYS_CONVENTION", "BIZ_DAYS_CONVENTION_TXT", "DAY_COUNT_CONVENTION", "DAY_COUNT_CONVENTION_TXT", "CASH_SETTLEMENT_METHOD", "CASH_SETTLEMENT_METHOD_TXT", "COUPON_TERM_UNIT_TXT", "SEQ_CONVENTION_COUPONS", "SEQ_CONVENTION_COUPONS_TXT", "END_OF_MONTH_CONVENTION", "END_OF_MONTH_CONVENTION_TXT", "EXERCISE_STYLE", "EXERCISE_STYLE_TXT", "OPTION_TYPE", "OPTION_TYPE_TXT", "PREMIUM_TYPE", "PREMIUM_TYPE_TXT", "SETTLEMENT_METHOD", "SETTLEMENT_METHOD_TXT", "SWAP_START", "SWAP_START_TXT", "SWAP_UNIT", "SWAP_UNIT_TXT", "TERM_UNIT", "TERM_UNIT_TXT", "SETTLEMENT_DAYS", "FEE_RATE", "NON_CONCURRENT", "EXERCISE_DATES", "FIXING_DAYS_AT_MATURITY", "SWAP_LENGTH", "FIRST_FIXING_DATE", "FIXING_YIELD_CURVE", "HOLIDAY_ADJUST_COUPONS", "SECOND_LAST_COUPON", "SPREAD_RATE", "TERM_LENGTH", "FIXING_DATE", "MATURITY_PRICE", "COUPON_FROM_DATE", "FINAL_MATURITY_DATE", "FIRST_COUPON_PAYMENT", "ACTIVE", "FIGI", "DCN_RISK_CATEGORY", "DCN_RISK_LEVEL", "DCN_SECTOR", "DCN_SECTOR_NAME", "GICS_DB_INDUSTRY_GROUP_NO", "GICS_DB_INDUSTRY_NO", "FX_FACTOR", "FX_TICS", "FORWARD_RATE", "AIF_CONTROL_STRUCTURE", "STINA_INSTYPE_BALBEH", "STINA_INSTYPE_BALOEVR", "STINA_INSTYPE_SUPDER", "INDUSTRY_SECTOR", "BM_ASSET_CLASS", "SECNAMEROW2", "SMF_ONGOING_COST_EX_POST", "SMF_MANAGEMENT_FEE_EX_POST", "SMF_TRANSACTION_COST_EX_POST", "SMF_INCIDENTIAL_COST_EX_POST", "SMF_CREATED_DATE", "PRIMARY_EXCHANGE_MIC", "PRIMARY_EXCHANGE_MIC_NAME", "AIF_ILLIQUID_SEC_CAPS", "AIF_ILLIQUID_SEC_NAME", "AIF_ILLIQUID_SEC_DESC", "AIF_EXPOSURE_MACRO_ASSET_NAME", "AIF_EXPOSURE_MACRO_ASSET_DESC", "AIF_EXPOSURE_ASSET_NAME", "AIF_EXPOSURE_ASSET_DESC", "AIF_EXPOSURE_SUB_ASSET_NAME", "AIF_EXPOSURE_SUB_ASSET_DESC", "AIF_EXPO_NO_MACRO_ASSET_TYPE", "AIF_EXPO_NO_MACRO_ASSET_NAME", "AIF_EXPO_NO_MACRO_ASSET_DESC", "AIF_EXPO_NO_ASSET_TYPE", "AIF_EXPO_NO_ASSET_NAME", "AIF_EXPO_NO_ASSET_DESC", "AIF_EXPO_NO_SUB_ASSET_TYPE", "AIF_EXPO_NO_SUB_ASSET_NAME", "AIF_EXPO_NO_SUB_ASSET_DESC", "AIF_EXPO_FI_MACRO_ASSET_TYPE", "AIF_EXPO_FI_MACRO_ASSET_NAME", "AIF_EXPO_FI_MACRO_ASSET_DESC", "AIF_EXPO_FI_ASSET_TYPE", "AIF_EXPO_FI_ASSET_NAME", "AIF_EXPO_FI_ASSET_DESC", "AIF_EXPO_FI_SUB_ASSET_TYPE", "AIF_EXPO_FI_SUB_ASSET_NAME", "AIF_EXPO_FI_SUB_ASSET_DESC", "AIF_TURNOVER_MACRO_ASSET_NAME", "AIF_TURNOVER_MACRO_ASSET_DESC", "AIF_TURNOVER_ASSET_NAME", "AIF_TURNOVER_ASSET_DESC", "AIF_TURNOVER_SUB_ASSET_NAME", "AIF_TURNOVER_SUB_ASSET_DESC", "ID_EXCH_SYMBOL", "OECD", "EU_UNION", "REPO_YIELD", "FX_DISCOUNT_FACTOR", "FX_DISCOUNT_CONVENTION", "UNDERLYING_SEDOL", "UNDERLYING_QUOTATION_CURRENCY", "UNDERLYING_ID_EXCH_SYMBOL", "UNDERLYING_MATURITY_DATE", "MAST_ASSET_CLASS", "MAST_FILE", "FX_TRADE_LEG", "EURO_ZONE", "LAST_TRADE_DATE", "UNDERLYING_LAST_TRADE_DATE", "DUMMY", "QUOTE_FACTOR", "BLB_GREEN_BONDS", "BLB_SOCIAL_BOND", "BLB_SUSTAINABIL_BOND", "INSTRUMENT_NAME_NORM", "FI_SF_SECTOR", "FI_SF_SECTOR_NAME", "FI_SF_SECTOR_DESC", "FI_CNTR", "FI_CNTR_NAME", "FI_REGION", "FI_REGION_NAME", "QUOTED", "QUOTED_TXT", "FI_ASSET_CLASS", "FI_ASSET_CLASS_NAME", "FI_ASSET_CLASS_SHORT", "REDFINDATE", "ISIN_FI", "SEC_D_CURRENCY_ID", "D_PARTY_ID", "UNDERLY_INSTRUMENT_SK", "UNDERLY_D_INSTRUMENT_ID", "COUPON_TYPE", "COUPON_TYPE_TXT", "REFR_TERM_UNIT", "REFR_TERM_UNIT_TXT", "REFR_TERM_LENGTH", "FREQUENCY", "FREQUENCY_TXT") AS select instrument.d_instrument_id,
       instrument.instrument,
       instrument.instrument_name,
       instrument.instrument_sk,
       instrument.nominal_size,
       instrument.secno,
       instrument.isin,
       instrument.legno_ins,
       instrument.bloomberg_code,
       instrument.cusip,
       instrument.maturity_date,
       instrument.reuter_code,
       instrument.sedol,
       instrument.ins_type,
       instrument.ins_type_name,
       instrument.ins_group,
       instrument.ins_group_name,
       instrument.exchange,
       instrument.exchange_name,
       instrument.mic_code,
       instrument.quotation_currency,
       instrument.quotation_currency_name,
       instrument.issuer_name,
       instrument.issuer,
       instrument.d_country_id_issuer,
       instrument.aif_tranched_sec,
       instrument.aif_illiquid_sec,
       instrument.dc_sectors_dmem,
       instrument.dc_sectors_class,
       instrument.dc_sectors_detail1,
       instrument.dc_sectors_detail2,
       instrument.dc_sectors_sub,
       instrument.gics_db_sector,
       instrument.gics_db_industry_group,
       instrument.gics_db_industry,
       instrument.gics_db_sub_industry,
       instrument.aif_exposure_macro_asset_type,
       instrument.aif_exposure_asset_type,
       instrument.aif_exposure_sub_asset_type,
       instrument.aif_turnover_macro_asset_type,
       instrument.aif_turnover_asset_type,
       instrument.aif_turnover_sub_asset_type,
       instrument.scd_ins_type,
       instrument.scd_ins_type_txt,
       instrument.call_put,
       instrument.strike_price,
       instrument.regulated_market,
       instrument.cfi_code,
       instrument.dwh_created_date,
       instrument.dwh_created_by,
       instrument.dwh_changed_date,
       instrument.dwh_changed_by,
       instrument.serial_no,
       instrument.issuer_country,
       instrument.issuer_country_name,
       instrument.issuer_oecd,
       instrument.issuer_eea,
       instrument.cic_code,
       instrument.cic_text,
       instrument.cic_country,
       instrument.underlying_d_instrument_id,
       instrument.underlying_instrument,
       instrument.underlying_instrument_name,
       instrument.underlying_isin,
       instrument.blm_fund,
       instrument.blm_fund_name,
       instrument.blockingtype_code,
       instrument.country_of_incorporation,
       instrument.fap_fund,
       instrument.moody_rating,
       instrument.norwegian_report,
       instrument.report_asset_class,
       instrument.bond_interest_rate,
       instrument.finnish_name,
       instrument.english_name,
       instrument.swedish_name,
       instrument.tax_stamp,
       instrument.dima_issuer_rel,
       instrument.client_rep_name,
       instrument.country,
       instrument.country_name,
       instrument.isda_taxonomy,
       instrument.isda_taxonomy_name,
       instrument.extranet_classification,
       instrument.extranet_country,
       instrument.extranet_asset,
       instrument.classification_of_assets,
       instrument.cfi_category_group,
       instrument.cfi_attribute_1,
       instrument.cfi_attribute_2,
       instrument.cfi_attribute_3,
       instrument.cfi_attribute_4,
       instrument.gics_db_sector_number,
       instrument.asset_class_di,
       instrument.country_of_risk,
       instrument.region_by_country_of_risk,
       instrument.country_name_of_risk,
       instrument.gics_db_industry_group_number,
       instrument.gics_db_industry_group_da,
       instrument.gics_db_industry_group_name,
       instrument.gics_db_industry_number,
       instrument.gics_db_industry_da,
       instrument.gics_db_industry_name,
       instrument.gics_db_sub_industry_number,
       instrument.gics_db_sub_industry_name,
       instrument.gics_db_sector_da,
       instrument.gics_db_sector_name,
       instrument.issuer_group,
       instrument.issuer_group_name,
       instrument.dst_sector_number,
       instrument.dst_industry_number,
       instrument.dst_industry_code,
       instrument.company_to_parent,
       instrument.type_of_bond,
       instrument.bloomberg_security_type_2,
       instrument.bond_name,
       instrument.gl_classification,
       instrument.gl_classification_name,
       instrument.gics_db_sub_industry_da,
       instrument.dst_sector,
       instrument.dst_sector_da,
       instrument.dst_industry,
       instrument.dst_industry_da,
       instrument.underlying_scd_ins_type,
       instrument.underlying_scd_ins_type_txt,
       instrument.underlying_ins_type,
       instrument.underlying_ins_type_name,
       instrument.pa_fund_type,
       instrument.di_reg_market,
       instrument.s_batchid,
       instrument.ctm_alert_code,
       instrument.vp,
       instrument.stina_ins_group,
       instrument.issue_date,
       instrument.coupon_term_length,
       instrument.coupon_term_unit,
       instrument.scd_underlying_type,
       instrument.scd_underlying_type_txt,
       instrument.underlying_issuer_country,
       instrument.stina_issuecategory,
       instrument.stina_maturity,
       instrument.totv,
       instrument.stina_country,
       instrument.stina_sector,
       instrument.stina_currency,
       instrument.stina_underlyingasset,
       instrument.stina_couponfreq,
       instrument.stina_vpreg,
       instrument.stina_industry,
       instrument.h_country_id_issuer,
       instrument.h_instrument_id_underlying,
       instrument.contract_size,
       instrument.scd_security_group,
       instrument.scd_security_group_name,
       instrument.quote_type,
       instrument.quote_type_txt,
       instrument.quotation,
       instrument.quotation_txt,
       instrument.bloomberg_pricenotation,
       instrument.biz_days_convention,
       instrument.biz_days_convention_txt,
       instrument.day_count_convention,
       instrument.day_count_convention_txt,
       instrument.cash_settlement_method,
       instrument.cash_settlement_method_txt,
       instrument.coupon_term_unit_txt,
       instrument.seq_convention_coupons,
       instrument.seq_convention_coupons_txt,
       instrument.end_of_month_convention,
       instrument.end_of_month_convention_txt,
       instrument.exercise_style,
       instrument.exercise_style_txt,
       instrument.option_type,
       instrument.option_type_txt,
       instrument.premium_type,
       instrument.premium_type_txt,
       instrument.settlement_method,
       instrument.settlement_method_txt,
       instrument.swap_start,
       instrument.swap_start_txt,
       instrument.swap_unit,
       instrument.swap_unit_txt,
       instrument.term_unit,
       instrument.term_unit_txt,
       instrument.settlement_days,
       instrument.fee_rate,
       instrument.non_concurrent,
       instrument.exercise_dates,
       instrument.fixing_days_at_maturity,
       instrument.swap_length,
       instrument.first_fixing_date,
       instrument.fixing_yield_curve,
       instrument.holiday_adjust_coupons,
       instrument.second_last_coupon,
       instrument.spread_rate,
       instrument.term_length,
       instrument.fixing_date,
       instrument.maturity_price,
       instrument.coupon_from_date,
       instrument.final_maturity_date,
       instrument.first_coupon_payment,
       instrument.active,
       instrument.figi,
       instrument.dcn_risk_category,
       instrument.dcn_risk_level,
       instrument.dcn_sector,
       instrument.dcn_sector_name,
       instrument.gics_db_industry_group_no,
       instrument.gics_db_industry_no,
       instrument.fx_factor,
       instrument.fx_tics,
       instrument.forward_rate,
       instrument.aif_control_structure,
       instrument.stina_instype_balbeh,
       instrument.stina_instype_baloevr,
       instrument.stina_instype_supder,
       instrument.industry_sector,
       instrument.bm_asset_class,
       instrument.secnamerow2,
       instrument.smf_ongoing_cost_ex_post,
       instrument.smf_management_fee_ex_post,
       instrument.smf_transaction_cost_ex_post,
       instrument.smf_incidential_cost_ex_post,
       instrument.smf_created_date,
       instrument.primary_exchange_mic,
       instrument.primary_exchange_mic_name,
       instrument.aif_illiquid_sec_caps,
       instrument.aif_illiquid_sec_name,
       instrument.aif_illiquid_sec_desc,
       instrument.aif_exposure_macro_asset_name,
       instrument.aif_exposure_macro_asset_desc,
       instrument.aif_exposure_asset_name,
       instrument.aif_exposure_asset_desc,
       instrument.aif_exposure_sub_asset_name,
       instrument.aif_exposure_sub_asset_desc,
       instrument.aif_expo_no_macro_asset_type,
       instrument.aif_expo_no_macro_asset_name,
       instrument.aif_expo_no_macro_asset_desc,
       instrument.aif_expo_no_asset_type,
       instrument.aif_expo_no_asset_name,
       instrument.aif_expo_no_asset_desc,
       instrument.aif_expo_no_sub_asset_type,
       instrument.aif_expo_no_sub_asset_name,
       instrument.aif_expo_no_sub_asset_desc,
       instrument.aif_expo_fi_macro_asset_type,
       instrument.aif_expo_fi_macro_asset_name,
       instrument.aif_expo_fi_macro_asset_desc,
       instrument.aif_expo_fi_asset_type,
       instrument.aif_expo_fi_asset_name,
       instrument.aif_expo_fi_asset_desc,
       instrument.aif_expo_fi_sub_asset_type,
       instrument.aif_expo_fi_sub_asset_name,
       instrument.aif_expo_fi_sub_asset_desc,
       instrument.aif_turnover_macro_asset_name,
       instrument.aif_turnover_macro_asset_desc,
       instrument.aif_turnover_asset_name,
       instrument.aif_turnover_asset_desc,
       instrument.aif_turnover_sub_asset_name,
       instrument.aif_turnover_sub_asset_desc,
       instrument.id_exch_symbol,
       instrument.oecd,
       instrument.eu_union,
       instrument.repo_yield,
       instrument.fx_discount_factor,
       instrument.fx_discount_convention,
       instrument.underlying_sedol,
       instrument.underlying_quotation_currency,
       instrument.underlying_id_exch_symbol,
       instrument.underlying_maturity_date,
       instrument.mast_asset_class,
       instrument.mast_file,
       instrument.fx_trade_leg,
       instrument.euro_zone,
       instrument.last_trade_date,
       instrument.underlying_last_trade_date,
       instrument.dummy,
       instrument.quote_factor,
       instrument.blb_green_bonds,
       instrument.blb_social_bond,
       instrument.blb_sustainabil_bond,
       instrument.instrument_name_norm,
       instrument.fi_sf_sector,
       instrument.fi_sf_sector_name,
       instrument.fi_sf_sector_desc,
       instrument.fi_cntr,
       instrument.fi_cntr_name,
       instrument.fi_region,
       instrument.fi_region_name,
       instrument.quoted,
       instrument.quoted_txt,
       instrument.fi_asset_class,
       instrument.fi_asset_class_name,
       instrument.fi_asset_class_short,
       instrument.redfindate,
       instrument.isin_fi,
       instrument.sec_d_currency_id,
       instrument.d_party_id,
       instrument.underly_instrument_sk,
       instrument.underly_d_instrument_id,
       instrument.coupon_type,
       instrument.coupon_type_txt,
       instrument.refr_term_unit,
       instrument.refr_term_unit_txt,
       instrument.refr_term_length,
       instrument.frequency,
       instrument.frequency_txt
from dwh_dm.d_instrument instrument
where 1=1;

   COMMENT ON COLUMN "D_INSTRUMENT_V"."D_INSTRUMENT_ID" IS 'Primary key on the table D_INSTRUMENT (sequence generated surogate key) #DM: dwh_dm.d_instrument.d_instrument_id';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."INSTRUMENT" IS 'Instrument short name #SCD: tmsdat.securities.secshort';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."INSTRUMENT_NAME" IS 'Instrument long name #SCD: tmsdat.securities.secname';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."INSTRUMENT_SK" IS 'Instrument source key #SCD: tmsdat.securities.secik';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."NOMINAL_SIZE" IS 'Nominal per share #SCD: tmsdat.securities.secsize';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."SECNO" IS 'Security No. #SCD: tmsdat.securities.secno';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."ISIN" IS 'ISIN #SCD: tmsdat.securities.isin';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."LEGNO_INS" IS 'Leg No. #SCD: tmsdat.fxforwlegs.legno,tmsdat.fxoptionlegs.legno,tmsdat.mmdepositlegs.legno,tmsdat.swaplegs.legno,tmsdat.cdswaplegs.legno,0';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."BLOOMBERG_CODE" IS 'Bloomberg code #SCD: tmsdat.securities.bloombergcode';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."CUSIP" IS 'CUSIP (Committee on Uniform Security Identification Procedures) #SCD: tmsdat.securities.cusip';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."MATURITY_DATE" IS 'Maturity date #SCD: tmsdat.cfds.matdate, tmsdat.fras.matdate, tmsdat.futures.matdate, tmsdat.fxforwlegs.matdate, tmsdat.fxoptions.matdate, tmsdat.lendings.matdate, tmsdat.secoptions.matdate, tmsdat.swaptions.matdate';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."REUTER_CODE" IS 'Reuter ticker code #SCD: tmsdat.securities.reutercode';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."SEDOL" IS 'SEDOL (Stock Exchange Daily Official List) #SCD: tmsdat.securities.sedol';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."INS_TYPE" IS 'Instrument type #SCD: tmsdat.sectypes.sectype via tmsdat.securities.sectypeik';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."INS_TYPE_NAME" IS 'Instrument type name (sectype) #SCD: tmsdat.sectypes.sectypename via tmsdat.securities.sectypeik';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."INS_GROUP" IS 'Instrument group #SCD: secgroups.secgrp via tmsdat.securities.secgrpik';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."INS_GROUP_NAME" IS 'Instrument group name #SCD: secgroups.secgrpname via tmsdat.securities.secgrpik';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."EXCHANGE" IS 'Real stock exchange #SCD: partners.par via tmsdat.securities.excik';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."EXCHANGE_NAME" IS 'Exchange name #SCD: partners.parname via tmsdat.securities.excik';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."MIC_CODE" IS 'MIC (Market Identifier Code) ISO10383 #SCD: tmsdat.exchanges.mic';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."QUOTATION_CURRENCY" IS 'Qoutation currency #SCD: tmsdat.currencies.cur via tmsdat.fxforwlegs.curik,tmsdat.fxoptionlegs.curik,tmsdat.cdswaplegs.curik,tmsdat.securities.curik';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."QUOTATION_CURRENCY_NAME" IS 'Qoutation currency name #SCD: tmsdat.currencies.curname via tmsdat.fxforwlegs.curik,tmsdat.fxoptionlegs.curik,tmsdat.cdswaplegs.curik,tmsdat.securities.curik';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."ISSUER_NAME" IS 'Issuer name #SCD: tmsdat.partners.parname via tmsdat.securities.parik';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."ISSUER" IS 'Issuer #SCD: tmsdat.partners.par via tmsdat.securities.parik';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."D_COUNTRY_ID_ISSUER" IS 'Issuer''s country through the country registered on the counter part which the issuer is. #DM: dwh_dm.d_country.d_country_id corresponds to tmsdat.countries.cty';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."AIF_TRANCHED_SEC" IS 'AIF Tranched Securitisation #SCD: tmsdat.businessclasslevel5.bclev5 for tmsdat.businessclassdefs.bcdef=''AIF TRANCHED SECURI''';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."AIF_ILLIQUID_SEC" IS 'AIF illiquid securities #SCD: first word of tmsdat.businessclasslevel5.bclev5 for tmsdat.businessclassdefs.bcdef=''AIF ILLIQUID SECURIT''';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."DC_SECTORS_DMEM" IS 'DC Sectors for ALL bonds - DMEM #SCD: tmsdat.businessclasslevel1.bclev1 for tmsdat.businessclassdefs.bcdef=''DC_SECTORS''';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."DC_SECTORS_CLASS" IS 'DC Sectors for ALL bonds - Class #SCD: tmsdat.businessclasslevel2.bclev2 for tmsdat.businessclassdefs.bcdef=''DC_SECTORS''';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."DC_SECTORS_DETAIL1" IS 'DC Sectors for ALL bonds - Detail1 #SCD: tmsdat.businessclasslevel3.bclev3 for tmsdat.businessclassdefs.bcdef=''DC_SECTORS''';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."DC_SECTORS_DETAIL2" IS 'DC Sectors for ALL bonds - Detail2 #SCD: tmsdat.businessclasslevel4.bclev4 for tmsdat.businessclassdefs.bcdef=''DC_SECTORS''';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."DC_SECTORS_SUB" IS 'DC Sectors for ALL bonds - Sub #SCD: tmsdat.businessclasslevel5.bclev5 for tmsdat.businessclassdefs.bcdef=''DC_SECTORS''';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."GICS_DB_SECTOR" IS 'GICS sector code name from host #SCD: tmsdat.businessclasslevel2.bclev2name for tmsdat.businessclassdefs.bcdef=''GICS_DB''';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."GICS_DB_INDUSTRY_GROUP" IS 'GICS industry group code name from host #SCD: tmsdat.businessclasslevel3.bclev3name for tmsdat.businessclassdefs.bcdef=''GICS_DB''';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."GICS_DB_INDUSTRY" IS 'GICS industry code name from host #SCD: tmsdat.businessclasslevel4.bclev4name for tmsdat.businessclassdefs.bcdef=''GICS_DB''';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."GICS_DB_SUB_INDUSTRY" IS 'GICS sub-industry code name from host #SCD: tmsdat.businessclasslevel5.bclev5name for tmsdat.businessclassdefs.bcdef=''GICS_DB''';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."AIF_EXPOSURE_MACRO_ASSET_TYPE" IS 'AIF Asset type typology exposures - Macro Asset type #SCD: tmsdat.businessclasslevel3.bclev3 for tmsdat.businessclassdefs.bcdef=''AIF DC EXPOSURE TYPE'' primarily and tmsdat.businessclassdefs.bcdef=''AIF EXPOSURE TYPE'' secondarily';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."AIF_EXPOSURE_ASSET_TYPE" IS 'AIF Asset type typology exposures - Asset type #SCD: tmsdat.businessclasslevel4.bclev4 for tmsdat.businessclassdefs.bcdef=''AIF DC EXPOSURE TYPE'' primarily and tmsdat.businessclassdefs.bcdef=''AIF EXPOSURE TYPE'' secondarily';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."AIF_EXPOSURE_SUB_ASSET_TYPE" IS 'AIF Asset type typology exposures - Sub-asset type #SCD: tmsdat.businessclasslevel5.bclev5 for tmsdat.businessclassdefs.bcdef=''AIF DC EXPOSURE TYPE'' primarily and tmsdat.businessclassdefs.bcdef=''AIF EXPOSURE TYPE'' secondarily';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."AIF_TURNOVER_MACRO_ASSET_TYPE" IS 'AIF Asset type typology for turnover reporting - Macro Asset type #SCD: tmsdat.businessclasslevel3.bclev3 for tmsdat.businessclassdefs.bcdef=''AIF DC TURNOVER TYPE'' primarily and tmsdat.businessclassdefs.bcdef=''AIF TURNOVER TYPE'' secondarily';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."AIF_TURNOVER_ASSET_TYPE" IS 'AIF Asset type typology for turnover reporting - Asset type #SCD: tmsdat.businessclasslevel4.bclev4 for tmsdat.businessclassdefs.bcdef=''AIF DC TURNOVER TYPE'' primarily and tmsdat.businessclassdefs.bcdef=''AIF TURNOVER TYPE'' secondarily';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."AIF_TURNOVER_SUB_ASSET_TYPE" IS 'AIF Asset type typology for turnover reporting - Sub-asset type #SCD: tmsdat.businessclasslevel5.bclev5 for tmsdat.businessclassdefs.bcdef=''AIF DC TURNOVER TYPE'' primarily and tmsdat.businessclassdefs.bcdef=''AIF TURNOVER TYPE'' secondarily';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."SCD_INS_TYPE" IS 'Instrument type (from SimCorp Dimension) as a number #SCD: tmsdat.securities.instype';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."SCD_INS_TYPE_TXT" IS 'Instrument type (from SimCorp Dimension) as text #SCD: tmsdat.securities.instype (domain translated)';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."CALL_PUT" IS 'Call/Put indicator (For options) #SCD: tmsdat.secoptions.opttype (translated to ''P'' for put and ''C'' for call)';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."STRIKE_PRICE" IS 'Strike price #SCD: tmsdat.secoptions.strprice';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."REGULATED_MARKET" IS 'Reguleret marked - felt fra HOST Master File (Security free code 88) #SCD: tmsdat.secfreecodes108.secfc108';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."CFI_CODE" IS 'CFI code (Classification of Financial Instruments ISO 10962) #SCD: tmsdat.businessclasslevel5.bclev5name for tmsdat.businessclassdefs.bcdef=''CFI_CODE''';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."DWH_CREATED_DATE" IS 'Mart created date';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."DWH_CREATED_BY" IS 'Mart created by';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."DWH_CHANGED_DATE" IS 'Mart changed date';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."DWH_CHANGED_BY" IS 'Mart chanhed by';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."SERIAL_NO" IS 'Security serial number, has to be 0 for most current version of a given security #SCD: tmsdat.securities.secserno';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."ISSUER_COUNTRY" IS 'Issuer country #SCD: tmsdat.sountries.cty';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."ISSUER_COUNTRY_NAME" IS 'Issuer country name #SCD: tmsdat.sountries.cty';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."ISSUER_OECD" IS 'Indicates whether or not the issuer is in an OECD country #SCD: tmsdat.countryzones.ctyzone (translated ''OECD'' to 1 other to 0) ';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."ISSUER_EEA" IS 'Indicates whether or not the issuer is in an EEA country (according to the AIF country zone)  #SCD: tmsdat.countryzones.ctyzone where ctyzone like ''AIF%''';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."CIC_CODE" IS 'CIC code #SCD: tmsdat.countries.cty concatanated with tmsdat.businessclasslevel5.bclev5 for tmsdat.businessclassdefs.bcdef=''CIC''';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."CIC_TEXT" IS 'CIC code text #SCD: tmsdat.businessclasslevel5.bclev5 for tmsdat.businessclassdefs.bcdef=''CIC''';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."CIC_COUNTRY" IS 'CIC country #SCD: tmsdat.countries.cty';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."UNDERLYING_D_INSTRUMENT_ID" IS 'Mart ID of the underlying instrument';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."UNDERLYING_INSTRUMENT" IS 'Underlying instrument #SCD: tmsdat.securities.secshort';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."UNDERLYING_INSTRUMENT_NAME" IS 'Underlying instrument name #SCD: tmsdat.securities.secname';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."UNDERLYING_ISIN" IS 'ISIN of the underlying instrument  #SCD: tmsdat.securities.isin';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."BLM_FUND" IS 'BLM Fund Type (Security free code 47) #SCD: tmsdat.secfreecodes67.secfc67';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."BLM_FUND_NAME" IS 'BLM Fund Type (Security free code 47 name) #SCD: tmsdat.secfreecodes67.secfc67name';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."BLOCKINGTYPE_CODE" IS 'Blocking type #SCD: tmsdat.blocktypes.blk via tmsdat.securities.blkik';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."COUNTRY_OF_INCORPORATION" IS 'Country on incoporation #SCD: tmsdat.securities.secfc128';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."FAP_FUND" IS 'Inv. For. - Bruges i FAP (Security free code 10) #SCD: tmsdat.secfreecodes10.secfc10';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."MOODY_RATING" IS 'Security free code 2 (Text) (Security free code 2) #SCD: tmsdat.secfreecodes2.secfc2';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."NORWEGIAN_REPORT" IS 'DCN - Norske rapporter (Security free code 48) #SCD: tmsdat.secfreecodes68.secfc68';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."REPORT_ASSET_CLASS" IS 'Aktivklasse til rapporter (Security reporting code 10) #SCD: tmsdat.secfreecodes20.secfc20';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."BOND_INTEREST_RATE" IS 'Bond interest rate #SCD: tmsdat.ibi.courate';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."FINNISH_NAME" IS 'Security name in Finnish #SCD: tmsdat.securities.secfc81';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."ENGLISH_NAME" IS 'Security name in English #SCD: tmsdat.securities.secfc83';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."SWEDISH_NAME" IS 'Security name in Finnish #SCD: tmsdat.securities.secfc82';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."TAX_STAMP" IS 'DIMA issuer rel SECURITY_TYP2 (from Bloomberg) (Security free code 106) #SCD: tmsdat.securities.secfc126';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."DIMA_ISSUER_REL" IS 'Tax stamp aka. SECURITY_TYP (from Bloomberg) (Security free code 105) #SCD: tmsdat.securities.secfc125';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."CLIENT_REP_NAME" IS 'Name for Client reporting #SCD: tmsdat.securities.secnamerow1';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."COUNTRY" IS 'Country #SCD: tmsdat.countries.cty via tmsdat.securities.ctyik';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."COUNTRY_NAME" IS 'Country name #SCD: tmsdat.countries.ctyname via tmsdat.securities.ctyik';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."ISDA_TAXONOMY" IS 'ISDA Taxonomy - EMIR Reporting (Security free code 114) #SCD: tmsdat.secfreecodes144.secfc144';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."ISDA_TAXONOMY_NAME" IS 'ISDA Taxonomy - EMIR Reporting (Security free code 114 name) #SCD: tmsdat.secfreecodes144.secfc144name';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."EXTRANET_CLASSIFICATION" IS 'Security group code ''SGC: Extranettet Classification''.';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."EXTRANET_COUNTRY" IS 'Extranet country #SCD: tmsdat.groupcodevals.groupcodeval for tmsdat.groupcodedefs.groupcode = ''SGC: EXTRANETTET COUNTRY''';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."EXTRANET_ASSET" IS 'Extranet asset #SCD: tmsdat.groupcodevals.groupcodeval for tmsdat.groupcodedefs.groupcode = ''SGC: EXTRANETTET ASSET''';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."CLASSIFICATION_OF_ASSETS" IS 'Classification of assets #SCD: tmsdat.groupcodevals.groupcodeval for tmsdat.groupcodedefs.groupcode = ''SGC: Classification of assets''';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."CFI_CATEGORY_GROUP" IS 'CFI code - Category and group #SCD: tmsdat.businessclasslevel1.bclev1 for tmsdat.businessclassdefs.bcdef=''CFI_CODE''';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."CFI_ATTRIBUTE_1" IS 'CFI code - Attribute 1 #SCD: tmsdat.businessclasslevel2.bclev2 for tmsdat.businessclassdefs.bcdef=''CFI_CODE''';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."CFI_ATTRIBUTE_2" IS 'CFI code - Attribute 2 #SCD: tmsdat.businessclasslevel3.bclev3 for tmsdat.businessclassdefs.bcdef=''CFI_CODE''';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."CFI_ATTRIBUTE_3" IS 'CFI code - Attribute 3 #SCD: tmsdat.businessclasslevel4.bclev4 for tmsdat.businessclassdefs.bcdef=''CFI_CODE''';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."CFI_ATTRIBUTE_4" IS 'CFI code - Attribute 4 #SCD: tmsdat.businessclasslevel5.bclev5 for tmsdat.businessclassdefs.bcdef=''CFI_CODE''';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."GICS_DB_SECTOR_NUMBER" IS 'GICS sector code number from host #SCD: tmsdat.businessclasslevel2.bclev2 for tmsdat.businessclassdefs.bcdef=''GICS_DB'' converted to number';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."ASSET_CLASS_DI" IS 'Asset Class DI #SCD: tmsdat.groupcodevals.groupcodeval for tmsdat.groupcodedefs.groupcode = ''SGC: Asset Class (DI)''';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."COUNTRY_OF_RISK" IS 'Country of risk #SCD: tmsdat.groupcodevals.groupcodeval for tmsdat.groupcodedefs.groupcode = ''AM: Country of Risk''';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."REGION_BY_COUNTRY_OF_RISK" IS 'Region by contry of Risk #SCD: tmsdat.groupcodevals.groupcodeval for tmsdat.groupcodedefs.groupcode = ''AM: REGION BY CTY OF RISK''';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."COUNTRY_NAME_OF_RISK" IS 'Country name of risk  #SCD: tmsdat.countries.ctyname via tmsdat.groupcodevals.groupcodeval for tmsdat.groupcodedefs.groupcode = ''AM: Country of Risk''';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."GICS_DB_INDUSTRY_GROUP_NUMBER" IS 'GICS industry group code number from host #SCD: tmsdat.businessclasslevel3.bclev3 for tmsdat.businessclassdefs.bcdef=''GICS_DB'' converted to number';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."GICS_DB_INDUSTRY_GROUP_DA" IS 'GICS industry group code Danish name from host #SCD: tmsdat.businessclasslevel3.bclev3desc for tmsdat.businessclassdefs.bcdef=''GICS_DB''';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."GICS_DB_INDUSTRY_GROUP_NAME" IS 'GICS industry group code name from host #SCD: tmsdat.businessclasslevel3.bclev3name for tmsdat.businessclassdefs.bcdef=''GICS_DB''';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."GICS_DB_INDUSTRY_NUMBER" IS 'GICS industry code number from host #SCD: tmsdat.businessclasslevel4.bclev4 for tmsdat.businessclassdefs.bcdef=''GICS_DB'' converted to number';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."GICS_DB_INDUSTRY_DA" IS 'GICS industry code Danish name from host #SCD: tmsdat.businessclasslevel4.bclev4desc for tmsdat.businessclassdefs.bcdef=''GICS_DB''';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."GICS_DB_INDUSTRY_NAME" IS 'GICS industry code name from host #SCD: tmsdat.businessclasslevel4.bclev4name for tmsdat.businessclassdefs.bcdef=''GICS_DB''';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."GICS_DB_SUB_INDUSTRY_NUMBER" IS 'GICS sub-industry code number from host #SCD: tmsdat.businessclasslevel5.bclev5 for tmsdat.businessclassdefs.bcdef=''GICS_DB'' converted to number';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."GICS_DB_SUB_INDUSTRY_NAME" IS 'GICS sub-industry name from host #SCD: tmsdat.businessclasslevel5.bclev5name for tmsdat.businessclassdefs.bcdef=''GICS_DB''';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."GICS_DB_SECTOR_DA" IS 'GICS sector code Danish name from host #SCD: tmsdat.businessclasslevel2.bclev2desc for tmsdat.businessclassdefs.bcdef=''GICS_DB''';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."GICS_DB_SECTOR_NAME" IS 'GICS sector code name from host #SCD: tmsdat.businessclasslevel2.bclev2name for tmsdat.businessclassdefs.bcdef=''GICS_DB''';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."ISSUER_GROUP" IS 'Issuer group #SCD: tmsdat.partnergroups.pargrp';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."ISSUER_GROUP_NAME" IS 'Issuer group name #SCD: tmsdat.partnergroups.pargrpname';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."DST_SECTOR_NUMBER" IS 'DST sector number #SCD: tmsdat.partners.parfc22 via issuer';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."DST_INDUSTRY_NUMBER" IS 'DST industry number #SCD: tmsdat.partners.parfc23 via issuer';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."DST_INDUSTRY_CODE" IS 'DST industry number #SCD: tmsdat.partners.parfc23 via issuer (translated)';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."COMPANY_TO_PARENT" IS 'DST sector number #SCD: tmsdat.parfreecodes53.parfc53 via issuer';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."TYPE_OF_BOND" IS 'Type of bond  (Security free code 102) #SCD: tmsdat.securities.secfc122';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."BLOOMBERG_SECURITY_TYPE_2" IS 'Bloomberg security type 2 (Security free code 106) #SCD: tmsdat.securities.secfc126';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."BOND_NAME" IS 'Bond name (Security free code 150) #SCD: tmsdat.securities.secfc180';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."GL_CLASSIFICATION" IS 'DK - G/L classification (Security free code 76) #SCD: tmsdat.secfreecodes96.secfc96';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."GL_CLASSIFICATION_NAME" IS 'DK - G/L classification (Security free code 76 name) #SCD: tmsdat.secfreecodes96.secfc96name';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."GICS_DB_SUB_INDUSTRY_DA" IS 'GICS sub-industry code Danish name from host #SCD: tmsdat.businessclasslevel5.bclev5desc for tmsdat.businessclassdefs.bcdef=''GICS_DB''';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."DST_SECTOR" IS 'DST sector name #SCD: tmsdat.partners.parfc22 via issuer (translated)';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."DST_SECTOR_DA" IS 'DST sector name in Danish #SCD: tmsdat.partners.parfc22 via issuer (translated)';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."DST_INDUSTRY" IS 'DST industry #SCD: tmsdat.partners.parfc23 via issuer (translated)';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."DST_INDUSTRY_DA" IS 'DST industry name in Danish #SCD: tmsdat.partners.parfc23 via issuer (translated)';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."UNDERLYING_SCD_INS_TYPE" IS 'SCD Instrument type (number) of the underlying instrument #SCD: tmsdat.securities.instype';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."UNDERLYING_SCD_INS_TYPE_TXT" IS 'SCD Instrument type (text) of the underlying instrument #SCD: tmsdat.securities.instype (domain translated)';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."UNDERLYING_INS_TYPE" IS 'Instrument type name (called Security type name in SCD) of the underlying instrument #SCD: tmsdat.sectypes.sectype';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."UNDERLYING_INS_TYPE_NAME" IS 'Instrument type name (called Security type name in SCD) of the underlying instrument  #SCD: tmsdat.sectypes.sectypename';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."PA_FUND_TYPE" IS 'Indicate PA fund #SCD: tmsdat.businessclasslevel5.bclev5 for tmsdat.businessclassdefs.bcdef=''PA FUND''';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."DI_REG_MARKET" IS 'Regulated market (according to DI) business classification ''REGULERET MARKED'' level 5 modified to 0, 1, or blank #SCD: tmsdat.businessclasslevel5.bclev5 for tmsdat.businessclassdefs.bcdef=''REGULERET MARKED''';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."S_BATCHID" IS 'EDW batch ID, used for incremental load)';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."CTM_ALERT_CODE" IS 'CTM - Alert code (Security free code 45) SCD: tmsdat.secfreecodes65.secfc65';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."VP" IS 'Registered in VP, derived from the CTM - Alert code  SCD: tmsdat.secfreecodes65.secfc65 (translated)';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."STINA_INS_GROUP" IS 'Static data used in STINA (xml field Group), complex logic on ins_type, issuer_group, issuer and company_to_parent';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."ISSUE_DATE" IS 'Issue date #SCD: tmsdat.securities.issdate';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."COUPON_TERM_LENGTH" IS 'Coupon term length #SCD: tmsdat.swaptions.coufreqlen';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."COUPON_TERM_UNIT" IS 'Coupon term unit #SCD: tmsdat.swaptions.coufrequnit';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."SCD_UNDERLYING_TYPE" IS 'Underlying type #SCD: tmsdat.bankaccounts.underlytype, tmsdat.cfds.underlytype, tmsdat.futures.underlytype, tmsdat.lendings.underlytype, tmsdat.secoptions.underlytype';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."SCD_UNDERLYING_TYPE_TXT" IS 'Underlying type translated to text #SCD: tmsdat.bankaccounts.underlytype, tmsdat.cfds.underlytype, tmsdat.futures.underlytype, tmsdat.lendings.underlytype, tmsdat.secoptions.underlytype (domain translated)';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."UNDERLYING_ISSUER_COUNTRY" IS 'Issuer country of the underlying instrument #SCD: tmsdat.countries.cty';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."STINA_ISSUECATEGORY" IS 'STINA Issue category, column derived from multiple columns and a complex case statement. Defined in the mapping DWH_DM_STG.INSTRUMENT_COMBINED.';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."STINA_MATURITY" IS 'STINA maturity, Complex condition returning a code used for the STINA reporting';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."TOTV" IS 'Indication of whether the security is ToTV according to ESMA #SCD: tmsdat.businessclasslevel5.bclev5 for tmsdat.businessclassdefs.bcdef=''IS MIFID2 TOTV''';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."STINA_COUNTRY" IS 'STINA country, column derived from multiple country columns and only countries on the approved list, e.g. not ''EU''. Defined in the mapping DWH_DM_STG.INSTRUMENT_COMBINED.';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."STINA_SECTOR" IS 'STINA Industry, column derived from DST_INDUSTRY_NUMBER, but only industries on the approved list. Defined in the mapping DWH_DM_STG.INSTRUMENT_COMBINED.';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."STINA_CURRENCY" IS 'STINA currency, column derived quotation currency, but only currencies on the approved list, e.g. not ''DEM''. Defined in the mapping DWH_DM_STG.INSTRUMENT_COMBINED.';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."STINA_UNDERLYINGASSET" IS 'STINA underlying asses, column derived from multiple columns and a complex case statement';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."STINA_COUPONFREQ" IS 'STINA counpon frequency, column derived from multiple columns and a complex case statement';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."STINA_VPREG" IS 'STINA registered in VP';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."STINA_INDUSTRY" IS 'STINA Industry, column derived from DST_INDUSTRY_NUMBER, bu only countries on the approved list. Defined in the mapping DWH_DM_STG.INSTRUMENT_COMBINED.';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."H_COUNTRY_ID_ISSUER" IS 'EDW hub ID for Country of the issuer #EDW: H_COUNTRY.H_COUNTRY_ID';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."H_INSTRUMENT_ID_UNDERLYING" IS 'EDW hub ID for Country of the issuer #EDW: H_COUNTRY.H_COUNTRY_ID';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."CONTRACT_SIZE" IS 'Contract size #SCD: tmsdat.cfds.consize, tmsdat.futures.consize, tmsdat.secoptions.consize';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."SCD_SECURITY_GROUP" IS 'Security group #SCD: secgroups.secgrp via tmsdat.securities.secgrpik';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."SCD_SECURITY_GROUP_NAME" IS 'Security group name #SCD: secgroups.secgrpname via tmsdat.securities.secgrpik';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."QUOTE_TYPE" IS 'Quote type #SCD: tmsdat.securities.quotetype';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."QUOTE_TYPE_TXT" IS 'Quote type text #SCD: tmsdat.securities.quotetype (domain translated)';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."QUOTATION" IS 'Quotation #SCD: tmsdat.securities.quotation';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."QUOTATION_TXT" IS 'Quotation #SCD: tmsdat.securities.quotation (domain translated)';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."BLOOMBERG_PRICENOTATION" IS 'Bloomberg price notation (used for BTCA) complex logic on #SCD: tmsdat.securities.quotation,tmsdat.securities.quotetype,tmsdat.securities.instype';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."BIZ_DAYS_CONVENTION" IS 'Business days convention #SCD: swaptions.busconv';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."BIZ_DAYS_CONVENTION_TXT" IS 'Business days convention #SCD: swaptions.busconv (domain translated)';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."DAY_COUNT_CONVENTION" IS 'Day count convention #SCD: swaptions.calconv';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."DAY_COUNT_CONVENTION_TXT" IS 'Day count convention #SCD: swaptions.calconv (domain translated)';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."CASH_SETTLEMENT_METHOD" IS 'Cash settlement method #SCD: swaptions.cashstlmmethod';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."CASH_SETTLEMENT_METHOD_TXT" IS 'Cash settlement method #SCD: swaptions.cashstlmmethod (domain translated)';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."COUPON_TERM_UNIT_TXT" IS 'Coupon term unit #SCD: swaptions.coufrequnit (domain translated)';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."SEQ_CONVENTION_COUPONS" IS 'Sequence convention coupons #SCD: swaptions.couseqconv';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."SEQ_CONVENTION_COUPONS_TXT" IS 'Sequence convention coupons #SCD: swaptions.couseqconv (domain translated)';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."END_OF_MONTH_CONVENTION" IS 'End-of-month convention #SCD: swaptions.eomconv';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."END_OF_MONTH_CONVENTION_TXT" IS 'End-of-month convention #SCD: swaptions.eomconv (domain translated)';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."EXERCISE_STYLE" IS 'Exercise style #SCD: swaptions.exercisetype';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."EXERCISE_STYLE_TXT" IS 'Exercise style #SCD: swaptions.exercisetype (domain translated)';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."OPTION_TYPE" IS 'Option type #SCD: swaptions.opttype';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."OPTION_TYPE_TXT" IS 'Option type #SCD: swaptions.opttype (domain translated)';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."PREMIUM_TYPE" IS 'Premium type #SCD: swaptions.premtype';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."PREMIUM_TYPE_TXT" IS 'Premium type #SCD: swaptions.premtype (domain translated)';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."SETTLEMENT_METHOD" IS 'Settlement method #SCD: swaptions.stlmmethod';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."SETTLEMENT_METHOD_TXT" IS 'Settlement method #SCD: swaptions.stlmmethod (domain translated)';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."SWAP_START" IS 'Swap start #SCD: swaptions.swapstart';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."SWAP_START_TXT" IS 'Swap start #SCD: swaptions.swapstart (domain translated)';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."SWAP_UNIT" IS 'Swap unit #SCD: swaptions.swapunit';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."SWAP_UNIT_TXT" IS 'Swap unit #SCD: swaptions.swapunit (domain translated)';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."TERM_UNIT" IS 'Term unit #SCD: swaptions.termbase';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."TERM_UNIT_TXT" IS 'Term unit #SCD: swaptions.termbase (domain translated)';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."SETTLEMENT_DAYS" IS 'Settlement days #SCD: swaptions.stlmdayscont';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."FEE_RATE" IS 'Fee rate #SCD: swaptions.feerate';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."NON_CONCURRENT" IS 'Non concurrent #SCD: swaptions.ccnc';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."EXERCISE_DATES" IS 'Exercise dates #SCD: swaptions.xi_exercisedates';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."FIXING_DAYS_AT_MATURITY" IS 'Fixing days at maturity #SCD: swaptions.endfixdays';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."SWAP_LENGTH" IS 'Swap length #SCD: swaptions.swaplen';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."FIRST_FIXING_DATE" IS 'First fixing date #SCD: swaptions.fixdatefirst';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."FIXING_YIELD_CURVE" IS 'Fixing yield curve #SCD: swaptions.ycfix';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."HOLIDAY_ADJUST_COUPONS" IS 'Holiday adjust coupons #SCD: swaptions.holpre';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."SECOND_LAST_COUPON" IS 'Second-last coupon #SCD: swaptions.cousecondlast';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."SPREAD_RATE" IS 'Spread rate #SCD: swaptions.intadjspr';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."TERM_LENGTH" IS 'Term length #SCD: swaptions.termlen';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."FIXING_DATE" IS 'Fixing date #SCD: swaptions.fixdate';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."MATURITY_PRICE" IS 'Maturity price #SCD: swaptions.matprice';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."COUPON_FROM_DATE" IS 'Coupon from date #SCD: swaptions.coufromdate';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."FINAL_MATURITY_DATE" IS 'Final maturity date #SCD: swaptions.redfindate';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."FIRST_COUPON_PAYMENT" IS '1st coupon payment #SCD: swaptions.coudatefirst';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."ACTIVE" IS 'Indicates that the H_INSTRUMENT_ID remains in DWH_EDW.INSTRUMENT_VA';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."FIGI" IS 'FIGI - Financial Instrument Global Identifier (tmsdat.secids.ident for identsys = ''BB_UNIQUE'')';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."DCN_RISK_CATEGORY" IS 'Risk category for DCN, Bis vekt (Security Reporting code 4) #SCD: tmsdat.secfreecodes14.secfc14)';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."DCN_RISK_LEVEL" IS 'Risk level for DCN, Bis vekt (Security Reporting code 4 name) #SCD: tmsdat.secfreecodes14.secfc14name)';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."DCN_SECTOR" IS 'DCN Sector (Security Reporting code 3) #SCD: tmsdat.secfreecodes13.secfc13)';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."DCN_SECTOR_NAME" IS 'DCN Sector name in Norwegian (Security Reporting code 3 name) #SCD: tmsdat.secfreecodes13.secfc13)';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."FX_FACTOR" IS 'FX factor #SCD: tmsdat.fxforwlegs.fxrateint';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."FX_TICS" IS 'FX tics #SCD: tmsdat.fxforwlegs.fxtics';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."FORWARD_RATE" IS 'FX tics #SCD: tmsdat.fxforwlegs.fxrateint + tmsdat.fxforwlegs.fxtics';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."AIF_CONTROL_STRUCTURE" IS 'Indication of whether the security is Controlled structure (Business classification ''AIF_CONTROL_STRUCTUR'' level 5)';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."STINA_INSTYPE_BALOEVR" IS 'STINA instrument for schema BalOevr, contains the holding dependent values separated by / (complex case statement) uses #SCD: tmsdat.securities.instype, tmsdat.sectypes.sectype';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."STINA_INSTYPE_SUPDER" IS 'STINA instrument for schema SupDer (complex case statement) uses #SCD: tmsdat.securities.instype, tmsdat.sectypes.sectype';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."INDUSTRY_SECTOR" IS 'Industry sector #SCD: tmsdat.partners.parfc61 (joined via issuer)';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."BM_ASSET_CLASS" IS 'BM Asset class  (Business classification ''BM_AKTIVKLASSE'' level 4)';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."SECNAMEROW2" IS 'Long security name 2 #SCD: tmsdat.securities.secnamerow2';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."SMF_ONGOING_COST_EX_POST" IS 'Ongoing cost rate for fund certificat from Security Masterfile(SMF). This is used for Costs and Charges indirect costs. (app_mm.smf_fc_direct_cost_dwh.tm_fs_f_ongo_post)';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."SMF_MANAGEMENT_FEE_EX_POST" IS 'Management fee rate for fund certificat from Security Masterfile(SMF). This is used for Costs and Charges indirect costs. (app_mm.smf_fc_direct_cost_dwh.tm_fs_f_mfee_post)';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."SMF_TRANSACTION_COST_EX_POST" IS 'Transaction cost rate for fund certificat from Security Masterfile(SMF). This is used for Costs and Charges indirect costs. (app_mm.smf_fc_direct_cost_dwh.tm_fs_f_tcst_post)';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."SMF_INCIDENTIAL_COST_EX_POST" IS 'Incidential cost rate for fund certificat from Security Masterfile(SMF). This is used for Costs and Charges indirect costs. (app_mm.smf_fc_direct_cost_dwh.tm_fs_f_icst_post)';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."SMF_CREATED_DATE" IS 'Created date in source (Security Masterfile) for columns smf_ongoing_cost_ex_post, smf_management_fee_ex_post, smf_transaction_cost_ex_post, smf_incidential_cost_ex_post (app_mm.smf_fc_direct_cost_dwh.mtts)';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."PRIMARY_EXCHANGE_MIC" IS 'Primary exchange MIC #SCD tmsdat.secfreecodes157.secfc157';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."PRIMARY_EXCHANGE_MIC_NAME" IS 'Primary exchange MIC name #SCD tmsdat.secfreecodes157.secfc157';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."AIF_ILLIQUID_SEC_CAPS" IS 'AIF illiquid securities ';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."AIF_ILLIQUID_SEC_NAME" IS 'AIF illiquid securities';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."AIF_ILLIQUID_SEC_DESC" IS 'AIF illiquid securities';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."AIF_EXPOSURE_MACRO_ASSET_NAME" IS 'AIF Asset type typology exposures - Macro Asset type name  #SCD Business classifications AIF DC EXPOSURE TYPE, AIF EXPOSURE TYPE, level 3';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."AIF_EXPOSURE_MACRO_ASSET_DESC" IS 'AIF Asset type typology exposures - Macro Asset type description  #SCD Business classifications AIF DC EXPOSURE TYPE, AIF EXPOSURE TYPE, level 3';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."AIF_EXPOSURE_ASSET_NAME" IS 'AIF Asset type typology exposures - Asset type name  #SCD Business classifications AIF DC EXPOSURE TYPE, AIF EXPOSURE TYPE, level 4';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."AIF_EXPOSURE_ASSET_DESC" IS 'AIF Asset type typology exposures - Asset type description  #SCD Business classifications AIF DC EXPOSURE TYPE, AIF EXPOSURE TYPE, level 4';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."AIF_EXPOSURE_SUB_ASSET_NAME" IS 'AIF Asset type typology exposures - Sub-asset type name  #SCD Business classifications AIF DC EXPOSURE TYPE, AIF EXPOSURE TYPE, level 5';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."AIF_EXPOSURE_SUB_ASSET_DESC" IS 'AIF Asset type typology exposures - Sub-asset type description  #SCD Business classifications AIF DC EXPOSURE TYPE, AIF EXPOSURE TYPE, level 5';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."AIF_EXPO_NO_MACRO_ASSET_TYPE" IS 'AIF NO Asset type typology exposures - Macro Asset type #SCD Business classifications AIF NO EXPOSURE TYPE, AIF DC EXPOSURE TYPE, AIF EXPOSURE TYPE, level 3';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."AIF_EXPO_NO_MACRO_ASSET_NAME" IS 'AIF NO Asset type typology exposures - Macro Asset type name  #SCD Business classifications AIF NO EXPOSURE TYPE, AIF DC EXPOSURE TYPE, AIF EXPOSURE TYPE, level 3';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."AIF_EXPO_NO_MACRO_ASSET_DESC" IS 'AIF NO Asset type typology exposures - Macro Asset type description  #SCD Business classifications AIF NO EXPOSURE TYPE, AIF DC EXPOSURE TYPE, AIF EXPOSURE TYPE, level 3';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."AIF_EXPO_NO_ASSET_TYPE" IS 'AIF NO Asset type typology exposures - Asset type  #SCD Business classifications AIF NO EXPOSURE TYPE, AIF DC EXPOSURE TYPE, AIF EXPOSURE TYPE, level 4';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."AIF_EXPO_NO_ASSET_NAME" IS 'AIF NO Asset type typology exposures - Asset type name  #SCD Business classifications AIF NO EXPOSURE TYPE, AIF DC EXPOSURE TYPE, AIF EXPOSURE TYPE, level 4';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."AIF_EXPO_NO_ASSET_DESC" IS 'AIF NO Asset type typology exposures - Asset type description  #SCD Business classifications AIF NO EXPOSURE TYPE, AIF DC EXPOSURE TYPE, AIF EXPOSURE TYPE, level 4';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."AIF_EXPO_NO_SUB_ASSET_TYPE" IS 'AIF NO Asset type typology exposures - Sub-asset type  #SCD Business classifications AIF NO EXPOSURE TYPE, AIF DC EXPOSURE TYPE, AIF EXPOSURE TYPE, level 5';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."AIF_EXPO_NO_SUB_ASSET_NAME" IS 'AIF NO Asset type typology exposures - Sub-asset type name  #SCD Business classifications AIF NO EXPOSURE TYPE, AIF DC EXPOSURE TYPE, AIF EXPOSURE TYPE, level 5';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."AIF_EXPO_NO_SUB_ASSET_DESC" IS 'AIF NO Asset type typology exposures - Sub-asset type description  #SCD Business classifications AIF NO EXPOSURE TYPE, AIF DC EXPOSURE TYPE, AIF EXPOSURE TYPE, level 5';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."AIF_EXPO_FI_MACRO_ASSET_TYPE" IS 'AIF FI Asset type typology exposures - Macro Asset type #SCD Business classifications AIF FI EXPOSURE TYPE, AIF DC EXPOSURE TYPE, AIF EXPOSURE TYPE, level 3';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."AIF_EXPO_FI_MACRO_ASSET_NAME" IS 'AIF FI Asset type typology exposures - Macro Asset type name  #SCD Business classifications AIF FI EXPOSURE TYPE, AIF DC EXPOSURE TYPE, AIF EXPOSURE TYPE, level 3';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."AIF_EXPO_FI_MACRO_ASSET_DESC" IS 'AIF FI Asset type typology exposures - Macro Asset type description  #SCD Business classifications AIF FI EXPOSURE TYPE, AIF DC EXPOSURE TYPE, AIF EXPOSURE TYPE, level 3';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."AIF_EXPO_FI_ASSET_TYPE" IS 'AIF FI Asset type typology exposures - Asset type  #SCD Business classifications AIF FI EXPOSURE TYPE, AIF DC EXPOSURE TYPE, AIF EXPOSURE TYPE, level 4';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."AIF_EXPO_FI_ASSET_NAME" IS 'AIF FI Asset type typology exposures - Asset type name  #SCD Business classifications AIF FI EXPOSURE TYPE, AIF DC EXPOSURE TYPE, AIF EXPOSURE TYPE, level 4';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."AIF_EXPO_FI_ASSET_DESC" IS 'AIF FI Asset type typology exposures - Asset type description  #SCD Business classifications AIF FI EXPOSURE TYPE, AIF DC EXPOSURE TYPE, AIF EXPOSURE TYPE, level 4';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."AIF_EXPO_FI_SUB_ASSET_TYPE" IS 'AIF FI Asset type typology exposures - Sub-asset type  #SCD Business classifications AIF FI EXPOSURE TYPE, AIF DC EXPOSURE TYPE, AIF EXPOSURE TYPE, level 5';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."AIF_EXPO_FI_SUB_ASSET_NAME" IS 'AIF FI Asset type typology exposures - Sub-asset type name  #SCD Business classifications AIF FI EXPOSURE TYPE, AIF DC EXPOSURE TYPE, AIF EXPOSURE TYPE, level 5';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."AIF_EXPO_FI_SUB_ASSET_DESC" IS 'AIF FI Asset type typology exposures - Sub-asset type description  #SCD Business classifications AIF FI EXPOSURE TYPE, AIF DC EXPOSURE TYPE, AIF EXPOSURE TYPE, level 5';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."AIF_TURNOVER_MACRO_ASSET_NAME" IS 'AIF Asset type typology for turnover reporting - Macro Asset type';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."AIF_TURNOVER_MACRO_ASSET_DESC" IS 'AIF Asset type typology for turnover reporting - Macro Asset type';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."AIF_TURNOVER_ASSET_NAME" IS 'AIF Asset type typology for turnover reporting - Asset type';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."AIF_TURNOVER_ASSET_DESC" IS 'AIF Asset type typology for turnover reporting - Asset type';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."AIF_TURNOVER_SUB_ASSET_NAME" IS 'AIF Asset type typology for turnover reporting - Sub-asset type';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."AIF_TURNOVER_SUB_ASSET_DESC" IS 'AIF Asset type typology for turnover reporting - Sub-asset type';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."ID_EXCH_SYMBOL" IS 'ID_EXCH_SYMBOL / Exchange Product Code (from Bloomberg used for EMIR reporting) #SCD: tmsdat.securities.secfc94';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."OECD" IS 'OECD (Business classification ''OECD'' level 5)';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."EU_UNION" IS 'European Union (Business classification ''EU UNION'' level 5)';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."REPO_YIELD" IS 'Repo yield #SCD: tmsdat.fxforwlegs.repoyld';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."FX_DISCOUNT_CONVENTION" IS 'Discounting convention (for FX forwards) SCD: tmsdat.discconventions.calconvmm (domain translated)';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."FX_TRADE_LEG" IS 'FX trade leg #SCD: tmsdat.fxforwlegs.tradeleg';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."EURO_ZONE" IS 'Euro zone (Business classification ''EURO ZONE'' level 5)';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."LAST_TRADE_DATE" IS 'Last trade date #SCD: futures.tradedatelast,secoptions.tradedatelast,fras.tradedatelast';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."QUOTE_FACTOR" IS 'Quote factor #SCD: securities.quotefac';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."BLB_GREEN_BONDS" IS 'New Column as part of LI-760';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."BLB_SOCIAL_BOND" IS 'New Column as part of LI-760';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."BLB_SUSTAINABIL_BOND" IS 'New Column as part of LI-760';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."FI_SF_SECTOR" IS 'FI_STATISTICSFINLAND level 5';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."FI_SF_SECTOR_NAME" IS 'FI_STATISTICSFINLAND level 5 name';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."FI_SF_SECTOR_DESC" IS 'FI_STATISTICSFINLAND level 5 description';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."FI_CNTR" IS 'FI REGION & COUNTRY level 3';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."FI_CNTR_NAME" IS 'FI REGION & COUNTRY level 4';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."FI_REGION" IS 'FI REGION & COUNTRY level 5';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."FI_REGION_NAME" IS 'FI REGION & COUNTRY level 5 name';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."QUOTED" IS 'Quoted #SCD: securities.quoted';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."QUOTED_TXT" IS 'Quoted text #SCD: securities.quoted translation EN';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."FI_ASSET_CLASS" IS 'FI SIRA asset class #SCD: secfreecodes62.secfc62';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."FI_ASSET_CLASS_NAME" IS 'FI SIRA asset class name #SCD: secfreecodes62.secfc62name';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."FI_ASSET_CLASS_SHORT" IS 'FI SIRA asset class short name #SCD: secfreecodes62.secfc62short';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."REDFINDATE" IS 'Bonds final maturity date #SCD: ibi.redfindate';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."ISIN_FI" IS 'dwh_dsa_scd.a_secs_id where id_system = ISIN_FI';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."SEC_D_CURRENCY_ID" IS 'd_currency_id from dwh_dsa_scd.gg_securities.curik';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."D_PARTY_ID" IS 'dwh_dsa_scd.gg_securities.parik --> dwh_dm.h_party.party_sk';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."UNDERLY_INSTRUMENT_SK" IS 'dwh_dsa_scd.secunderly_view.underly';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."UNDERLY_D_INSTRUMENT_ID" IS 'dwh_dsa_scd.secunderly_view.underly';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."COUPON_TYPE" IS 'Interest type #SCD: tmsdat.ibi.coutype (tmsdat.swaplegs)';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."COUPON_TYPE_TXT" IS 'Interest type #SCD: tmsdat.ibi.coutype (tmsdat.swaplegs) (domain translated)';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."REFR_TERM_UNIT" IS 'Reference rate term unit #SCD: tmsdat.refratedef.termbase';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."REFR_TERM_UNIT_TXT" IS 'Reference rate term unit #SCD: tmsdat.refratedef.termbase (domain translated)';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."REFR_TERM_LENGTH" IS 'Reference rate term length #SCD: tmsdat.refratedef.termlen';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."FREQUENCY" IS 'Frequency #SCD: tmsdat.imlcontracts.imlparametersinxml (xml)';
   COMMENT ON COLUMN "D_INSTRUMENT_V"."FREQUENCY_TXT" IS 'Frequency #SCD: imlcontracts.imlparametersinxml (xml translated)';


  GRANT SELECT ON "D_INSTRUMENT_V" TO "DWH_DM_READ";
  GRANT MERGE VIEW ON "D_INSTRUMENT_V" TO "DWH_DM_STG" WITH GRANT OPTION;
  GRANT FLASHBACK ON "D_INSTRUMENT_V" TO "DWH_DM_STG" WITH GRANT OPTION;
  GRANT ON COMMIT REFRESH ON "D_INSTRUMENT_V" TO "DWH_DM_STG" WITH GRANT OPTION;
  GRANT READ ON "D_INSTRUMENT_V" TO "DWH_DM_STG" WITH GRANT OPTION;
  GRANT REFERENCES ON "D_INSTRUMENT_V" TO "DWH_DM_STG" WITH GRANT OPTION;
  GRANT UPDATE ON "D_INSTRUMENT_V" TO "DWH_DM_STG" WITH GRANT OPTION;
  GRANT DEBUG ON "D_INSTRUMENT_V" TO "DWH_DM_STG" WITH GRANT OPTION;
  GRANT QUERY REWRITE ON "D_INSTRUMENT_V" TO "DWH_DM_STG" WITH GRANT OPTION;
  GRANT INSERT ON "D_INSTRUMENT_V" TO "DWH_DM_STG" WITH GRANT OPTION;
  GRANT DELETE ON "D_INSTRUMENT_V" TO "DWH_DM_STG" WITH GRANT OPTION;
  GRANT SELECT ON "D_INSTRUMENT_V" TO "APP_PMCC";
  GRANT SELECT ON "D_INSTRUMENT_V" TO "APP_ESG";
  GRANT SELECT ON "D_INSTRUMENT_V" TO "APP_EOY" WITH GRANT OPTION;
  GRANT SELECT ON "D_INSTRUMENT_V" TO "DWH_DM_STG" WITH GRANT OPTION;
  GRANT SELECT ON "D_INSTRUMENT_V" TO "APP_PMMB";
  GRANT SELECT ON "D_INSTRUMENT_V" TO "D007838";
  GRANT SELECT ON "D_INSTRUMENT_V" TO "D007840";
  GRANT SELECT ON "D_INSTRUMENT_V" TO "D007839";
  GRANT MERGE VIEW ON "D_INSTRUMENT_V" TO "APP_DR";
  GRANT FLASHBACK ON "D_INSTRUMENT_V" TO "APP_DR";
  GRANT DEBUG ON "D_INSTRUMENT_V" TO "APP_DR";
  GRANT QUERY REWRITE ON "D_INSTRUMENT_V" TO "APP_DR";
  GRANT ON COMMIT REFRESH ON "D_INSTRUMENT_V" TO "APP_DR";
  GRANT READ ON "D_INSTRUMENT_V" TO "APP_DR";
  GRANT REFERENCES ON "D_INSTRUMENT_V" TO "APP_DR";
  GRANT UPDATE ON "D_INSTRUMENT_V" TO "APP_DR";
  GRANT SELECT ON "D_INSTRUMENT_V" TO "APP_DR";
  GRANT INSERT ON "D_INSTRUMENT_V" TO "APP_DR";
  GRANT DELETE ON "D_INSTRUMENT_V" TO "APP_DR";
  GRANT SELECT ON "D_INSTRUMENT_V" TO "APP_WAAM" WITH GRANT OPTION;
  GRANT SELECT ON "D_INSTRUMENT_V" TO "APP_WAAM_REP";
  GRANT SELECT ON "D_INSTRUMENT_V" TO "ODI_CONNECT";
  GRANT SELECT ON "D_INSTRUMENT_V" TO "INT_DCLINK";
  GRANT SELECT ON "D_INSTRUMENT_V" TO "DWH_CTRL";
  GRANT SELECT ON "D_INSTRUMENT_V" TO "APP_MIFID" WITH GRANT OPTION;
  GRANT SELECT ON "D_INSTRUMENT_V" TO "APP_MAR";
  GRANT SELECT ON "D_INSTRUMENT_V" TO "APP_EOY" WITH GRANT OPTION;
  GRANT SELECT ON "D_INSTRUMENT_V" TO "APP_DS";
  GRANT SELECT ON "D_INSTRUMENT_V" TO "DWH_DSA_SMF";
  GRANT SELECT ON "D_INSTRUMENT_V" TO "DWH_DSA_SCD" WITH GRANT OPTION;
  GRANT SELECT ON "D_INSTRUMENT_V" TO "QUOV";
  GRANT SELECT ON "D_INSTRUMENT_V" TO "INT_ESG";
  GRANT SELECT ON "D_INSTRUMENT_V" TO "APP_DIMA" WITH GRANT OPTION;
  GRANT SELECT ON "D_INSTRUMENT_V" TO "INT_REPORTING";
  GRANT SELECT ON "D_INSTRUMENT_V" TO "APP_SAS";
  GRANT SELECT ON "D_INSTRUMENT_V" TO "APP_AUTHORITY" WITH GRANT OPTION;
  GRANT SELECT ON "D_INSTRUMENT_V" TO "APP_OS";
  GRANT SELECT ON "D_INSTRUMENT_V" TO "APP_GRIP" WITH GRANT OPTION;
  GRANT SELECT ON "D_INSTRUMENT_V" TO "APP_CR" WITH GRANT OPTION;
