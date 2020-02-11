select custN, suppSum-custSum 
	from(SELECT n1.n_name AS custN, SUM(l_extendedprice) AS custSum
     		FROM customer, nation n1, nation n2, orders, lineitem, supplier
    		 WHERE c_nationkey = n1.n_nationkey
	 		 AND s_nationkey = n2.n_nationkey
	 		 AND n1.n_nationkey != n2.n_nationkey
	 		 AND c_custkey = o_custkey
			 AND o_orderkey = l_orderkey
			 AND l_suppkey = s_suppkey
			 AND l_shipdate
			 LIKE "1996%"
			 GROUP BY n1.n_nationkey),(SELECT n2.n_name AS suppN, SUM(l_extendedprice) AS suppSum
										   FROM customer, nation n1, nation n2, orders, lineitem, supplier
										   WHERE c_nationkey = n1.n_nationkey
										   AND s_nationkey = n2.n_nationkey
										   AND n1.n_nationkey != n2.n_nationkey
										   AND c_custkey = o_custkey
										   AND o_orderkey = l_orderkey
										   AND l_suppkey = s_suppkey
										   AND l_shipdate
										   LIKE "1996%"
										   GROUP BY n2.n_nationkey)
				where custN = suppN;