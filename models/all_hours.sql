{{ config(materialized = 'incremental') }}

select sysdate() as time_utc, convert_timezone('Pacific/Auckland', current_timestamp()) as time_local, {{ enable_or_disable() }} as is_nz_business_hours
