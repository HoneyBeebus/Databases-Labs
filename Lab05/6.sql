select distinct s_name, c_name
	from customer, lineitem, supplier, orders
	where o_totalprice = (SELECT MAX(o_totalprice)
					  		FROM orders
					  		WHERE o_orderstatus = 'F')
	and c_custkey = o_custkey
	and l_suppkey = s_suppkey
	and l_orderkey = o_orderkey;