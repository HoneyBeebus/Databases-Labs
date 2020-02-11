Select p_type, MAX(l_discount)
	From lineitem, part
	where p_type like 'ECONOMY%' and l_partkey = p_partkey
	group by p_type;