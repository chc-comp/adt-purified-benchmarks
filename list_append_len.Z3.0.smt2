(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun unS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_0 (Nat_0) Bool)
(declare-fun isS_0 (Nat_0) Bool)
(assert (forall ((x_7 Nat_0) (x_6 Nat_0))
	(=> (= x_7 (S_0 x_6))
	    (unS_1 x_6 x_7))))
(assert (isZ_0 Z_0))
(assert (forall ((x_8 Nat_0))
	(isS_0 (S_0 x_8))))
(assert (forall ((x_9 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_9))))
(assert (forall ((x_10 Nat_0))
	(diseqNat_0 (S_0 x_10) Z_0)))
(assert (forall ((x_11 Nat_0) (x_12 Nat_0))
	(=> (diseqNat_0 x_11 x_12)
	    (diseqNat_0 (S_0 x_11) (S_0 x_12)))))
(declare-fun add_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun minus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun le_0 (Nat_0 Nat_0) Bool)
(declare-fun ge_0 (Nat_0 Nat_0) Bool)
(declare-fun lt_0 (Nat_0 Nat_0) Bool)
(declare-fun gt_0 (Nat_0 Nat_0) Bool)
(declare-fun mult_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun div_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun mod_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((y_0 Nat_0))
	(add_0 y_0 Z_0 y_0)))
(assert (forall ((x_2 Nat_0) (y_0 Nat_0) (r_0 Nat_0))
	(=> (add_0 r_0 x_2 y_0)
	    (add_0 (S_0 r_0) (S_0 x_2) y_0))))
(assert (forall ((y_0 Nat_0))
	(minus_0 Z_0 Z_0 y_0)))
(assert (forall ((x_2 Nat_0) (y_0 Nat_0) (r_0 Nat_0))
	(=> (minus_0 r_0 x_2 y_0)
	    (minus_0 (S_0 r_0) (S_0 x_2) y_0))))
(assert (forall ((y_0 Nat_0))
	(le_0 Z_0 y_0)))
(assert (forall ((x_2 Nat_0) (y_0 Nat_0))
	(=> (le_0 x_2 y_0)
	    (le_0 (S_0 x_2) (S_0 y_0)))))
(assert (forall ((y_0 Nat_0))
	(ge_0 y_0 Z_0)))
(assert (forall ((x_2 Nat_0) (y_0 Nat_0))
	(=> (ge_0 x_2 y_0)
	    (ge_0 (S_0 x_2) (S_0 y_0)))))
(assert (forall ((y_0 Nat_0))
	(lt_0 Z_0 (S_0 y_0))))
(assert (forall ((x_2 Nat_0) (y_0 Nat_0))
	(=> (lt_0 x_2 y_0)
	    (lt_0 (S_0 x_2) (S_0 y_0)))))
(assert (forall ((y_0 Nat_0))
	(gt_0 (S_0 y_0) Z_0)))
(assert (forall ((x_2 Nat_0) (y_0 Nat_0))
	(=> (gt_0 x_2 y_0)
	    (gt_0 (S_0 x_2) (S_0 y_0)))))
(assert (forall ((y_0 Nat_0))
	(mult_0 Z_0 Z_0 y_0)))
(assert (forall ((x_2 Nat_0) (y_0 Nat_0) (r_0 Nat_0) (z_0 Nat_0))
	(=>	(and (mult_0 r_0 x_2 y_0)
			(add_0 z_0 r_0 y_0))
		(mult_0 z_0 (S_0 x_2) y_0))))
(assert (forall ((x_2 Nat_0) (y_0 Nat_0))
	(=> (lt_0 x_2 y_0)
	    (div_0 Z_0 x_2 y_0))))
(assert (forall ((x_2 Nat_0) (y_0 Nat_0) (r_0 Nat_0) (z_0 Nat_0))
	(=>	(and (ge_0 x_2 y_0)
			(minus_0 z_0 x_2 y_0)
			(div_0 r_0 z_0 y_0))
		(div_0 (S_0 r_0) x_2 y_0))))
(assert (forall ((x_2 Nat_0) (y_0 Nat_0))
	(=> (lt_0 x_2 y_0)
	    (mod_0 x_2 x_2 y_0))))
