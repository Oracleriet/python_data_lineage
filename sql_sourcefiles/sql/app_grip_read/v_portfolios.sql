
  CREATE OR REPLACE EDITIONABLE VIEW app_grip_read."V_PORTFOLIOS" ("PO_PORIK", "PO_SOURCE", "PO_DELIVERY_TIME", "PO_POR", "PO_PORNAME", "PO_PARIK", "PO_EOY", "PO_LEVENDE", "PO_CURRENCY", "PO_WRAPPER", "PO_PM_DC", "PO_PM_SE", "PO_PM_NO", "PO_PM_FI", "PO_CLIENTTYPE", "PO_PORGRP", "PO_AFSTEMNING", "PO_PORGRPIK", "PO_PORMAN1", "PO_PORMAN2", "PO_PORMAN3", "PO_PORMAN4", "PO_PORMAN5", "PO_PORMAN6", "PO_VAT", "PO_VATNUMBER", "PO_CTY", "PO_CTYNAME", "PO_CTYFC1", "PO_VATTYPE", "PO_COMPANY_CTY") AS select "PO_PORIK","PO_SOURCE","PO_DELIVERY_TIME","PO_POR","PO_PORNAME","PO_PARIK","PO_EOY","PO_LEVENDE","PO_CURRENCY","PO_WRAPPER","PO_PM_DC","PO_PM_SE","PO_PM_NO","PO_PM_FI","PO_CLIENTTYPE","PO_PORGRP","PO_AFSTEMNING","PO_PORGRPIK","PO_PORMAN1","PO_PORMAN2","PO_PORMAN3","PO_PORMAN4","PO_PORMAN5","PO_PORMAN6","PO_VAT","PO_VATNUMBER","PO_CTY","PO_CTYNAME","PO_CTYFC1","PO_VATTYPE","PO_COMPANY_CTY" from app_grip.grip_scd_t_portfolios;


  GRANT SELECT ON "V_PORTFOLIOS" TO "D022717";
  GRANT SELECT ON "V_PORTFOLIOS" TO "APP_GRIP_READONLY";
  GRANT SELECT ON "V_PORTFOLIOS" TO "D020738";
