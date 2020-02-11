Select r_name, MAX(s_acctbal)
	from region, supplier, nation
	Where r_regionkey = n_regionkey and s_nationkey = n_nationkey
	group by r_name;