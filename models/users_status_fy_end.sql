select x.user_id
       , y.is_paying
       , x.fy_cutoff_date
  from {{ ref('users_cutoff_date') }} x 
  asof join {{ ref('users_status_full') }} y
  match_condition (x.fy_cutoff_date >= y.updated_at)
  on (x.user_id = y.user_id)
