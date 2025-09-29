{{ config(materialized='incremental', unique_key='id') }}

select 1 as id, 'bob' as first_name
union
select 2 as id, 'eve' as first_name
