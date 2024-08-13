{{ config(sql_header="ALTER SESSION SET TIMEZONE = 'Pacific/Auckland';") }}

select current_timestamp()::text as c, development_jyeo.dbt_jyeo.get_current_timezone() as ctz
