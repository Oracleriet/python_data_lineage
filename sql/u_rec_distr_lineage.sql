CREATE VIEW app_grip_read."U_REC_DISTR_LINEAGE" AS
SELECT
    -- Direkte kolonner fra u_aum_monthly
    au.porik,
    au.mpik,
    au.fund_secik,
    au.ym,
    au.avg_mv_dkk,
    au.ult_mv_dkk,
    au.dis_dkk,
    au.reb_dkk,

    -- Kolonner fra dwh_d_portfolio_v
    po.portfolio_sk AS portfolio_sk,
    po.non_fund_portfolio_type AS client_group,
    po.portfolio_wrapper AS portfolio_wrapper,
    po.country AS cty,
    po.manager_country AS man_cty,
    po.portfolio_name AS porname,

    -- Kolonner fra app_grip.am_flm_grip_rates_total_v
    ce.fee_distribution_fee AS fee_distribution_fee,
    ce.isin AS ce_isin,
    ce.valid_from AS ce_valid_from,
    ce.valid_to AS ce_valid_to,

    -- Kolonner fra app_grip.grip_v_fund_costs_combined
    co.fc_rate_dis AS rate_src,
    co.fc_isin AS co_isin,
    co.fc_from_date AS co_from_date,
    co.fc_to_date AS co_to_date,

    -- Kolonner fra t_flow_fees
    flf.fund_link_valid AS fund_link_valid,
    flf.ym AS flow_ym,
    flf.porik AS flow_porik,
    flf.mpik AS flow_mpik,

    -- Kolonner, der tidligere var beregnet, men her vises datakilder
    au.avg_mv_dkk AS rb_avg_mv_dkk_source,
    au.days AS rb_days_source,
    po.portfolio_wrapper AS rb_portfolio_wrapper_source,
    ce.fee_distribution_fee AS rb_fee_distribution_fee_source,
    co.fc_rate_dis AS rb_fc_rate_source,

    -- Metadata til debug
    SYSDATE AS extraction_timestamp
FROM
    u_aum_monthly au
LEFT JOIN dwh_d_portfolio_v po ON au.porik = po.portfolio_sk
LEFT JOIN app_grip.am_flm_grip_rates_total_v ce
    ON au.fund_isin = ce.isin
    AND au.ult_date BETWEEN ce.valid_from AND ce.valid_to
LEFT JOIN app_grip.grip_v_fund_costs_combined co
    ON au.fund_isin = co.fc_isin
    AND au.ult_date BETWEEN co.fc_from_date AND co.fc_to_date
LEFT JOIN t_flow_fees flf
    ON au.ym = flf.ym
    AND au.porik = flf.porik;
