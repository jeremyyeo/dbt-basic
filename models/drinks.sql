{% set coffee_types = dbt_utils.get_column_values(table=ref('coffee_types'), column='coffee_type') %}

{% for coffee_type in coffee_types %}
    select '{{ coffee_type }}' as coffee_type, 1 as is_selling
    {% if not loop.last %} union {% endif %}
{% endfor %}
