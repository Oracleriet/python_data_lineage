
  CREATE OR REPLACE EDITIONABLE VIEW app_grip_read."U_RETRO_REIMB" ("YYYY", "PORIK", "SECIK", "DISKOM_CUR") AS select round(ym/100,0) yyyy, porik, secik, sum(val_cur) diskom_cur
from app_grip.grip_t_results_retr_reimb
group by round(ym/100,0), porik, secik;


  GRANT SELECT ON "U_RETRO_REIMB" TO "D022717";
  GRANT SELECT ON "U_RETRO_REIMB" TO "APP_GRIP_READONLY";
  GRANT SELECT ON "U_RETRO_REIMB" TO "D020738";
