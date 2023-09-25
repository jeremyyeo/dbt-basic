select * from {{ ref('foo_1') }}
union all
select * from {{ ref('bar_4') }}
