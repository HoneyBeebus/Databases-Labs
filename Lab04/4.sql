Select s_name, count(p_partkey)
	From supplier, part, nation, partsupp
	Where n_name = 'BRAZIL' and n_nationkey = s_nationkey and s_suppkey = ps_suppkey and ps_partkey = p_partkey and p_size < 20
	group by s_name
	order by s_name; 