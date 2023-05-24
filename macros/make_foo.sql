{% macro make_foo(start, stop, num_batches) %}
    {% if execute %}
        {% set full_range = range(start or 0, stop or 100) %}
        {% for i in full_range | batch(num_batches or 10) %}
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
