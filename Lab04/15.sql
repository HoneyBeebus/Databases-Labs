Select count(DISTINCT o_orderkey)
	From orders, customer, lineitem, supplier
	Where s_suppkey = l_suppkey and o_orderkey = l_orderkey and c_custkey = o_custkey and s_acctbal > 0 and c_acctbal < 0;