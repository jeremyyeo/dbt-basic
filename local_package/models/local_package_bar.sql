{% set values = dbt_utils.get_column_values(table=ref('local_package_foo'), column='val', default=['foo']) %}

{% for v in values %}
    select '{{ v }}' as value_from_local_package_foo
    {% if not loop.last %} union all {% endif %}
{% endfor %}
