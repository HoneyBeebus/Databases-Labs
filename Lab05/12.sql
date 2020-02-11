select sq2.name
	from(SELECT MAX(sq1.custCount) AS maxCust
     			FROM(SELECT n_name, SUM(o_totalprice) AS custCount
		  		FROM customer, nation , orders
		  		WHERE c_nationkey = n_nationkey
		  		AND o_custkey = c_custkey
		  		GROUP BY n_name)
				AS sq1) AS maxSub, (SELECT n_name AS name, SUM(o_totalprice) AS custCount2
										FROM customer, nation, orders
										WHERE c_nationkey = n_nationkey
										AND o_custkey = c_custkey
										GROUP BY n_name) AS sq2
	where sq2.custCount2 = maxSub.maxCust;