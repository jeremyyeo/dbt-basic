{% macro do_thing() %}
    {% set x = 1005 %}
    {% for i in range(x) %}
        {% do run_query('select ' ~ i ~ ' as iter') %}
    {% endfor %}
{% endmacro %}
