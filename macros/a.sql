{% macro check() %}
    {% do log(modules.datetime.datetime.now(), True) %}
    {% for node in graph.sources.values() %}
        {% do log(node.external.prop, True)%}
    {% endfor %}
{% endmacro %}
