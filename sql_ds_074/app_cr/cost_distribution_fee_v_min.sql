
  CREATE OR REPLACE EDITIONABLE VIEW app_cr."COST_DISTRIBUTION_FEE_V" as 
  select 
       sum(nvl(dis_cur,0))                           dis,
       least(sum(nvl(reb_cur,0)),sum(nvl(dis_cur,0))) reb,
       greatest(sum(nvl(dis_cur,0))  - sum(nvl(reb_cur,0)),0) net
from app_grip_read.u_rec_distr
where wrapper in ('FI CLIENT','FI FUND')
union all
/* DEVS-613: Other portfolios are aggregated yearly - and data are fetched from a different view*/
select 
       dis,
       reb,
       net
from APP_GRIP_READ.U_REC_DISTR_ACC_YEAR       
where wrapper not in ('FI CLIENT','FI FUND');

