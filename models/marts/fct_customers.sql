select *, 1 as is_customer from {{ ref('dim_customers') }}
