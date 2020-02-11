SELECT p_name AS Part_Name
	FROM region CustReg, region SuppReg, nation CustNat, nation SuppNat, supplier, lineitem, orders, customer, partsupp, part
	WHERE CustReg.r_name = 'AMERICA' AND SuppReg.r_name = 'ASIA' AND SuppReg.r_regionkey = SuppNat.n_regionkey AND SuppNat.n_nationkey = s_nationkey AND l_orderkey = o_orderkey AND o_custkey = c_custkey AND c_nationkey = CustNat.n_nationkey AND CustNat.n_regionkey = CustReg.r_regionkey AND s_suppkey = ps_suppkey AND ps_partkey = p_partkey AND p_partkey = l_partkey
	GROUP BY p_partkey
	HAVING COUNT(DISTINCT s_suppkey) = 4
	ORDER BY p_name;