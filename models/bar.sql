-- models/bar.sql
select * from {{ ref('foo') }}
