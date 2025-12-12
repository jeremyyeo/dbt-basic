{% macro do_thing() %}
    {% set x = 1001 %}
    {% for i in range(x) %}
        {% do run_query('select ' ~ i ~ ' as iter') %}
    {% endfor %}
{% endmacro %}
