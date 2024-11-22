      create  or replace view DS074_OUTPUT 
      as
      SELECT 
             SUM(dis) paid_dist_fee,
             SUM(reb) returned_dist_fee,
             SUM(net) net_dist_fee
        FROM app_cr.cost_distribution_fee_v
;