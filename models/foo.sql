{{ 
    config(
        materialized='incremental' 
    ) 
}}

select 1 id, 'alice' as first_name
