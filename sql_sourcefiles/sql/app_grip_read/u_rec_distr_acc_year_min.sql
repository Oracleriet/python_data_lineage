
  CREATE OR REPLACE EDITIONABLE VIEW app_grip_read."U_REC_DISTR_ACC_YEAR" as
  select  
      y.dis
     , greatest(least(y.dis, y.reb+nvl(z.diskom_cur,0)),0) reb  -- greatest with 0 is there to catch negative net rebates (negative distribution, because of negative holding)
     , greatest(y.net-nvl(z.diskom_cur,0),0)    net  -- added check on nonegatives [JARP 21-03-2019]
from ( select 
              sum(nvl(x.dis_cur,0))                             dis,
              sum(greatest(nvl(x.reb_dis_cur,0),0))             reb,
              sum(nvl(x.net_dis_cur_nonegatives,0)) net
       from app_grip_read.u_rec_distr   x
) y
left join app_grip_read.u_retro_reimb z on y.porik = z.porik and y.secik = z.secik and y.acc_year = z.yyyy;
