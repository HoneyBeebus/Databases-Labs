SELECT l_receiptdate, count(*)
	FROM lineitem, orders, customer
	Where c_name = 'Customer#000000118' and c_custkey = o_custkey and l_orderkey = o_orderkey
	group by l_receiptdate;