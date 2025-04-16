select
    *
from
    customers
{% if is_incremental() %}
where 1 = 1
{% endif %}
