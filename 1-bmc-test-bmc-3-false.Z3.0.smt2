(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun unS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_0 (Nat_0) Bool)
(declare-fun isS_0 (Nat_0) Bool)
(assert (forall ((x_60 Nat_0) (x_59 Nat_0))
	(=> (= x_60 (S_0 x_59))
	    (unS_1 x_59 x_60))))
(assert (isZ_0 Z_0))
(assert (forall ((x_61 Nat_0))
	(isS_0 (S_0 x_61))))
(assert (forall ((x_62 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_62))))
(assert (forall ((x_63 Nat_0))
	(diseqNat_0 (S_0 x_63) Z_0)))
(assert (forall ((x_64 Nat_0) (x_65 Nat_0))
	(=> (diseqNat_0 x_64 x_65)
	    (diseqNat_0 (S_0 x_64) (S_0 x_65)))))
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
(assert (forall ((x_43 Nat_0) (y_0 Nat_0) (r_0 Nat_0))
	(=> (add_0 r_0 x_43 y_0)
	    (add_0 (S_0 r_0) (S_0 x_43) y_0))))
(assert (forall ((y_0 Nat_0))
	(minus_0 Z_0 Z_0 y_0)))
(assert (forall ((x_43 Nat_0) (y_0 Nat_0) (r_0 Nat_0))
	(=> (minus_0 r_0 x_43 y_0)
	    (minus_0 (S_0 r_0) (S_0 x_43) y_0))))
(assert (forall ((y_0 Nat_0))
	(le_0 Z_0 y_0)))
(assert (forall ((x_43 Nat_0) (y_0 Nat_0))
	(=> (le_0 x_43 y_0)
	    (le_0 (S_0 x_43) (S_0 y_0)))))
(assert (forall ((y_0 Nat_0))
	(ge_0 y_0 Z_0)))
(assert (forall ((x_43 Nat_0) (y_0 Nat_0))
	(=> (ge_0 x_43 y_0)
	    (ge_0 (S_0 x_43) (S_0 y_0)))))
(assert (forall ((y_0 Nat_0))
	(lt_0 Z_0 (S_0 y_0))))
(assert (forall ((x_43 Nat_0) (y_0 Nat_0))
	(=> (lt_0 x_43 y_0)
	    (lt_0 (S_0 x_43) (S_0 y_0)))))
(assert (forall ((y_0 Nat_0))
	(gt_0 (S_0 y_0) Z_0)))
(assert (forall ((x_43 Nat_0) (y_0 Nat_0))
	(=> (gt_0 x_43 y_0)
	    (gt_0 (S_0 x_43) (S_0 y_0)))))
(assert (forall ((y_0 Nat_0))
	(mult_0 Z_0 Z_0 y_0)))
(assert (forall ((x_43 Nat_0) (y_0 Nat_0) (r_0 Nat_0) (z_1 Nat_0))
	(=>	(and (mult_0 r_0 x_43 y_0)
			(add_0 z_1 r_0 y_0))
		(mult_0 z_1 (S_0 x_43) y_0))))
(assert (forall ((x_43 Nat_0) (y_0 Nat_0))
	(=> (lt_0 x_43 y_0)
	    (div_0 Z_0 x_43 y_0))))
(assert (forall ((x_43 Nat_0) (y_0 Nat_0) (r_0 Nat_0) (z_1 Nat_0))
	(=>	(and (ge_0 x_43 y_0)
			(minus_0 z_1 x_43 y_0)
			(div_0 r_0 z_1 y_0))
		(div_0 (S_0 r_0) x_43 y_0))))
(assert (forall ((x_43 Nat_0) (y_0 Nat_0))
	(=> (lt_0 x_43 y_0)
	    (mod_0 x_43 x_43 y_0))))
(assert (forall ((x_43 Nat_0) (y_0 Nat_0) (r_0 Nat_0) (z_1 Nat_0))
	(=>	(and (ge_0 x_43 y_0)
			(minus_0 z_1 x_43 y_0)
			(mod_0 r_0 z_1 y_0))
		(mod_0 r_0 x_43 y_0))))
(declare-fun and_0 (Bool Bool Bool) Bool)
(declare-fun or_0 (Bool Bool Bool) Bool)
(declare-fun hence_0 (Bool Bool Bool) Bool)
(declare-fun not_0 (Bool Bool) Bool)
(assert (and_0 false false false))
(assert (and_0 false true false))
(assert (and_0 false false true))
(assert (and_0 true true true))
(assert (or_0 false false false))
(assert (or_0 true true false))
(assert (or_0 true false true))
(assert (or_0 true true true))
(assert (hence_0 true false false))
(assert (hence_0 false true false))
(assert (hence_0 true false true))
(assert (hence_0 true true true))
(assert (not_0 true false))
(assert (not_0 false true))
(declare-fun main_0 (Bool) Bool)
(declare-fun main_1 (Nat_0 Bool Bool) Bool)
(declare-fun main_2 (Nat_0 Bool Bool) Bool)
(declare-fun main_3 (Nat_0 Bool Bool) Bool)
(declare-fun main_4 (Nat_0 Bool Bool) Bool)
(declare-fun main_5 (Nat_0 Bool Bool) Bool)
(declare-fun main_6 (Nat_0 Bool Bool) Bool)
(declare-fun main_7 (Bool Bool) Bool)
(assert (forall ((x_0 Bool) (x_1 Bool))
	(=> (main_1 Z_0 x_1 x_0)
	    (main_0 x_0))))
