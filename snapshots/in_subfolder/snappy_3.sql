
{% snapshot snappy_3 %}

{{
    config(
      target_schema='snapshots',
      unique_key='id',
      strategy='check',
      check_cols='all',
    )
}}

select 1 as id

{% endsnapshot %}