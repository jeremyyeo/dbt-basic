{{ config(materialized='table') }}

select 1 as id, 'alice' as first_name
