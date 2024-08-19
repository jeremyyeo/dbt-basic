select * from {{ ref('b') }}
union
select * from {{ ref('c') }}