
  CREATE OR REPLACE EDITIONABLE VIEW app_grip."AM_FLM_GRIP_RATES_V" ("FC_ISIN", "FD", "TD", "DIS_GLOBAL_GRIP", "DIS_FLM", "DIS_NO_GRIP", "DIS_SE_GRIP", "DIS_FI_GRIP", "DIS_LU_GRIP", "MAN_GRIP", "MAN_FLM", "ADM_GRIP", "ADM_FLM", "TAX_FLM", "ADV_GRIP", "ADV_EXT", "SE_FC_FEE_FUND_OWNER_3") AS with all_intervals as (
         select fc_isin, trunc(fc_from_date, 'DD') fc_from_date, trunc(fc_to_date, 'DD') fc_to_date
           from grip_v_fund_costs_combined
         union
         select leg_isin, trunc(effective_from, 'DD') effective_from, trunc(effective_to, 'DD') effective_to
           from am_flm_rates_v
         union
         select isin, trunc(effective_from, 'DD') effective_from, trunc(effective_to, 'DD') effective_to
           from am_grip_adv_ext_v
      ),
      max_dt as (
         select fc_isin, max(fc_to_date) as max_dt
           from all_intervals
          group by fc_isin
      ),
      all_dt as (
         --this query transforms intervals into events
   
         --add all start dates
         select i.fc_isin, i.fc_from_date as dt
           from all_intervals i
         union
         --add all end dates - only those where is no equal start date will be added in the end
         --end dates have to be transformed to start dates, whence fc_to_date+1
         select i.fc_isin, i.fc_to_date + 1 as dt
           from all_intervals i
           join max_dt m
             on i.fc_isin = m.fc_isin
          where 1 = 1
            and i.fc_to_date < m.max_dt --we do not need the last date, it's processed separately
      ),
      adj_intervals as (
         --this query transforms events back into intervals
         select a.fc_isin,
                a.dt as fd,
                nvl(lead(a.dt - 1) over (partition by a.fc_isin order by a.dt), m.max_dt) as td
           from all_dt a
           join max_dt m
             on a.fc_isin = m.fc_isin
      )
   select a.fc_isin,
          a.fd,
          a.td,
          b.fc_rate_dis dis_global_grip,
          c.fee_distribution_fee dis_flm,
          b.fc_rate_dis_no dis_no_grip,
          b.fc_rate_dis_se dis_se_grip,
          b.fc_rate_dis_fi dis_fi_grip,
          b.fc_rate_dis_lu dis_lu_grip,
          b.fc_rate_man man_grip,
          c.fee_management_fee man_flm,
          b.fc_rate_adm adm_grip,
          c.fee_administration_fee adm_flm,
          c.fee_tax_dabonnement tax_flm,
          b.fc_rate_adv adv_grip,
          d.adv_ext,
          b.se_fc_fee_fund_owner_3
     from adj_intervals a
     left join grip_v_fund_costs_combined b
       on a.fc_isin = b.fc_isin
      and trunc(b.fc_from_date, 'DD') <= a.td
      and trunc(b.fc_to_date, 'DD') >= a.fd
     left join am_flm_rates_v c
       on a.fc_isin = c.leg_isin
      and trunc(c.effective_from, 'DD') <= a.td
      and trunc(c.effective_to, 'DD') >= a.fd
     left join am_grip_adv_ext_v d
       on a.fc_isin = d.isin
      and trunc(d.effective_from, 'DD') <= a.td
      and trunc(d.effective_to, 'DD') >= a.fd
    where 1 = 1
      and not (b.fc_isin is null and c.leg_isin is null and d.isin is null) --skip the gaps;


  GRANT SELECT ON "AM_FLM_GRIP_RATES_V" TO "APP_GRIP_READ";
  GRANT SELECT ON "AM_FLM_GRIP_RATES_V" TO "APP_WAAM";
