{{ config(materialized = 'ephemeral') }}   

with source as (

    select 1 as id

), renamed as (

    select id as uid from source

)

select * from renamed
