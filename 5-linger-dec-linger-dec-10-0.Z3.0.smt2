(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun unS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_0 (Nat_0) Bool)
(declare-fun isS_0 (Nat_0) Bool)
(assert (forall ((x_56 Nat_0) (x_55 Nat_0))
	(=> (= x_56 (S_0 x_55))
	    (unS_1 x_55 x_56))))
(assert (isZ_0 Z_0))
(assert (forall ((x_57 Nat_0))
	(isS_0 (S_0 x_57))))
(assert (forall ((x_58 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_58))))
(assert (forall ((x_59 Nat_0))
	(diseqNat_0 (S_0 x_59) Z_0)))
(assert (forall ((x_60 Nat_0) (x_61 Nat_0))
	(=> (diseqNat_0 x_60 x_61)
	    (diseqNat_0 (S_0 x_60) (S_0 x_61)))))
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
(assert (forall ((x_49 Nat_0) (y_0 Nat_0) (r_0 Nat_0))
	(=> (add_0 r_0 x_49 y_0)
	    (add_0 (S_0 r_0) (S_0 x_49) y_0))))
(assert (forall ((y_0 Nat_0))
	(minus_0 Z_0 Z_0 y_0)))
(assert (forall ((x_49 Nat_0) (y_0 Nat_0) (r_0 Nat_0))
	(=> (minus_0 r_0 x_49 y_0)
	    (minus_0 (S_0 r_0) (S_0 x_49) y_0))))
(assert (forall ((y_0 Nat_0))
	(le_0 Z_0 y_0)))
(assert (forall ((x_49 Nat_0) (y_0 Nat_0))
	(=> (le_0 x_49 y_0)
	    (le_0 (S_0 x_49) (S_0 y_0)))))
(assert (forall ((y_0 Nat_0))
	(ge_0 y_0 Z_0)))
(assert (forall ((x_49 Nat_0) (y_0 Nat_0))
	(=> (ge_0 x_49 y_0)
	    (ge_0 (S_0 x_49) (S_0 y_0)))))
(assert (forall ((y_0 Nat_0))
	(lt_0 Z_0 (S_0 y_0))))
(assert (forall ((x_49 Nat_0) (y_0 Nat_0))
	(=> (lt_0 x_49 y_0)
	    (lt_0 (S_0 x_49) (S_0 y_0)))))
(assert (forall ((y_0 Nat_0))
	(gt_0 (S_0 y_0) Z_0)))
(assert (forall ((x_49 Nat_0) (y_0 Nat_0))
	(=> (gt_0 x_49 y_0)
	    (gt_0 (S_0 x_49) (S_0 y_0)))))
(assert (forall ((y_0 Nat_0))
	(mult_0 Z_0 Z_0 y_0)))
(assert (forall ((x_49 Nat_0) (y_0 Nat_0) (r_0 Nat_0) (z_1 Nat_0))
	(=>	(and (mult_0 r_0 x_49 y_0)
			(add_0 z_1 r_0 y_0))
		(mult_0 z_1 (S_0 x_49) y_0))))
(assert (forall ((x_49 Nat_0) (y_0 Nat_0))
	(=> (lt_0 x_49 y_0)
	    (div_0 Z_0 x_49 y_0))))
(assert (forall ((x_49 Nat_0) (y_0 Nat_0) (r_0 Nat_0) (z_1 Nat_0))
	(=>	(and (ge_0 x_49 y_0)
			(minus_0 z_1 x_49 y_0)
			(div_0 r_0 z_1 y_0))
		(div_0 (S_0 r_0) x_49 y_0))))
(assert (forall ((x_49 Nat_0) (y_0 Nat_0))
	(=> (lt_0 x_49 y_0)
	    (mod_0 x_49 x_49 y_0))))
