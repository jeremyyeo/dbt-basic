select * from {{ ref('foo_8') }}
union all
select * from {{ ref('bar_1') }}
