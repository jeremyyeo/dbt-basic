
{{ config(materialized = 'table') }}

select dev.dbt_jyeo.fake_sleep(600) as c
