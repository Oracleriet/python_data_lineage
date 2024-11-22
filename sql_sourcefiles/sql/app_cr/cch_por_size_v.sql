
  CREATE OR REPLACE EDITIONABLE VIEW app_cr."CCH_POR_SIZE_V" ("PORTFOLIO", "TODATE", "POR_SIZE") AS select por.portfolio,
         time.day_id todate,
         sum (perf.perf_market_value_pc) por_size
    from dwh_dm.f_perf_v perf,
         dwh_dm.d_perf_report_split_v split,
         dwh_dm.d_portfolio_v por,
         dwh_dm.d_time_v time,
         app_cr.cch_portfolio_perf_report rep
   where     1 = 1
         and perf.d_portfolio_id = por.d_portfolio_id
         and perf.d_perf_report_split_id = split.d_perf_report_split_id
         and perf.d_time_id = time.d_time_id
         and rep.d_portfolio_id = por.d_portfolio_id
         and rep.d_perf_report_id = perf.d_perf_report_id
         and split.lev = 1
group by por.portfolio, time.day_id;


  GRANT SELECT ON "CCH_POR_SIZE_V" TO "INT_REPORTING";
