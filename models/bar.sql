{{
    config(
        materialized='incremental',
        unique_key = ['user_id'],
        incremental_strategy='merge',
    )
}}

with activity_daily as (
    select * from {{ ref('foo') }}
    where
        event_date >= current_date - interval '5 years'

    {% if is_incremental() %}

        and event_date > current_date - interval '1 day'

    {% endif %}
)

select *
from activity_daily
