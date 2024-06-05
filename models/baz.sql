with src as (

    select * from {{ ref('bar') }}
    
)

select * from src
