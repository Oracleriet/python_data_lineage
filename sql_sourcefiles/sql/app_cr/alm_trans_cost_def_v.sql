
  CREATE OR REPLACE EDITIONABLE VIEW app_cr."ALM_TRANS_COST_DEF_V" ("D_INSTRUMENT_ID", "INSTRUMENT", "INSTRUMENT_NAME", "CLIENT_REP_COST_GROUP", "CLIENT_REP_COST_TYPE", "COST_GROUP_SORT", "SIGN", "EXCLUDE_AS_CLIENT_COST", "DWH_CREATEDDATE", "DWH_CREATEDBY", "DWH_CHANGEDDATE", "DWH_CHANGEDBY", "L_ALM_TRANS_COST_TYPE_ID") AS select   b.d_instrument_id,
         b.instrument,
         b.instrument_name,
         d.client_rep_cost_group,
         c.client_rep_cost_type,
         d.sort cost_group_sort,
         a.sign,
         a.exclude_as_client_cost,
         a.dwh_createddate,
         a.dwh_createdby,
         a.dwh_changeddate,
         a.dwh_changedby,
         a.l_alm_trans_cost_type_id
    from app_cr.l_alm_trans_cost_type  a,
         dwh_dm.d_instrument_v         b,
         app_cr.client_rep_cost_type   c,
         app_cr.client_rep_cost_group  d
   where 1=1
     and a.d_instrument_id          = b.d_instrument_id
     and a.client_rep_cost_type_id  = c.client_rep_cost_type_id(+)
     and c.client_rep_cost_group_id = d.client_rep_cost_group_id(+)
   --order by a.l_alm_trans_cost_type_id;


  GRANT SELECT ON "ALM_TRANS_COST_DEF_V" TO "INT_REPORTING";
