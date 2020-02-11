SELECT DISTINCT n_name
	FROM nation, customer, orders
	WHERE o_orderdate like '1996-12-%' AND o_custkey = c_custkey AND c_nationkey = n_nationkey;