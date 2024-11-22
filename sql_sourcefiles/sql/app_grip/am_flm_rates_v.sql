
  CREATE OR REPLACE EDITIONABLE VIEW app_grip."AM_FLM_RATES_V" ("LEG_ISIN", "EFFECTIVE_FROM", "EFFECTIVE_TO", "FEE_DISTRIBUTION_FEE", "FEE_MANAGEMENT_FEE", "FEE_ADMINISTRATION_FEE", "FEE_TAX_DABONNEMENT") AS WITH merge_stuff AS
(
SELECT effective_from, effective_to, leg_isin, fee_distribution_fee, fee_management_fee, fee_operating_admin_expense, fee_administration_fee,fee_tax_dabonnement,
       ((row_number() OVER (PARTITION BY leg_isin ORDER BY effective_from)) - row_number() OVER (PARTITION BY leg_isin, fee_distribution_fee, fee_management_fee, fee_operating_admin_expense,fee_administration_fee,fee_tax_dabonnement ORDER BY effective_from)) AS MERGE
    FROM 
        (
         SELECT MIN(a.effective_from) AS effective_from, MAX(decode(a.effective_to, TO_DATE('9999-12-31','YYYY-MM-DD'), TO_DATE('4712-12-31','YYYY-MM-DD'), a.effective_to))  AS effective_to, 
                COALESCE(a.leg_isin, a.leg_security_id) leg_isin
                ,a.fee_distribution_fee, a.fee_management_fee, a.fee_operating_admin_expense, a.fee_administration_fee, fee_tax_dabonnement FROM dwh_dm.d_certificate_ver A
        WHERE COALESCE(a.leg_isin, a.leg_security_id) IS NOT NULL AND (COALESCE(a.leg_isin, a.leg_security_id) LIKE 'LU%' OR COALESCE(a.leg_isin, a.leg_security_id) LIKE 'DK%')
             AND effective_from >=TO_DATE('2018-01-01','YYYY-MM-DD')  
        GROUP BY COALESCE(a.leg_isin, a.leg_security_id),  a.fee_distribution_fee, a.fee_management_fee, a.fee_operating_admin_expense, a.fee_administration_fee, fee_tax_dabonnement, a.effective_from
        )
)

SELECT leg_isin, effective_from, nvl(LEAD(effective_from-1) OVER (PARTITION BY leg_isin ORDER BY effective_from ASC),effective_to) AS effective_to
       ,decode(substr(leg_isin,1,2),'LU',decode(sign(0.03-fee_distribution_fee),-1,1,100),1)*fee_distribution_fee AS fee_distribution_fee
       ,decode(substr(leg_isin,1,2),'LU',decode(sign(0.03-fee_management_fee),-1,1,100),1)*fee_management_fee AS fee_management_fee
       ,(nvl(decode(substr(leg_isin,1,2),'LU',decode(sign(0.03-fee_administration_fee),-1,1,100),1)*fee_administration_fee,0)+nvl(decode(substr(leg_isin,1,2),'LU',decode(sign(0.03-fee_operating_admin_expense),-1,1,100),1)*fee_operating_admin_expense,0)) AS fee_administration_fee
       ,fee_tax_dabonnement
FROM (
        SELECT leg_isin, fee_distribution_fee, fee_management_fee, fee_operating_admin_expense, fee_administration_fee, fee_tax_dabonnement, MIN(effective_from) AS effective_from, MAX(effective_to) AS effective_to
        FROM merge_stuff
        GROUP BY leg_isin, fee_distribution_fee, fee_management_fee, fee_operating_admin_expense, fee_administration_fee, fee_tax_dabonnement, MERGE
);


  GRANT SELECT ON "AM_FLM_RATES_V" TO "APP_GRIP_READ";
  GRANT SELECT ON "AM_FLM_RATES_V" TO "APP_WAAM";
