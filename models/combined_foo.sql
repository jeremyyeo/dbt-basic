select * from {{ ref('dbt_uat', 'foo') }}
