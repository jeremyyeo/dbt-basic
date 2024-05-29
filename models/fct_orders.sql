
select 1 as order_id, 1 as amount, '2000-01-01'::date as order_date
union
select 2 as order_id, 2 as amount, '2000-01-01'::date as order_date
union
select 3 as order_id, 3 as amount, '2000-01-02'::date as order_date
union
select 4 as order_id, 4 as amount, '2000-01-02'::date as order_date
