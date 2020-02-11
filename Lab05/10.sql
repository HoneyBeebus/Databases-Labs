select r_name
	from(SELECT r_name, MAX(l_extendedprice)
	 		FROM region, nation n1, nation n2, lineitem, orders, supplier, customer
	 		WHERE c_nationkey = n1.n_nationkey
	 	AND r_regionkey = n1.n_regionkey
	 	AND s_nationkey = n2.n_nationkey
	 	AND n2.n_regionkey = r_regionkey
	 	AND c_custkey = o_custkey
	 	AND o_orderkey = l_orderkey
		AND l_suppkey = s_suppkey);