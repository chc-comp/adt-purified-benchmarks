(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun unS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_0 (Nat_0) Bool)
(declare-fun isS_0 (Nat_0) Bool)
(assert (forall ((x_13 Nat_0) (x_12 Nat_0))
	(=> (= x_13 (S_0 x_12))
	    (unS_1 x_12 x_13))))
(assert (isZ_0 Z_0))
(assert (forall ((x_14 Nat_0))
	(isS_0 (S_0 x_14))))
(assert (forall ((x_15 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_15))))
(assert (forall ((x_16 Nat_0))
	(diseqNat_0 (S_0 x_16) Z_0)))
(assert (forall ((x_17 Nat_0) (x_18 Nat_0))
	(=> (diseqNat_0 x_17 x_18)
	    (diseqNat_0 (S_0 x_17) (S_0 x_18)))))
(declare-fun add_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun minus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun le_0 (Nat_0 Nat_0) Bool)
(declare-fun ge_0 (Nat_0 Nat_0) Bool)
(declare-fun lt_0 (Nat_0 Nat_0) Bool)
(declare-fun gt_0 (Nat_0 Nat_0) Bool)
(declare-fun mult_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun div_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun mod_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((y_2 Nat_0))
	(add_0 y_2 Z_0 y_2)))
(assert (forall ((x_6 Nat_0) (y_2 Nat_0) (r_2 Nat_0))
	(=> (add_0 r_2 x_6 y_2)
	    (add_0 (S_0 r_2) (S_0 x_6) y_2))))
(assert (forall ((y_2 Nat_0))
	(minus_0 Z_0 Z_0 y_2)))
(assert (forall ((x_6 Nat_0) (y_2 Nat_0) (r_2 Nat_0))
	(=> (minus_0 r_2 x_6 y_2)
	    (minus_0 (S_0 r_2) (S_0 x_6) y_2))))
(assert (forall ((y_2 Nat_0))
	(le_0 Z_0 y_2)))
(assert (forall ((x_6 Nat_0) (y_2 Nat_0))
	(=> (le_0 x_6 y_2)
	    (le_0 (S_0 x_6) (S_0 y_2)))))
(assert (forall ((y_2 Nat_0))
	(ge_0 y_2 Z_0)))
(assert (forall ((x_6 Nat_0) (y_2 Nat_0))
	(=> (ge_0 x_6 y_2)
	    (ge_0 (S_0 x_6) (S_0 y_2)))))
(assert (forall ((y_2 Nat_0))
	(lt_0 Z_0 (S_0 y_2))))
(assert (forall ((x_6 Nat_0) (y_2 Nat_0))
	(=> (lt_0 x_6 y_2)
	    (lt_0 (S_0 x_6) (S_0 y_2)))))
(assert (forall ((y_2 Nat_0))
	(gt_0 (S_0 y_2) Z_0)))
(assert (forall ((x_6 Nat_0) (y_2 Nat_0))
	(=> (gt_0 x_6 y_2)
	    (gt_0 (S_0 x_6) (S_0 y_2)))))
(assert (forall ((y_2 Nat_0))
	(mult_0 Z_0 Z_0 y_2)))
(assert (forall ((x_6 Nat_0) (y_2 Nat_0) (r_2 Nat_0) (z_1 Nat_0))
	(=>	(and (mult_0 r_2 x_6 y_2)
			(add_0 z_1 r_2 y_2))
		(mult_0 z_1 (S_0 x_6) y_2))))
(assert (forall ((x_6 Nat_0) (y_2 Nat_0))
	(=> (lt_0 x_6 y_2)
	    (div_0 Z_0 x_6 y_2))))
(assert (forall ((x_6 Nat_0) (y_2 Nat_0) (r_2 Nat_0) (z_1 Nat_0))
	(=>	(and (ge_0 x_6 y_2)
			(minus_0 z_1 x_6 y_2)
			(div_0 r_2 z_1 y_2))
		(div_0 (S_0 r_2) x_6 y_2))))
(assert (forall ((x_6 Nat_0) (y_2 Nat_0))
	(=> (lt_0 x_6 y_2)
	    (mod_0 x_6 x_6 y_2))))
