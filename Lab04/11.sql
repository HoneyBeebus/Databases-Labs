Select r_name, s_name
	From region, supplier, nation
	Where r_regionkey = n_regionkey and s_nationkey = n_nationkey
	group by r_name having MAX(s_acctbal);