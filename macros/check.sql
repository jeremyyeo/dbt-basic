{% macro check() %}
    {% do log('>>>>> The current real time: ' ~ modules.datetime.datetime.now(), True) %}
    {% for node in graph.sources.values() %}
        {% do log('>>>>> Time stored in source: ' ~ node.external.prop, True) %}
    {% endfor %}
{% endmacro %}

{% macro give_real_time() -%}
    {{modules.datetime.datetime.now() | string }}
{%- endmacro %}