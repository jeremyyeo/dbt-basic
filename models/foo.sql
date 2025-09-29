{{ config(materialized='incremental', unique_key='id') }}

select 1 as id, 'alice' as first_name
