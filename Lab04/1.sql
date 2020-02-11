Select c_name, Round(SUM(o_totalprice), 2), n_name
	From nation, orders, customer 
	Where n_name = 'FRANCE' and c_nationkey = n_nationkey and o_custkey = c_custkey
	GROUP By c_name
	Order by c_name;