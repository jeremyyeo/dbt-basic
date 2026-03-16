select *, 1 as new_col from {{ source('raw', 'customers') }}
