      create view ds074_report as
      SELECT 
             SUM(dis) paid_dist_fee,
             SUM(reb) returned_dist_fee,
             SUM(net) net_dist_fee
        FROM (
                SELECT 
                       dis,
                       reb,
                       net
                  FROM app_cr.cost_distribution_fee_v
             )
;