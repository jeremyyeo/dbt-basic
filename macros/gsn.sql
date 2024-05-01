{% macro generate_schema_name(custom_schema_name, node) -%}
    {%- if target.name == 'ci' -%}
        {{ custom_schema_name }}_ci_{{ target.schema }}
    {%- else -%}
        {{ custom_schema_name }}
    {%- endif -%}
{%- endmacro %}
