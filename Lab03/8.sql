SELECT s_name, s_acctbal
	FROM supplier, region, nation
	WHERE r_name = 'ASIA' and s_acctbal >= 1000 and s_nationkey = n_nationkey and r_regionkey = n_regionkey;