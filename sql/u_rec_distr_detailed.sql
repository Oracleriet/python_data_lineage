create view app_grip_read.u_rec_distr as
WITH currency_conversions AS (
    SELECT 
        au.PORIK, au.MPIK, au.SECIK, au.YM, au.YQ, au.YH, au.ULT_DATE, au.DAYS, au.CONTRACT_TYPE, au.INVESTOR_TYPE, 
        po.CLIENT_GROUP_TOP, po.CLIENT_GROUP, sec.WRAPPER, au.CTY, au.MAN_CTY, au.POR, po.PORNAME, 
        au.ACCOUNTING_YEAR, au.YM_MONTH, au.ACC_MONTH, au.ACC_YEAR, au.MP, au.FOKD, au.ISIN, sec.SECNAME, 
        sec.FULL_NAME, sec.SCD_SHORT_NAME, ce.DIS_RATE_IN_PCT, ce.RATE_SRC, au.CUR, au.FX_POR_TO_DKK, lu.PAID_TO_DB, 
        ROUND(DECODE(NVL(au.FX_POR_TO_DKK, 0), 0, NULL, au.AVG_MV_DKK / au.FX_POR_TO_DKK), 2) AS AVG_MV_CUR,
        ROUND(DECODE(NVL(au.FX_POR_TO_DKK, 0), 0, NULL, au.ULT_MV_DKK / au.FX_POR_TO_DKK), 2) AS ULT_MV_CUR,
        ROUND(DECODE(NVL(au.FX_POR_TO_DKK, 0), 0, NULL, au.DIS_DKK / au.FX_POR_TO_DKK), 2) * lu.PAID_TO_DB AS DIS_CUR,
        ROUND(DECODE(NVL(au.FX_POR_TO_DKK, 0), 0, NULL, NVL(re.REB_DKK, 0) / au.FX_POR_TO_DKK), 2) + NVL(fi.SCD_REB_CUR, 0) AS REB_CUR
    FROM 
        u_aum_monthly au
    JOIN v_securities sec ON au.FUND_FOKD = sec.SE_SECSHORT
    LEFT JOIN app_grip.am_flm_grip_rates_total_v ce 
        ON au.FUND_ISIN = ce.ISIN 
        AND au.ULT_DATE BETWEEN ce.VALID_FROM AND ce.VALID_TO
    LEFT JOIN t_income_monthly re ON au.PORIK = re.PORIK
    LEFT JOIN dwh_d_portfolio_v po ON au.PORIK = po.PORTFOLIO_SK
    LEFT JOIN t_temp_lux_dis lu ON au.FUND_ISIN = lu.ISIN
    LEFT JOIN t_temp_fi_dis fi ON au.FUND_ISIN = fi.ISIN
),
net_calculations AS (
    SELECT *,
        CASE 
            WHEN NVL(re.REB_DKK, 0) + NVL(fi.SCD_REB_DKK, 0) > NVL(au.DIS_DKK, 0) THEN
                ROUND(DECODE(NVL(au.FX_POR_TO_DKK, 0), 0, NULL, NVL(au.DIS_DKK, 0) / au.FX_POR_TO_DKK), 2)
            ELSE 
                ROUND(DECODE(NVL(au.FX_POR_TO_DKK, 0), 0, NULL, NVL(re.REB_DKK, 0) / au.FX_POR_TO_DKK), 2) + NVL(fi.SCD_REB_CUR, 0)
        END AS NET_DIS_CUR
    FROM currency_conversions
)
SELECT 
    PORIK, MPIK, SECIK, YM, YQ, YH, ULT_DATE, DAYS, CONTRACT_TYPE, INVESTOR_TYPE, 
    CLIENT_GROUP_TOP, CLIENT_GROUP, WRAPPER, CTY, MAN_CTY, POR, PORNAME, ACCOUNTING_YEAR,
    YM_MONTH, ACC_MONTH, ACC_YEAR, MP, FOKD, ISIN, SECNAME, FULL_NAME, SCD_SHORT_NAME, 
    DIS_RATE_IN_PCT, RATE_SRC, CUR, AVG_MV_CUR, ULT_MV_CUR, DIS_CUR, REB_CUR, NET_DIS_CUR
FROM net_calculations;
