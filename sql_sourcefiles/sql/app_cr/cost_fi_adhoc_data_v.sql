
  CREATE OR REPLACE EDITIONABLE VIEW app_cr."COST_FI_ADHOC_DATA_V" ("D_PORTFOLIO_ID", "PORTFOLIO", "DAY_ID", "SORT", "COST_GROUP", "COST_TYPE", "INDIRECT_COST", "DIRECT_COST", "VAT", "MIFID_DIRECT_COST_BUY", "MIFID_DIRECT_COST_SELL", "STAGING_SOURCE", "INSTRUMENT", "CLIENT_REP_NAME", "ISIN", "INSTRUMENT_NAME", "FINNISH_NAME", "ENGLISH_NAME", "SWEDISH_NAME", "F_COST_ID", "TRANSACTION_SK", "TRANSACTION_NO", "COST_SK", "COST", "POR_CALC") AS select x.d_portfolio_id
     , x.portfolio 
     , x.day_id
     , costtype.sort sort
     , costtype.client_rep_cost_group cost_group
     , costtype.client_rep_cost_type cost_type
     , x.indirect_cost
     , x.direct_cost
     , x.vat
     , x.mifid_direct_cost_buy
     , x.mifid_direct_cost_sell
     , x.staging_source
     , x.instrument
     , x.client_rep_name
     , x.isin
     , x.instrument_name
     , x.finnish_name
     , x.english_name
     , x.swedish_name
     , x.f_cost_id
     , x.transaction_sk
     , x.transaction_no
     , x.cost_sk
     , x.cost
     , x.por_calc
 from (
select t.d_portfolio_id
     , p.portfolio
     , trunc(t.trading_date_time) day_id
     , cast(null as number) indirect_cost
     , stg.pm_fee_net direct_cost
     , stg.pm_fee_vat vat
     , cast(null as number) mifid_direct_cost_buy
     , cast(null as number) mifid_direct_cost_sell
     , cast('FI_COST_FILE' as VARCHAR2 (30 Char)) staging_source
     , i.instrument
     , i.client_rep_name
     , i.isin
     , i.instrument_name
     , i.finnish_name
     , i.english_name
     , i.swedish_name
     , cast(null as number) f_cost_id
     , t.transaction_sk
     , to_number(stg.transaction_no) transaction_no
     , cast(null as VARCHAR2 (16 Char)) cost_sk
     , cast(null as VARCHAR2 (10 Char)) cost
     , cast(null as VARCHAR2 (30 Char)) por_calc
     , row_number() over (partition by t.transaction_no order by t.transaction_sk desc) rowno_desc
     , case /* Translate cost_type_fc33 to client_rep_cost_type_id in app_cr */
         when stg.cost_type_fc33 = 'CUST FEE' then 5
         when stg.cost_type_fc33 = 'BS FEE' then 3
         else 1
       end client_rep_cost_type_id  
  from app_cr.cr_ficost_stg stg
     , dwh_dm.f_transaction_v t
     , dwh_dm.d_instrument_v i
     , dwh_dm.d_portfolio_v p
 where stg.transaction_no = t.transaction_no
   and t.d_instrument_id = i.d_instrument_id
   and t.d_portfolio_id = p.d_portfolio_id
     ) x
     , ( select ct.client_rep_cost_type_id
              , ct.client_rep_cost_type
              , cg.client_rep_cost_group
              , cg.sort
           from client_rep_cost_type ct
              , client_rep_cost_group cg
          where 1=1
            --and ct.client_rep_cost_type = 'Management fee' 
            and ct.client_rep_cost_group_id = cg.client_rep_cost_group_id ) costtype
 where 1=1
   and x.client_rep_cost_type_id = costtype.client_rep_cost_type_id
   and x.rowno_desc = 1 /* Only cost on last version of transaction_no (if duplicate) */;


  GRANT SELECT ON "COST_FI_ADHOC_DATA_V" TO "INT_REPORTING";
