{% snapshot snappy %}

{{
    config(
      target_database='development_jyeo',
      target_schema='dbt_jyeo',
      unique_key='id',
      strategy='timestamp',
      updated_at='updated_at',
    )
}}

select id, customer, updated_at
 from {{ source('raw', 'customers') }}

{% endsnapshot %}
