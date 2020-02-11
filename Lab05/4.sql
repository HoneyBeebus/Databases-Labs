select count(s_name)
from(SELECT s_name
     FROM nation, supplier, lineitem
	 WHERE s_nationkey = n_nationkey
	 AND s_suppkey = l_suppkey
	 AND n_name = "CANADA"
	 GROUP BY s_name
	 HAVING COUNT(*) >= 4);