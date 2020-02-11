Select n_name, o_orderstatus, count(o_orderkey)
	From nation, customer, region, orders 
	where r_name = 'ASIA' and o_custkey = c_custkey and c_nationkey = n_nationkey and r_regionkey = n_regionkey
	group by n_name, o_orderstatus;