(assert (forall ((x_2 Nat_0) (y_0 Nat_0) (r_0 Nat_0) (z_0 Nat_0))
	(=>	(and (ge_0 x_2 y_0)
			(minus_0 z_0 x_2 y_0)
			(mod_0 r_0 z_0 y_0))
		(mod_0 r_0 x_2 y_0))))
(declare-datatypes ((Lst_0 0)) (((cons_0 (head_0 Nat_0) (tail_0 Lst_0)) (nil_0 ))))
(declare-fun diseqLst_0 (Lst_0 Lst_0) Bool)
(declare-fun head_1 (Nat_0 Lst_0) Bool)
(declare-fun tail_1 (Lst_0 Lst_0) Bool)
(declare-fun iscons_0 (Lst_0) Bool)
(declare-fun isnil_0 (Lst_0) Bool)
(assert (forall ((x_15 Lst_0) (x_13 Nat_0) (x_14 Lst_0))
	(=> (= x_15 (cons_0 x_13 x_14))
	    (head_1 x_13 x_15))))
(assert (forall ((x_15 Lst_0) (x_13 Nat_0) (x_14 Lst_0))
	(=> (= x_15 (cons_0 x_13 x_14))
	    (tail_1 x_14 x_15))))
(assert (forall ((x_17 Nat_0) (x_18 Lst_0))
	(iscons_0 (cons_0 x_17 x_18))))
(assert (isnil_0 nil_0))
(assert (forall ((x_19 Nat_0) (x_20 Lst_0))
	(diseqLst_0 (cons_0 x_19 x_20) nil_0)))
(assert (forall ((x_21 Nat_0) (x_22 Lst_0))
	(diseqLst_0 nil_0 (cons_0 x_21 x_22))))
(assert (forall ((x_23 Nat_0) (x_24 Lst_0) (x_25 Nat_0) (x_26 Lst_0))
	(=> (diseqNat_0 x_23 x_25)
	    (diseqLst_0 (cons_0 x_23 x_24) (cons_0 x_25 x_26)))))
(assert (forall ((x_23 Nat_0) (x_24 Lst_0) (x_25 Nat_0) (x_26 Lst_0))
	(=> (diseqLst_0 x_24 x_26)
	    (diseqLst_0 (cons_0 x_23 x_24) (cons_0 x_25 x_26)))))
(declare-fun length_0 (Lst_0 Nat_0) Bool)
(declare-fun append_0 (Lst_0 Lst_0 Lst_0) Bool)
(assert (length_0 nil_0 Z_0))
(assert (forall ((x_0 Nat_0) (xs_0 Lst_0) (ys_0 Lst_0) (l_0 Nat_0) (x_3 Nat_0))
	(=>	(and (add_0 x_3 l_0 (S_0 Z_0))
			(= xs_0 (cons_0 x_0 ys_0))
			(length_0 ys_0 l_0))
		(length_0 xs_0 x_3))))
(assert (forall ((xs_1 Lst_0))
	(append_0 nil_0 xs_1 xs_1)))
(assert (forall ((x_1 Nat_0) (xs_2 Lst_0) (ys_1 Lst_0) (zs_0 Lst_0) (rs_0 Lst_0) (ts_0 Lst_0))
	(=>	(and (= xs_2 (cons_0 x_1 ys_1))
			(append_0 ys_1 zs_0 rs_0)
			(= ts_0 (cons_0 x_1 rs_0)))
		(append_0 xs_2 zs_0 ts_0))))
(assert (forall ((xs_3 Lst_0) (lx_0 Nat_0) (ys_2 Lst_0) (ly_0 Nat_0) (zs_1 Lst_0) (lz_0 Nat_0) (x_4 Nat_0))
	(=>	(and (length_0 xs_3 lx_0)
			(length_0 ys_2 ly_0)
			(append_0 xs_3 ys_2 zs_1)
			(length_0 zs_1 lz_0)
			(diseqNat_0 x_4 lz_0)
			(add_0 x_4 lx_0 ly_0))
		false)))
(check-sat)