(assert (forall ((x_49 Nat_0) (y_0 Nat_0) (r_0 Nat_0) (z_1 Nat_0))
	(=>	(and (ge_0 x_49 y_0)
			(minus_0 z_1 x_49 y_0)
			(mod_0 r_0 z_1 y_0))
		(mod_0 r_0 x_49 y_0))))
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
(declare-datatypes ((MutInt_0 0)) (((mutInt_1 (curInt_0 Nat_0) (retInt_0 Nat_0)))))
(declare-fun diseqMutInt_0 (MutInt_0 MutInt_0) Bool)
(declare-fun curInt_1 (Nat_0 MutInt_0) Bool)
(declare-fun retInt_1 (Nat_0 MutInt_0) Bool)
(declare-fun ismutInt_0 (MutInt_0) Bool)
(assert (forall ((x_64 MutInt_0) (x_62 Nat_0) (x_63 Nat_0))
	(=> (= x_64 (mutInt_1 x_62 x_63))
	    (curInt_1 x_62 x_64))))
(assert (forall ((x_64 MutInt_0) (x_62 Nat_0) (x_63 Nat_0))
	(=> (= x_64 (mutInt_1 x_62 x_63))
	    (retInt_1 x_63 x_64))))
(assert (forall ((x_65 Nat_0) (x_66 Nat_0))
	(ismutInt_0 (mutInt_1 x_65 x_66))))
(assert (forall ((x_67 Nat_0) (x_68 Nat_0) (x_69 Nat_0) (x_70 Nat_0))
	(=> (diseqNat_0 x_67 x_69)
	    (diseqMutInt_0 (mutInt_1 x_67 x_68) (mutInt_1 x_69 x_70)))))
(assert (forall ((x_67 Nat_0) (x_68 Nat_0) (x_69 Nat_0) (x_70 Nat_0))
	(=> (diseqNat_0 x_68 x_70)
	    (diseqMutInt_0 (mutInt_1 x_67 x_68) (mutInt_1 x_69 x_70)))))
(declare-fun lingerdecbound_0 (Nat_0 MutInt_0) Bool)
(declare-fun lingerdecbound_1 (Nat_0 MutInt_0 Bool) Bool)
(declare-fun lingerdecbound_2 (Nat_0 MutInt_0 Nat_0 Nat_0 Bool) Bool)
(declare-fun main_0 (Bool) Bool)
(declare-fun main_1 (Nat_0 Nat_0 Nat_0 Bool Bool) Bool)
(declare-fun main_2 (Bool Bool) Bool)
(declare-fun main_3 (Nat_0 Nat_0 Nat_0 Bool Bool Bool) Bool)
(assert (forall ((x_0 Nat_0) (x_1 MutInt_0))
	(=>	(and (lingerdecbound_1 x_0 x_1 true)
			(= x_0 Z_0))
		(lingerdecbound_0 x_0 x_1))))
(assert (forall ((x_0 Nat_0) (x_1 MutInt_0))
	(=>	(and (lingerdecbound_1 x_0 x_1 false)
			(diseqNat_0 x_0 Z_0))
		(lingerdecbound_0 x_0 x_1))))
(assert (forall ((x_2 Nat_0) (x_3 MutInt_0) (x_4 Nat_0) (x_5 Bool) (x_50 Nat_0) (x_51 Nat_0) (x_71 Nat_0) (x_72 Nat_0))
	(=>	(and (lingerdecbound_2 x_2 (mutInt_1 x_50 x_71) x_4 x_51 x_5)
			(minus_0 x_50 x_72 (S_0 Z_0))
			(minus_0 x_51 x_2 (S_0 Z_0))
			(retInt_1 x_71 x_3)
			(curInt_1 x_72 x_3))
		(lingerdecbound_1 x_2 x_3 false))))
(assert (forall ((x_6 Nat_0) (x_7 MutInt_0) (x_73 Nat_0) (x_74 Nat_0))
	(=>	(and (= x_73 x_74)
			(retInt_1 x_73 x_7)
			(curInt_1 x_74 x_7))
		(lingerdecbound_1 x_6 x_7 true))))
