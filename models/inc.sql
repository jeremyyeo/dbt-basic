{{
    config(
        materialized='incremental',
        unique_key='id'
    )
}}

select id, customer, updated_at 
  from {{ source('raw', 'customers') }}
