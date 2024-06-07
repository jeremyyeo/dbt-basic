{% snapshot snappy %}

{{
    config(
      enabled=false,
      target_schema='dbt_jyeo_snapshot',
      unique_key='id',
      strategy='timestamp',
      updated_at='updated_at',
    )
}}

select 1 id, 'alice' as name, '1970-01-01'::date as updated_at

{% endsnapshot %}
