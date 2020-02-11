select count(*) AS NumCustomers
from (SELECT c_name
	  FROM customer, orders
	  WHERE o_orderdate
	  LIKE "1995-08%"
	  AND c_custkey = o_custkey
	  GROUP BY c_name
	  HAVING COUNT(*) < 3);