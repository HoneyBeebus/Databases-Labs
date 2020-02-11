Select n_name, count(o_orderkey) 
	From nation, orders, customer, region
	Where r_name = 'EUROPE' and r_regionkey = n_regionkey and c_nationkey = n_nationkey and c_custkey = o_custkey
	group by n_name
	order by n_name;