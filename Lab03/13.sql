SELECT AVG(c_acctbal)
	FROM (SELECT c_acctbal, c_mktsegment FROM customer, region, nation WHERE r_name = 'EUROPE' and r_regionkey = n_regionkey and n_nationkey = c_nationkey)
	WHERE c_mktsegment = 'MACHINERY';