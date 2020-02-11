Select count(DISTINCT o_clerk)
	from nation, supplier, orders, lineitem
	where n_name = 'RUSSIA' and o_orderkey = l_orderkey and n_nationkey = s_nationkey and l_suppkey = s_suppkey;