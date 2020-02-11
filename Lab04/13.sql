Select count(DISTINCT o_orderkey)
	From orders, region, supplier, customer, nation N1, nation N2, lineitem
	Where r_name = 'EUROPE' and N2.n_name = 'CANADA' and s_nationkey = N1.n_nationkey and N1.n_regionkey = r_regionkey and c_nationkey = N2.n_nationkey and s_suppkey = l_suppkey and o_orderkey = l_orderkey and c_custkey = o_custkey;