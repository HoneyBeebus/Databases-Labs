SELECT r_name, Count(o_orderstatus)
	FROM region, orders, customer, nation
	WHERE r_regionkey = n_regionkey and n_nationkey = c_nationkey and o_custkey = c_custkey and o_orderstatus = 'F' group by r_name order by count(o_orderstatus) desc;