(assert (forall ((x_6 Nat_0) (y_2 Nat_0) (r_2 Nat_0) (z_1 Nat_0))
	(=>	(and (ge_0 x_6 y_2)
			(minus_0 z_1 x_6 y_2)
			(mod_0 r_2 z_1 y_2))
		(mod_0 r_2 x_6 y_2))))
(declare-datatypes ((Tree_0 0)) (((node_0 (data_0 Nat_0) (left_0 Tree_0) (right_0 Tree_0)) (leaf_0 ))))
(declare-fun diseqTree_0 (Tree_0 Tree_0) Bool)
(declare-fun data_1 (Nat_0 Tree_0) Bool)
(declare-fun left_1 (Tree_0 Tree_0) Bool)
(declare-fun right_1 (Tree_0 Tree_0) Bool)
(declare-fun isnode_0 (Tree_0) Bool)
(declare-fun isleaf_0 (Tree_0) Bool)
(assert (forall ((x_22 Tree_0) (x_19 Nat_0) (x_20 Tree_0) (x_21 Tree_0))
	(=> (= x_22 (node_0 x_19 x_20 x_21))
	    (data_1 x_19 x_22))))
(assert (forall ((x_22 Tree_0) (x_19 Nat_0) (x_20 Tree_0) (x_21 Tree_0))
	(=> (= x_22 (node_0 x_19 x_20 x_21))
	    (left_1 x_20 x_22))))
(assert (forall ((x_22 Tree_0) (x_19 Nat_0) (x_20 Tree_0) (x_21 Tree_0))
	(=> (= x_22 (node_0 x_19 x_20 x_21))
	    (right_1 x_21 x_22))))
(assert (forall ((x_24 Nat_0) (x_25 Tree_0) (x_26 Tree_0))
	(isnode_0 (node_0 x_24 x_25 x_26))))
(assert (isleaf_0 leaf_0))
(assert (forall ((x_27 Nat_0) (x_28 Tree_0) (x_29 Tree_0))
	(diseqTree_0 (node_0 x_27 x_28 x_29) leaf_0)))
(assert (forall ((x_30 Nat_0) (x_31 Tree_0) (x_32 Tree_0))
	(diseqTree_0 leaf_0 (node_0 x_30 x_31 x_32))))
(assert (forall ((x_33 Nat_0) (x_34 Tree_0) (x_35 Tree_0) (x_36 Nat_0) (x_37 Tree_0) (x_38 Tree_0))
	(=> (diseqNat_0 x_33 x_36)
	    (diseqTree_0 (node_0 x_33 x_34 x_35) (node_0 x_36 x_37 x_38)))))
(assert (forall ((x_33 Nat_0) (x_34 Tree_0) (x_35 Tree_0) (x_36 Nat_0) (x_37 Tree_0) (x_38 Tree_0))
	(=> (diseqTree_0 x_34 x_37)
	    (diseqTree_0 (node_0 x_33 x_34 x_35) (node_0 x_36 x_37 x_38)))))
(assert (forall ((x_33 Nat_0) (x_34 Tree_0) (x_35 Tree_0) (x_36 Nat_0) (x_37 Tree_0) (x_38 Tree_0))
	(=> (diseqTree_0 x_35 x_38)
	    (diseqTree_0 (node_0 x_33 x_34 x_35) (node_0 x_36 x_37 x_38)))))
(declare-datatypes ((Lst_0 0)) (((cons_0 (head_0 Nat_0) (tail_0 Lst_0)) (nil_0 ))))
(declare-fun diseqLst_0 (Lst_0 Lst_0) Bool)
(declare-fun head_1 (Nat_0 Lst_0) Bool)
(declare-fun tail_1 (Lst_0 Lst_0) Bool)
(declare-fun iscons_0 (Lst_0) Bool)
(declare-fun isnil_0 (Lst_0) Bool)
(assert (forall ((x_41 Lst_0) (x_39 Nat_0) (x_40 Lst_0))
	(=> (= x_41 (cons_0 x_39 x_40))
	    (head_1 x_39 x_41))))
(assert (forall ((x_41 Lst_0) (x_39 Nat_0) (x_40 Lst_0))
	(=> (= x_41 (cons_0 x_39 x_40))
	    (tail_1 x_40 x_41))))
(assert (forall ((x_43 Nat_0) (x_44 Lst_0))
	(iscons_0 (cons_0 x_43 x_44))))
