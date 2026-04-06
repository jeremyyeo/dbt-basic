{% macro generate_database_name(custom_database_name=none, node=none) -%}
    {% do log('node ' ~ node.name ~ ' has node.path of ' ~ node.path, info=True) %}
    {% if 'mart' in node.path %}
        {% do log('node ' ~ node.name ~ ' building into database analytics', info=True) %}
        {{ 'analytics' }}
    {% else %}
        {% do log('node ' ~ node.name ~ ' building into database dev', info=True) %}
        {{ 'dev' }}
    {% endif %}
{%- endmacro %}
