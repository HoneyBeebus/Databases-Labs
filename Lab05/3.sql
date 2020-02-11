SELECT count(p_partkey) AS NumSuppliers
	FROM (SELECT p_partkey
			FROM nation, supplier, partsupp, part
			WHERE n_name = 'CANADA' and ps_partkey = p_partkey and n_nationkey = s_nationkey and ps_suppkey = s_suppkey 
	GROUP BY ps_partkey HAVING count(ps_suppkey) > 1);