(assert (isnil_0 nil_0))
(assert (forall ((x_45 Nat_0) (x_46 Lst_0))
	(diseqLst_0 (cons_0 x_45 x_46) nil_0)))
(assert (forall ((x_47 Nat_0) (x_48 Lst_0))
	(diseqLst_0 nil_0 (cons_0 x_47 x_48))))
(assert (forall ((x_49 Nat_0) (x_50 Lst_0) (x_51 Nat_0) (x_52 Lst_0))
	(=> (diseqNat_0 x_49 x_51)
	    (diseqLst_0 (cons_0 x_49 x_50) (cons_0 x_51 x_52)))))
(assert (forall ((x_49 Nat_0) (x_50 Lst_0) (x_51 Nat_0) (x_52 Lst_0))
	(=> (diseqLst_0 x_50 x_52)
	    (diseqLst_0 (cons_0 x_49 x_50) (cons_0 x_51 x_52)))))
(declare-fun size_0 (Tree_0 Nat_0) Bool)
(declare-fun insert_0 (Tree_0 Nat_0 Tree_0) Bool)
(declare-fun insertall_0 (Tree_0 Lst_0 Tree_0) Bool)
(assert (size_0 leaf_0 Z_0))
(assert (forall ((x_0 Nat_0) (r_0 Tree_0) (l_0 Tree_0) (m_0 Tree_0) (sl_0 Nat_0) (sr_0 Nat_0) (x_7 Nat_0) (x_8 Nat_0))
	(=>	(and (add_0 x_7 sl_0 sr_0)
			(add_0 x_8 (S_0 Z_0) x_7)
			(= m_0 (node_0 x_0 l_0 r_0))
			(size_0 l_0 sl_0)
			(size_0 r_0 sr_0))
		(size_0 m_0 x_8))))
(assert (forall ((i_0 Nat_0))
	(insert_0 leaf_0 i_0 (node_0 i_0 leaf_0 leaf_0))))
(assert (forall ((r_1 Tree_0) (l_1 Tree_0) (d_0 Nat_0) (i_1 Nat_0) (x_1 Tree_0) (y_0 Tree_0) (m_1 Tree_0))
	(=>	(and (insert_0 r_1 i_1 x_1)
			(insert_0 l_1 i_1 y_0)
			(= m_1 (node_0 d_0 l_1 x_1))
			(lt_0 d_0 i_1))
		(insert_0 (node_0 d_0 l_1 r_1) i_1 m_1))))
(assert (forall ((r_1 Tree_0) (l_1 Tree_0) (d_0 Nat_0) (i_1 Nat_0) (x_1 Tree_0) (y_0 Tree_0) (m_1 Tree_0))
	(=>	(and (insert_0 r_1 i_1 x_1)
			(insert_0 l_1 i_1 y_0)
			(= m_1 (node_0 d_0 y_0 r_1))
			(ge_0 d_0 i_1))
		(insert_0 (node_0 d_0 l_1 r_1) i_1 m_1))))
(assert (forall ((x_2 Tree_0))
	(insertall_0 x_2 nil_0 x_2)))
(assert (forall ((x_3 Tree_0) (n_0 Nat_0) (ls_0 Lst_0) (xs_0 Lst_0) (z_0 Tree_0) (y_1 Tree_0))
	(=>	(and (insertall_0 x_3 ls_0 y_1)
			(= xs_0 (cons_0 n_0 ls_0))
			(insert_0 y_1 n_0 z_0))
		(insertall_0 x_3 xs_0 z_0))))
(assert (forall ((t_0 Tree_0) (n_1 Nat_0) (st_0 Nat_0) (x_4 Tree_0) (x_9 Nat_0))
	(=>	(and (add_0 x_9 (S_0 Z_0) st_0)
			(size_0 t_0 st_0)
			(insert_0 t_0 n_1 x_4))
		(size_0 x_4 x_9))))
(assert (forall ((l_2 Lst_0) (t_1 Tree_0) (i_2 Nat_0) (x_5 Tree_0) (m_2 Nat_0) (n_2 Nat_0) (x_10 Nat_0))
	(=>	(and (size_0 t_1 n_2)
			(insert_0 t_1 i_2 x_5)
			(size_0 x_5 m_2)
			(diseqNat_0 m_2 x_10)
			(add_0 x_10 (S_0 Z_0) n_2))
		false)))
(check-sat)
