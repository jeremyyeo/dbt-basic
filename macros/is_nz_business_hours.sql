{% macro is_nz_business_hours() %}
    {% set flag = 0 %}
    {% set dt = modules.datetime %}
    {% set pz = modules.pytz %}

    {% set time_utc = dt.datetime.utcnow() %}
    {% set time_utc = pz.timezone("UTC").localize(time_utc) %}
    {% set time_local = time_utc.astimezone(pz.timezone("Pacific/Auckland")) %}

    {#/* We only want our model to run on weekdays between 9 am and 5 pm in New Zealand. */#}
    {% if time_local.weekday() < 5 %}
        {% set flag = flag + 1 %}
    {% endif %}

    {% if time_local.hour >= 9 and time_local.hour <= 16 %}
        {% set flag = flag + 1 %}
    {% endif %}

    {% if execute %}
        {% do log("Current time: " ~ time_local.strftime("%a, %b %d, %Y %-I:%M:%S %p %Z") ~ " | " ~ time_utc.strftime("%a, %b %d, %Y %-I:%M:%S %p %Z")) %}
        {% if flag == 2 %}
            {% do log("Business hour") %}
        {% else %}
            {% do log("Happy hour") %}
        {% endif %}
    {% endif %}

    {% do return(flag) %}
{% endmacro %}

{% macro enable_or_disable() %}
    {% if is_nz_business_hours() == 2 %}
        {{ return(True) }}
    {% else %}
        {{ return(False) }}
    {% endif %}
{% endmacro %}
