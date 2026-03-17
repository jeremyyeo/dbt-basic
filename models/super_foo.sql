select id, id * 2 as double_id from {{ source('raw', 'customers') }}
