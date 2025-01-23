with orders as (
    select *
    from {{ source('raw', 'orders') }}
)

select o.id,
       o.updated_at,
       o.order_amount
  from orders as o
