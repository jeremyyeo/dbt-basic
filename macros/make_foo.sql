{% macro make_foo(num_tables, num_batches) %}
    {% if execute %}
        {% for i in range(num_tables or 100) | batch(num_batches or 10) %}
            {% set query %}
                {% for _ in i -%}
                    create table if not exists {{ target.database }}.{{ target.schema }}.foo_{{ '%08d' % _ }} as select 1 as id;
                {% endfor %} 
            {% endset %}
            {% do run_query(query) %}
            {% do log("Created up to table foo_" ~ "%08d" % (i | max), true) %}
        {% endfor %}
    {% endif %}
{% endmacro %}
