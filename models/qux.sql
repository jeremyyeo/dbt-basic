{%- set vals = get_column_values(table=source('dbt_jyeo', 'my_source'), column='c') -%}

{% for v in vals %}
    select '{{ v }}' as v 
    {% if not loop.last -%} union all {%- endif -%}
{% endfor %}
