select * from {{ ref('dbt_uat', 'foo') }}
union all
select * from {{ ref('dbt_prd', 'foo') }}
