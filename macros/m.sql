{% macro m() %}
    {% if execute %}
        {% set r = run_query('select current_timestamp as c') %}
        {% do print('The database time is ' ~ r.columns[0].values()[0]) %}
    {% endif %}
{% endmacro %}
