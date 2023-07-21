{% macro generate_schema_name(custom_schema_name, node) -%}
    {{ non_existent_package.generate_schema_name(custom_schema_name, node) }}
{%- endmacro %}