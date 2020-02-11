Select p_mfgr, o_orderpriority, count(p_partkey)
	From part, orders, lineitem
	Where p_partkey = l_partkey and o_orderkey = l_orderkey
    GROUP BY p_mfgr, o_orderpriority;