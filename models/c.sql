
select dbt_jyeo.fake_sleep(200) as c1 from {{ ref('a') }}
