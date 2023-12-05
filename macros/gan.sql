
{% macro generate_alias_name(custom_alias_name=none, node=none) -%}
    {%- set ts = modules.datetime.datetime.now().timestamp() | string -%}
    {{ node.name ~ "_" ~ ts.replace(".", "_") | trim }}
{%- endmacro %}
