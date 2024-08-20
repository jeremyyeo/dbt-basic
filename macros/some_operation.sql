{% macro some_operation() %}
    {% set source_nodes = graph.sources.values() %}
    {% for node in source_nodes %}
        {% if node.external %}
            {% do print('insert into table from s3://data/' ~ node.external.some_key) %}
        {% endif %}
    {% endfor %}
{% endmacro %}
