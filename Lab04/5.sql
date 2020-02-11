Select c_name, count(o_orderkey)
	From customer, orders, nation
	Where n_name = 'GERMANY' and n_nationkey = c_nationkey and o_custkey = c_custkey and o_orderdate like '1995-%-%'
	group by c_name
	order by c_name;