SELECT n_name, count(s_suppkey), AVG(s_acctbal)
	FROM nation, supplier
	WHERE n_nationkey = s_nationkey GROUP BY s_nationkey HAVING count(s_nationkey) >= 5 Order by n_name;