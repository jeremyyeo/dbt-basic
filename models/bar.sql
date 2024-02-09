-- models/bar.sql
select id as not_id from {{ ref('foo') }}
