select count(distinct c_custkey)
	from customer, orders
	where c_custkey = o_custkey
	and o_orderkey not in(SELECT DISTINCT o_orderkey
	   							FROM nation, region, lineitem, orders, supplier
	   							WHERE r_name != "ASIA"
	   							AND l_orderkey = o_orderkey
	   							AND s_suppkey = l_suppkey
	   							AND s_nationkey = n_nationkey
	   							AND r_regionkey = n_regionkey);