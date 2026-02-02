{% macro double_this_column(col_name) -%}
  {{ col_name }} * 2 as doubled
{%- endmacro %}
