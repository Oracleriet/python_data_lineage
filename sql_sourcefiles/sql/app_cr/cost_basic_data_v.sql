
  CREATE OR REPLACE EDITIONABLE VIEW app_cr."COST_BASIC_DATA_V" ("D_PORTFOLIO_ID", "PORTFOLIO", "DAY_ID", "SORT", "COST_GROUP", "COST_TYPE", "PRODUCT_COST", "SERVICE_COST", "MIFID_DIRECT_COST_BUY", "MIFID_DIRECT_COST_SELL", "STAGING_SOURCE", "INSTRUMENT", "CLIENT_REP_NAME", "ISIN", "INSTRUMENT_NAME", "FINNISH_NAME", "ENGLISH_NAME", "SWEDISH_NAME", "F_COST_ID", "TRANSACTION_SK", "TRANSACTION_NO", "COST_SK", "COST", "POR_CALC", "D_MODEL_PORTFOLIO_ID", "MODEL_PORTFOLIO_CODE", "MODEL_PORTFOLIO_SK") AS select b.d_portfolio_id,
       b.portfolio,
       c.day_id,
       case when a.staging_source = 'TRANS_COST'  and d.cost =  'VAT'                            then coalesce(h.cost_group_sort,99) 
            when a.staging_source = 'TRANS_COST'  and d.cost <> 'VAT'                            then coalesce(d.client_rep_cost_group_sort,99) 
            when a.staging_source = 'TRANSACTION' and g.scd_ins_type_txt = 'ALM'                 then coalesce(h.cost_group_sort,99)
            when coalesce(a.mifid_direct_cost_buy,0) + coalesce(a.mifid_direct_cost_sell,0) <> 0 then 1
            else 99            
       end sort,
       case when a.staging_source = 'TRANS_COST'  and d.cost =  'VAT'                            then coalesce(h.client_rep_cost_group,'Undefined') 
            when a.staging_source = 'TRANS_COST'  and d.cost <> 'VAT'                            then coalesce(d.client_rep_cost_group,'Undefined') 
            when a.staging_source = 'TRANSACTION' and g.scd_ins_type_txt = 'ALM'                 then coalesce(h.client_rep_cost_group,'Undefined')
            when coalesce(a.mifid_direct_cost_buy,0) + coalesce(a.mifid_direct_cost_sell,0) <> 0 then 'One-off charges' 
            else 'Undefined'
       end cost_group,
       case when a.staging_source = 'TRANS_COST'  and d.cost =  'VAT'                            then coalesce(h.client_rep_cost_type,'Undefined')
            when a.staging_source = 'TRANS_COST'  and d.cost <> 'VAT'                            then coalesce(d.client_rep_cost_type,'Undefined')
            when a.staging_source = 'TRANSACTION' and g.scd_ins_type_txt = 'ALM'                 then coalesce(h.client_rep_cost_type,'Undefined')
            when coalesce(a.mifid_direct_cost_buy,0) + coalesce(a.mifid_direct_cost_sell,0) <> 0 then 'indirect_cost_max' 
            else 'Undefined'
       end cost_type,
       case when a.staging_source = 'TRANSACTION' and g.scd_ins_type_txt = 'ALM' and h.client_rep_cost_type = 'Reimbursement' then a.transaction_amount_pc *
                                                                                                                                    -- sign on ALM-transactions depends on transtype (DEVS-562)
                                                                                                                                    case when j.trans_type in ('ChargeCash','SettRecv') then -1 else 1 end
            when a.staging_source = 'TRANS_COST'                                 and d.client_rep_cost_type = 'Reimbursement' then -1*a.transaction_cost_amount_pc
            else 0 
       end product_cost,
       case when a.staging_source = 'TRANSACTION' and g.scd_ins_type_txt = 'ALM' and h.client_rep_cost_type = 'Reimbursement' then 0 -- Reimbursement is indirect_cost
            when a.staging_source = 'TRANS_COST'                                 and d.client_rep_cost_type = 'Reimbursement' then 0 -- Reimbursement is indirect_cost
            when a.staging_source = 'TRANS_COST'  and d.cost <> 'VAT'                                                         then a.transaction_cost_amount_pc
            when a.staging_source = 'TRANSACTION' and g.scd_ins_type_txt = 'ALM'                                              then a.transaction_amount_pc * 
                                                                                                                                    -- sign on ALM-transactions depends on transtype (DEVS-562)
                                                                                                                                    case when j.trans_type in ('ChargeCash','SettRecv') then -1 else 1 end
            else 0
        end service_cost, 
       a.mifid_direct_cost_buy,
       a.mifid_direct_cost_sell,
       a.staging_source,
       g.instrument,
       g.client_rep_name,
       g.isin , 
       g.instrument_name,
       g.finnish_name,
       g.english_name,
       g.swedish_name,
       a.f_cost_id,
       a.transaction_sk,
       a.transaction_no,
       d.cost_sk,
       d.cost,
       null por_calc,
       a.d_model_portfolio_id, 
       k.model_portfolio_code, 
       k.model_portfolio_sk       
