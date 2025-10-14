{{ config(materialized='table') }}

select 2 as id, 'alice' as first_name