(assert (forall ((x_8 Nat_0) (x_9 MutInt_0) (x_10 Nat_0) (x_11 Nat_0) (x_12 Nat_0) (x_13 Nat_0) (x_14 Nat_0) (x_75 Nat_0) (x_76 Nat_0))
	(=>	(and (= x_12 x_13)
			(lingerdecbound_0 x_11 (mutInt_1 x_75 x_14))
			(= x_13 x_14)
			(= x_76 x_12)
			(curInt_1 x_75 x_9)
			(retInt_1 x_76 x_9))
		(lingerdecbound_2 x_8 x_9 x_10 x_11 false))))
(assert (forall ((x_15 Nat_0) (x_16 MutInt_0) (x_17 Nat_0) (x_18 Nat_0) (x_19 Nat_0) (x_20 Nat_0) (x_21 Nat_0) (x_22 Nat_0) (x_77 Nat_0) (x_78 Nat_0))
	(=>	(and (= x_19 x_20)
			(= x_20 x_21)
			(lingerdecbound_0 x_18 (mutInt_1 x_17 x_22))
			(= x_21 x_22)
			(= x_77 x_78)
			(retInt_1 x_77 x_16)
			(curInt_1 x_78 x_16))
		(lingerdecbound_2 x_15 x_16 x_17 x_18 true))))
(assert (forall ((x_23 Bool) (x_24 Nat_0) (x_25 Nat_0) (x_26 Nat_0) (x_27 Nat_0))
	(=>	(and (lingerdecbound_0 x_24 (mutInt_1 x_25 x_27))
			(= x_26 x_27)
			(main_1 x_24 x_26 x_25 true x_23)
			(ge_0 x_25 x_26))
		(main_0 x_23))))
(assert (forall ((x_23 Bool) (x_24 Nat_0) (x_25 Nat_0) (x_26 Nat_0) (x_27 Nat_0))
	(=>	(and (lingerdecbound_0 x_24 (mutInt_1 x_25 x_27))
			(= x_26 x_27)
			(main_1 x_24 x_26 x_25 false x_23)
			(lt_0 x_25 x_26))
		(main_0 x_23))))
(assert (forall ((x_28 Nat_0) (x_29 Nat_0) (x_30 Nat_0) (x_31 Bool))
	(=> (main_2 true x_31)
	    (main_1 x_28 x_29 x_30 false x_31))))
(assert (forall ((x_32 Nat_0) (x_33 Nat_0) (x_34 Nat_0) (x_35 Bool) (x_52 Nat_0))
	(=>	(and (main_3 x_32 x_33 x_34 true true x_35)
			(le_0 x_52 x_32)
			(minus_0 x_52 x_34 x_33))
		(main_1 x_32 x_33 x_34 true x_35))))
(assert (forall ((x_32 Nat_0) (x_33 Nat_0) (x_34 Nat_0) (x_35 Bool) (x_53 Nat_0))
	(=>	(and (main_3 x_32 x_33 x_34 true false x_35)
			(gt_0 x_53 x_32)
			(minus_0 x_53 x_34 x_33))
		(main_1 x_32 x_33 x_34 true x_35))))
(assert (forall ((x_36 Nat_0) (x_37 Nat_0) (x_38 Nat_0) (x_39 Bool) (x_40 Bool))
	(=> (main_2 true x_40)
	    (main_3 x_36 x_37 x_38 x_39 false x_40))))
(assert (forall ((x_41 Nat_0) (x_42 Nat_0) (x_43 Nat_0) (x_44 Bool) (x_45 Bool))
	(=> (main_2 false x_45)
	    (main_3 x_41 x_42 x_43 x_44 true x_45))))
(assert (forall ((x_46 Bool))
	(=> (= x_46 false)
	    (main_2 false x_46))))
(assert (forall ((x_47 Bool))
	(=> (= x_47 true)
	    (main_2 true x_47))))
(assert (forall ((x_48 Nat_0))
	(=> (main_0 true)
	    false)))
(check-sat)
