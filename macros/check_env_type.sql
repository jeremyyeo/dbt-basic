{% macro check_env_type() %}
    {% do print('>>>> ' ~ env_var("DBT_CLOUD_ENVIRONMENT_TYPE")) %}
{% endmacro %}