{{
  config(
    materialized = 'incremental',
    unique_key = 'id',
    incremental_strategy = 'delete+insert'
  )
}}

select current_date as updated_at, 1 as id