from dwh_dm.f_cost_v                a,
     dwh_dm.d_portfolio_v           b,
     dwh_dm.d_time_v                c,
     dwh_dm.d_cost_v                d,
     dwh_dm.d_transaction_status_v  e,
     dwh_dm.d_transaction_cancel_v  f,
     dwh_dm.d_instrument_v          g,
     app_cr.alm_trans_cost_def_v    h,
     dwh_dm.d_bank_account_v        i,
     dwh_dm.d_transaction_type_v    j,
     dwh_dm.d_model_portfolio_v     k
where 1=1
  and a.d_portfolio_id          = b.d_portfolio_id
  and a.d_time_id               = c.d_time_id
  and a.d_model_portfolio_id    = k.d_model_portfolio_id
  and a.d_cost_id               = d.d_cost_id(+)
  and a.d_transaction_status_id = e.d_transaction_status_id
  and a.d_transaction_cancel_id = f.d_transaction_cancel_id
  and a.d_instrument_id         = g.d_instrument_id(+)
  and a.d_instrument_id         = h.d_instrument_id(+)
  and a.d_bank_account_id       = i.d_bank_account_id(+)
  and a.d_transaction_type_id   = j.d_transaction_type_id(+)
  and f.transaction_cancel_sk   = 0
  and to_number(e.transaction_status_sk)  >= 5     
  and a.staging_source in ('TRANS_COST','TRANSACTION')
  and (a.staging_source <> 'TRANSACTION' or g.scd_ins_type_txt = 'ALM' or a.mifid_direct_cost_buy <> 0 or a.mifid_direct_cost_sell <> 0) -- filtering on relevant transactions
  -- do not look at excluded costs
  and coalesce(d.exclude_as_client_cost,0) <> 1
  -- do not look at excluded transactions
  and (a.staging_source <> 'TRANSACTION' or coalesce(h.exclude_as_client_cost,0) <> 1)
  -- do not look at norwegian artificial bank accounts
  and coalesce(i.bank,'X') <> 'DCN MANUEL'
  -- exclude alm-transactions with specific transtype's  (DEVS-562)
  and not (a.staging_source = 'TRANSACTION' and g.scd_ins_type_txt = 'ALM' and j.trans_type in ('FundSrvCost','YearRoll','Raloc','ModPf','Charge','Credit'))
  -- exclude external models (DEVS-1079)
  and k.model_portfolio_code not like 'DIMA-%' and k.model_portfolio_code not like 'EXFUND%'
union all

-- Part 2: POR_CALC
select x.d_portfolio_id,
       x.portfolio,
       x.day_id,
       coalesce(z.sort,99) sort,
       coalesce(z.client_rep_cost_group,'Undefined') cost_group,
       coalesce(y.client_rep_cost_type,'Undefined') cost_type,
       x.product_cost,
       0 service_cost,
       x.mifid_direct_cost_buy,
       x.mifid_direct_cost_sell,
       x.staging_source,
       x.instrument,
       x.client_rep_name,
       x.isin , 
       x.instrument_name,
       x.finnish_name,
       x.english_name,
       x.swedish_name,
       x.f_cost_id,
       x.transaction_sk,
       x.transaction_no,
       x.cost_sk,
       x.cost,
       x.por_calc,
       x.d_model_portfolio_id, 
       x.model_portfolio_code, 
       x.model_portfolio_sk