(assert (forall ((x_2 Nat_0) (x_3 Bool) (x_4 Bool) (x_44 Nat_0))
	(=>	(and (main_2 x_44 x_4 x_3)
			(add_0 x_44 x_2 (S_0 (S_0 Z_0))))
		(main_1 x_2 false x_3))))
(assert (forall ((x_5 Nat_0) (x_6 Bool) (x_7 Bool) (x_45 Nat_0))
	(=>	(and (main_2 x_45 x_7 x_6)
			(add_0 x_45 x_5 (S_0 Z_0)))
		(main_1 x_5 true x_6))))
(assert (forall ((x_8 Nat_0) (x_9 Bool) (x_10 Bool) (x_46 Nat_0))
	(=>	(and (main_3 x_46 x_10 x_9)
			(add_0 x_46 x_8 (S_0 (S_0 Z_0))))
		(main_2 x_8 false x_9))))
(assert (forall ((x_11 Nat_0) (x_12 Bool) (x_13 Bool) (x_47 Nat_0))
	(=>	(and (main_3 x_47 x_13 x_12)
			(add_0 x_47 x_11 (S_0 Z_0)))
		(main_2 x_11 true x_12))))
(assert (forall ((x_14 Nat_0) (x_15 Bool) (x_16 Bool) (x_48 Nat_0))
	(=>	(and (main_4 x_48 x_16 x_15)
			(add_0 x_48 x_14 (S_0 (S_0 Z_0))))
		(main_3 x_14 false x_15))))
(assert (forall ((x_17 Nat_0) (x_18 Bool) (x_19 Bool) (x_49 Nat_0))
	(=>	(and (main_4 x_49 x_19 x_18)
			(add_0 x_49 x_17 (S_0 Z_0)))
		(main_3 x_17 true x_18))))
(assert (forall ((x_20 Nat_0) (x_21 Bool) (x_22 Bool) (x_50 Nat_0))
	(=>	(and (main_5 x_50 x_22 x_21)
			(add_0 x_50 x_20 (S_0 (S_0 Z_0))))
		(main_4 x_20 false x_21))))
(assert (forall ((x_23 Nat_0) (x_24 Bool) (x_25 Bool) (x_51 Nat_0))
	(=>	(and (main_5 x_51 x_25 x_24)
			(add_0 x_51 x_23 (S_0 Z_0)))
		(main_4 x_23 true x_24))))
(assert (forall ((x_26 Nat_0) (x_27 Bool) (x_28 Bool) (x_52 Nat_0))
	(=>	(and (main_6 x_52 x_28 x_27)
			(add_0 x_52 x_26 (S_0 (S_0 Z_0))))
		(main_5 x_26 false x_27))))
(assert (forall ((x_29 Nat_0) (x_30 Bool) (x_31 Bool) (x_53 Nat_0))
	(=>	(and (main_6 x_53 x_31 x_30)
			(add_0 x_53 x_29 (S_0 Z_0)))
		(main_5 x_29 true x_30))))
(assert (forall ((x_32 Nat_0) (x_33 Bool) (x_39 Bool) (x_54 Nat_0))
	(=>	(and (main_7 x_39 x_33)
			(le_0 x_54 (S_0 (S_0 (S_0 (S_0 (S_0 (S_0 (S_0 (S_0 (S_0 (S_0 (S_0 (S_0 Z_0)))))))))))))
			(not_0 x_39 true)
			(add_0 x_54 x_32 (S_0 (S_0 (S_0 Z_0)))))
		(main_6 x_32 false x_33))))
(assert (forall ((x_32 Nat_0) (x_33 Bool) (x_40 Bool) (x_55 Nat_0))
	(=>	(and (main_7 x_40 x_33)
			(gt_0 x_55 (S_0 (S_0 (S_0 (S_0 (S_0 (S_0 (S_0 (S_0 (S_0 (S_0 (S_0 (S_0 Z_0)))))))))))))
			(not_0 x_40 false)
			(add_0 x_55 x_32 (S_0 (S_0 (S_0 Z_0)))))
		(main_6 x_32 false x_33))))
(assert (forall ((x_34 Nat_0) (x_35 Bool) (x_41 Bool) (x_56 Nat_0))
	(=>	(and (main_7 x_41 x_35)
			(le_0 x_56 (S_0 (S_0 (S_0 (S_0 (S_0 (S_0 (S_0 (S_0 (S_0 (S_0 (S_0 (S_0 Z_0)))))))))))))
			(not_0 x_41 true)
			(add_0 x_56 x_34 (S_0 Z_0)))
		(main_6 x_34 true x_35))))
(assert (forall ((x_34 Nat_0) (x_35 Bool) (x_42 Bool) (x_57 Nat_0))
	(=>	(and (main_7 x_42 x_35)
			(gt_0 x_57 (S_0 (S_0 (S_0 (S_0 (S_0 (S_0 (S_0 (S_0 (S_0 (S_0 (S_0 (S_0 Z_0)))))))))))))
			(not_0 x_42 false)
			(add_0 x_57 x_34 (S_0 Z_0)))
		(main_6 x_34 true x_35))))
(assert (forall ((x_36 Bool))
	(=> (= x_36 false)
	    (main_7 false x_36))))
(assert (forall ((x_37 Bool))
	(=> (= x_37 true)
	    (main_7 true x_37))))
(assert (forall ((x_38 Nat_0))
	(=> (main_0 true)
	    false)))
(check-sat)
