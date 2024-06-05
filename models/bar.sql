{{ config(materialized='ephemeral') }}

select * from {{ ref('foo') }}
