{{ config(materialized = 'table') }}

WITH foo AS (

    SELECT * FROM {{ ref('foo') }}

), foo_1 AS (

    SELECT * FROM {{ ref('foo_1') }}

), foo_2 AS (

   SELECT * FROM {{ ref('foo_2') }} 

)

SELECT * FROM foo
UNION ALL
SELECT * FROM foo_1
UNION ALL
SELECT * FROM foo_2
