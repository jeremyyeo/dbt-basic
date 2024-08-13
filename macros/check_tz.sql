{% macro check_tz() %}
    {% set query %}
        SHOW PARAMETERS LIKE 'TIMEZONE' IN SESSION;
    {% endset %}
    {% if execute %}
        {% set results = run_query(query).columns[1].values()[0] %}
        {% do print('=========================================') %}
        {% do print('SESSION TIMEZONE IS: ' ~ results) %}
        {% do print('=========================================') %}
    {% endif %}
{% endmacro %}
