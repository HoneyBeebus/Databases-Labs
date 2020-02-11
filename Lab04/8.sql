Select n_name, count(DISTINCT o_orderkey)
	from nation, region, orders, supplier, lineitem
	where r_name = 'AMERICA' and o_orderstatus = 'F' and o_orderdate like '1995-%-%' and s_nationkey = n_nationkey and r_regionkey = n_regionkey and l_orderkey = o_orderkey and l_suppkey = s_suppkey
	group by n_name;