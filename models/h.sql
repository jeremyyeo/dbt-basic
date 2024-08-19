select * from {{ ref('e') }}
union
select * from {{ ref('f') }}
