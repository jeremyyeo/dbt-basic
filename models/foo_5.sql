select *, (avg(o_totalprice) over (partition by o_custkey order by o_orderdate range between unbounded preceding and current row)) * rand() as r from samples.tpch.orders
