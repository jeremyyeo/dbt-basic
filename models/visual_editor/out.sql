WITH input_1 AS (
  SELECT
    *
  FROM {{ ref('my_dbt_project', 'foo') }}
), formula_1 AS (
  SELECT
    *
  FROM input_1
), out_sql AS (
  SELECT
    *
  FROM formula_1
)
SELECT
  *
FROM out_sql