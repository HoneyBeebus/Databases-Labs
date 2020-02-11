
SELECT n_name AS Nation
FROM lineitem, nation, supplier, (
    SELECT MAX(q.sum) AS max
    FROM (
        SELECT n_name, SUM(l_extendedprice) AS sum
        	FROM lineitem, nation, supplier
        	WHERE l_shipdate LIKE '1996%' AND n_nationkey = s_nationkey AND s_suppkey = l_suppkey
       		GROUP BY nation.n_nationkey) q) q2
		WHERE l_shipdate LIKE '1996%' AND n_nationkey = s_nationkey AND s_suppkey = l_suppkey
		GROUP BY n_nationkey
		HAVING SUM(l_extendedprice) = q2.max;