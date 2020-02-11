SELECT n_name AS Nation
	FROM nation, customer, (SELECT MAX(q.ck) AS max
								FROM (SELECT COUNT(c_custkey) AS ck
										FROM nation, customer
										WHERE n_nationkey = c_nationkey
										GROUP BY n_nationkey) q) q2
									WHERE n_nationkey = c_nationkey
									GROUP BY n_nationkey
									HAVING COUNT(c_custkey) = q2.max;