from
(
select ongoing_cost_ex_post     - management_fee_ex_post  "Administration cost",
       management_fee_ex_post                             "Management fee" ,
       transaction_cost_ex_post                           "Transaction cost",
       incidential_cost_ex_post                           "Performance fee",
       mifid_direct_cost_buy,
       mifid_direct_cost_sell,
       f_cost_id,
       por_calc,
       d_portfolio_id,
       portfolio,
       staging_source,
       day_id,
       instrument,
       client_rep_name,
       isin , 
       instrument_name,
       finnish_name,
       english_name,
       swedish_name,
       transaction_sk,
       transaction_no,
       cost_sk,
       cost,
       d_model_portfolio_id, 
       model_portfolio_code, 
       model_portfolio_sk
from
(
select a.ongoing_cost_ex_post,
       a.management_fee_ex_post,
       a.transaction_cost_ex_post,
       a.incidential_cost_ex_post,
       a.mifid_direct_cost_buy,
       a.mifid_direct_cost_sell,
       a.f_cost_id,
       d.por_calc,
       b.d_portfolio_id,
       b.portfolio,
       a.staging_source,
       c.day_id,
       e.instrument,
       e.client_rep_name,
       e.isin , 
       e.instrument_name,
       e.finnish_name,
       e.english_name,
       e.swedish_name,
       a.transaction_sk,
       a.transaction_no,
       g.cost_sk,
       g.cost,
       h.d_model_portfolio_id, 
       h.model_portfolio_code, 
       h.model_portfolio_sk
from dwh_dm.f_cost_v                a,
     dwh_dm.d_portfolio_v           b,
     dwh_dm.d_time_v                c,
     dwh_dm.d_por_calc_v            d,
     dwh_dm.d_instrument_v          e,
     dwh_dm.d_por_calc_template_v   f,
     dwh_dm.d_cost_v                g,
     dwh_dm.d_model_portfolio_v     h
where 1=1
  and a.d_portfolio_id          = b.d_portfolio_id
  and a.d_time_id               = c.d_time_id
  and a.d_por_calc_id           = d.d_por_calc_id
  and a.d_instrument_id         = e.d_instrument_id
  and a.d_por_calc_template_id  = f.d_por_calc_template_id
  and a.d_cost_id               = g.d_cost_id
  and a.d_model_portfolio_id    = h.d_model_portfolio_id
  and a.staging_source          = 'POR_CALC'
  -- relevant templates
  and f.por_calc_template      in ('Y_DA_DK_NS_MIFID2','Y_DA_DK_NT_MIFID2','Y_DA_DK_SS_MIFID2','Y_DA_DK_ST_MIFID2','Y_DA_FI_NT_MIFID2','Y_DA_NO_NT_MIFID2')
  /* DEVS-716: excluding por calcs before portfolios inception date */
  and c.day_id >= coalesce(b.inception_date,to_date('01-01-2000','DD-MM-YYYY'))
  -- exclude external models (DEVS-1079)
  and h.model_portfolio_code not like 'DIMA-%' and h.model_portfolio_code not like 'EXFUND%' 
 )
)  
unpivot
(
 product_cost
 for cost_type in ("Administration cost","Management fee","Transaction cost","Performance fee")
 ) x,
 app_cr.client_rep_cost_type y,
 app_cr.client_rep_cost_group z
 where 1=1
   and x.cost_type                =  y.client_rep_cost_type(+)
   and y.client_rep_cost_group_id =  z.client_rep_cost_group_id(+)
   and x.product_cost            <> 0
   
union all

-- Part 3: FI_COST_ADHOC
select a.d_portfolio_id, 
       a.portfolio, 
       a.day_id, 
       a.sort, 
       a.cost_group, 
       a.cost_type, 
       a.indirect_cost product_cost, 
       a.direct_cost service_cost,  
       a.mifid_direct_cost_buy, 
       a.mifid_direct_cost_sell, 
       a.staging_source, 
       a.instrument, 
       a.client_rep_name, 
       a.isin, 
       a.instrument_name, 
       a.finnish_name, 
       a.english_name, 
       a.swedish_name, 
       a.f_cost_id, 
       a.transaction_sk, 
       a.transaction_no, 
       a.cost_sk, 
       a.cost,
       a.por_calc,
       null d_model_portfolio_id, 
       null model_portfolio_code, 
       null model_portfolio_sk
  from cost_fi_adhoc_data_v a;

   COMMENT ON COLUMN "COST_BASIC_DATA_V"."COST_GROUP" IS 'Cost group (header) in Cost Report';
   COMMENT ON COLUMN "COST_BASIC_DATA_V"."COST_TYPE" IS 'Cost type (line) in Cost Report';
   COMMENT ON COLUMN "COST_BASIC_DATA_V"."PRODUCT_COST" IS 'Product Cost';
   COMMENT ON COLUMN "COST_BASIC_DATA_V"."STAGING_SOURCE" IS 'TRANSACTION = ALM-transactions, TRANS_COST = Transaction costs, POR_CALC = ';
   COMMENT ON COLUMN "COST_BASIC_DATA_V"."COST" IS 'Cost in SCD';
   COMMENT ON TABLE "COST_BASIC_DATA_V"  IS 'When a portfolio is chosen and the to-date is set the page returns all included costs and charges in the report from the beginning of the portfolios fiscal year to the defined end-date. 
If the generated Cost and Charges report for the portfolio includes any undefined cost (which it should not), this page allows you to identify which cost type is undefined and move to the Cost Definitions (325:1) page and to include/exclude and categorise the cost.';


  GRANT SELECT ON "COST_BASIC_DATA_V" TO "INT_REPORTING";
