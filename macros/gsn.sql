{% macro generate_schema_name(custom_schema_name, node) -%}
    {% if target.name == 'prod' %}
        {{ custom_schema_name }}
    {% else %}
        {{ target.schema }}
    {% endif %}
{%- endmacro %}