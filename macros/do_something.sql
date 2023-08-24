{% macro do_something() %}
    select * from {{ this }}
{% endmacro %}
