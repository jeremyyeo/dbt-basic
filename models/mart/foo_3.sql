{{ config(schema='lots_of_stuff') }}

select * from {{ ref('baz_2') }}
