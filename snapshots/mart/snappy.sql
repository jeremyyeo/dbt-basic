{% snapshot snappy %}

{{
    config(
        target_schema = 'snapshots',
        unique_key = 'id',
        strategy = 'check',
        check_cols = 'all'
    )
}}

select 1 id, 'alice' first_name

{% endsnapshot %}
