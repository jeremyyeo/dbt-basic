{{ config(materialized='ephemeral') }}

with x as (
select 1 as id
)
select * from x
