SELECT count(c_custkey)
	FROM (SELECT DISTINCT c_custkey FROM customer, lineitem, orders WHERE l_discount >= .04 and l_orderkey = o_orderkey and o_custkey = c_custkey);