SELECT count(o_orderpriority)
	FROM customer, orders, nation 
	WHERE n_name = 'BRAZIL' and o_orderpriority = '1-URGENT' and n_nationkey = c_nationkey and c_custkey = o_custkey and o_orderdate >= '1994-01-01' and o_orderdate <= '1997-12-31'
	;