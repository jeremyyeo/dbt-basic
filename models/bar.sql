{{ config(materialized = 'table') }}

with a as (

    select * from {{ ref('foo') }} group by uid

), b as (

    select * from {{ ref('foo') }} group by uid

)

select * from b
