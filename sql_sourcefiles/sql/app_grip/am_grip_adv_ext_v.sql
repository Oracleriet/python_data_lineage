
  CREATE OR REPLACE EDITIONABLE VIEW app_grip."AM_GRIP_ADV_EXT_V" ("ISIN", "ADV_EXT", "EFFECTIVE_FROM", "EFFECTIVE_TO") AS with stuff as
(
select fd, td, isin, adv_ext,
((row_number() over (partition by isin order by fd)) - row_number() over (partition by isin, adv_ext order by fd)) as merge
from t_fund_all_rates)
select isin, adv_ext, min(fd) as effective_from, max(td) as effective_to
from stuff
group by isin, adv_ext, merge
order by isin, effective_from;


  GRANT SELECT ON "AM_GRIP_ADV_EXT_V" TO "APP_WAAM";
