{{ 
    config(
        materialized='incremental' 
    ) 
}}

select 1 id, 'alice' as first_name

{% if is_incremental() %}
  -- this filter will only be applied on an incremental run
  where id > (select max(id) from {{ this }})

{% endif %}
