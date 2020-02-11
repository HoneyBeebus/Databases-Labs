SELECT COUNT(s_suppkey) AS NumSuppliers
	FROM(SELECT s_suppkey, n_name, COUNT(o_orderkey)
			FROM nation, orders, lineitem, supplier, customer
			WHERE n_nationkey = c_nationkey AND c_custkey = o_custkey AND l_suppkey = s_suppkey AND (n_name = 'GERMANY' OR n_name = 'FRANCE') AND o_orderkey = l_orderkey
			GROUP BY s_suppkey
			HAVING COUNT(DISTINCT o_orderkey) < 30);