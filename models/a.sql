{{ config(sql_header="ALTER SESSION SET TIMEZONE = 'Pacific/Auckland';") }}

select current_timestamp()::text as c, development_jyeo.dbt_jyeo.get_current_timezone() as ctz

/* {{ env_var('DBT_CLOUD_RUN_ID', 'core-cli-run') }} */
