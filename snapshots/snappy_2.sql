{% snapshot snappy_2 %}

    {{
        config(
          strategy='check',
          check_cols='all',
          unique_key='id'
        )
    }}

    select 1 id, 'alice' as first_name

{% endsnapshot %}
