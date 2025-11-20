select 1 as user_id, '2020-01-30'::date as updated_at, 0 as is_paying
union 
select 1 as user_id, '2020-01-31'::date as updated_at, 1 as is_paying
union
select 1 as user_id, '2020-02-01'::date as updated_at, 0 as is_paying
union
select 2 as user_id, '2020-01-31'::date as updated_at, 0 as is_paying
union
select 2 as user_id, '2020-02-01'::date as updated_at, 1 as is_paying
