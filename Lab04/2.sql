Select distinct n_name, count(s_name)
	From supplier, nation
	Where s_nationkey = n_nationkey
	Group By n_name
	Order by n_name;