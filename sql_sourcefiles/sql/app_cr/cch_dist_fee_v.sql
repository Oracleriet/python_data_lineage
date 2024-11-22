
  CREATE OR REPLACE EDITIONABLE VIEW app_cr."CCH_DIST_FEE_V" ("D_PORTFOLIO_ID", "PORTFOLIO", "D_INSTRUMENT_ID", "INSTRUMENT", "CLIENT_REP_NAME", "ISIN", "INSTRUMENT_NAME", "FINNISH_NAME", "ENGLISH_NAME", "SWEDISH_NAME", "DAY_ID", "DIS", "REB", "NET") AS SELECT
    por.d_portfolio_id,
    por.portfolio,
    ins.d_instrument_id,
    ins.instrument,
    ins.client_rep_name,
    ins.isin,
    ins.instrument_name,
    ins.finnish_name,
    ins.english_name,
    ins.swedish_name,
    cdf.ult_date day_id,
    cdf.dis,
    cdf.reb,
    cdf.net
FROM app_cr.cost_distribution_fee_v cdf
JOIN dwh_dm.d_portfolio_v por on cdf.porik = por.portfolio_sk
JOIN dwh_dm.d_instrument_v ins on cdf.secik = ins.instrument_sk
WHERE cdf.dis != 0 or cdf.reb != 0;

