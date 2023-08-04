select * 
  from {{ source('raw', 'customers') }}
 where is_paying = 1
