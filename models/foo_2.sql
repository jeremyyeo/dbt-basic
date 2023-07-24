{{ config(materialized = 'ephemeral') }}   

WITH source AS (

    SELECT 1 AS id

), RENAMED as (

    SELECT id as UID FROM source

)

SELECT * FROM renamed
