Select Count(s_suppkey) AS NumSuppliers
	FROM (SELECT DISTINCT s_suppkey
				FROM partsupp, part, supplier
				WHERE s_suppkey = ps_suppkey and p_partkey = ps_partkey AND p_retailprice = (SELECT MIN(p_retailprice)
										FROM part));