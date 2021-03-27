(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun unS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_0 (Nat_0) Bool)
(declare-fun isS_0 (Nat_0) Bool)
(assert (forall ((x_52 Nat_0) (x_51 Nat_0))
	(=> (= x_52 (S_0 x_51))
	    (unS_1 x_51 x_52))))
(assert (isZ_0 Z_0))
(assert (forall ((x_53 Nat_0))
	(isS_0 (S_0 x_53))))
(assert (forall ((x_54 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_54))))
(assert (forall ((x_55 Nat_0))
	(diseqNat_0 (S_0 x_55) Z_0)))
(assert (forall ((x_56 Nat_0) (x_57 Nat_0))
	(=> (diseqNat_0 x_56 x_57)
	    (diseqNat_0 (S_0 x_56) (S_0 x_57)))))
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
(assert (forall ((x_46 Nat_0) (y_0 Nat_0) (r_0 Nat_0))
	(=> (add_0 r_0 x_46 y_0)
	    (add_0 (S_0 r_0) (S_0 x_46) y_0))))
(assert (forall ((y_0 Nat_0))
	(minus_0 Z_0 Z_0 y_0)))
(assert (forall ((x_46 Nat_0) (y_0 Nat_0) (r_0 Nat_0))
	(=> (minus_0 r_0 x_46 y_0)
	    (minus_0 (S_0 r_0) (S_0 x_46) y_0))))
(assert (forall ((y_0 Nat_0))
	(le_0 Z_0 y_0)))
(assert (forall ((x_46 Nat_0) (y_0 Nat_0))
	(=> (le_0 x_46 y_0)
	    (le_0 (S_0 x_46) (S_0 y_0)))))
(assert (forall ((y_0 Nat_0))
	(ge_0 y_0 Z_0)))
(assert (forall ((x_46 Nat_0) (y_0 Nat_0))
	(=> (ge_0 x_46 y_0)
	    (ge_0 (S_0 x_46) (S_0 y_0)))))
(assert (forall ((y_0 Nat_0))
	(lt_0 Z_0 (S_0 y_0))))
(assert (forall ((x_46 Nat_0) (y_0 Nat_0))
	(=> (lt_0 x_46 y_0)
	    (lt_0 (S_0 x_46) (S_0 y_0)))))
(assert (forall ((y_0 Nat_0))
	(gt_0 (S_0 y_0) Z_0)))
(assert (forall ((x_46 Nat_0) (y_0 Nat_0))
	(=> (gt_0 x_46 y_0)
	    (gt_0 (S_0 x_46) (S_0 y_0)))))
(assert (forall ((y_0 Nat_0))
	(mult_0 Z_0 Z_0 y_0)))
(assert (forall ((x_46 Nat_0) (y_0 Nat_0) (r_0 Nat_0) (z_1 Nat_0))
	(=>	(and (mult_0 r_0 x_46 y_0)
			(add_0 z_1 r_0 y_0))
		(mult_0 z_1 (S_0 x_46) y_0))))
(assert (forall ((x_46 Nat_0) (y_0 Nat_0))
	(=> (lt_0 x_46 y_0)
	    (div_0 Z_0 x_46 y_0))))
(assert (forall ((x_46 Nat_0) (y_0 Nat_0) (r_0 Nat_0) (z_1 Nat_0))
	(=>	(and (ge_0 x_46 y_0)
			(minus_0 z_1 x_46 y_0)
			(div_0 r_0 z_1 y_0))
		(div_0 (S_0 r_0) x_46 y_0))))
(assert (forall ((x_46 Nat_0) (y_0 Nat_0))
	(=> (lt_0 x_46 y_0)
	    (mod_0 x_46 x_46 y_0))))
(assert (forall ((x_46 Nat_0) (y_0 Nat_0) (r_0 Nat_0) (z_1 Nat_0))
	(=>	(and (ge_0 x_46 y_0)
			(minus_0 z_1 x_46 y_0)
			(mod_0 r_0 z_1 y_0))
		(mod_0 r_0 x_46 y_0))))
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
(assert (forall ((x_60 MutInt_0) (x_58 Nat_0) (x_59 Nat_0))
	(=> (= x_60 (mutInt_1 x_58 x_59))
	    (curInt_1 x_58 x_60))))
(assert (forall ((x_60 MutInt_0) (x_58 Nat_0) (x_59 Nat_0))
	(=> (= x_60 (mutInt_1 x_58 x_59))
	    (retInt_1 x_59 x_60))))
(assert (forall ((x_61 Nat_0) (x_62 Nat_0))
	(ismutInt_0 (mutInt_1 x_61 x_62))))
(assert (forall ((x_63 Nat_0) (x_64 Nat_0) (x_65 Nat_0) (x_66 Nat_0))
	(=> (diseqNat_0 x_63 x_65)
	    (diseqMutInt_0 (mutInt_1 x_63 x_64) (mutInt_1 x_65 x_66)))))
(assert (forall ((x_63 Nat_0) (x_64 Nat_0) (x_65 Nat_0) (x_66 Nat_0))
	(=> (diseqNat_0 x_64 x_66)
	    (diseqMutInt_0 (mutInt_1 x_63 x_64) (mutInt_1 x_65 x_66)))))
(declare-datatypes ((MutMutInt_0 0)) (((mutMutInt_1 (curMutInt_0 MutInt_0) (retMutInt_0 MutInt_0)))))
(declare-fun diseqMutMutInt_0 (MutMutInt_0 MutMutInt_0) Bool)
(declare-fun curMutInt_1 (MutInt_0 MutMutInt_0) Bool)
(declare-fun retMutInt_1 (MutInt_0 MutMutInt_0) Bool)
(declare-fun ismutMutInt_0 (MutMutInt_0) Bool)
(assert (forall ((x_69 MutMutInt_0) (x_67 MutInt_0) (x_68 MutInt_0))
	(=> (= x_69 (mutMutInt_1 x_67 x_68))
	    (curMutInt_1 x_67 x_69))))
(assert (forall ((x_69 MutMutInt_0) (x_67 MutInt_0) (x_68 MutInt_0))
	(=> (= x_69 (mutMutInt_1 x_67 x_68))
	    (retMutInt_1 x_68 x_69))))
(assert (forall ((x_70 MutInt_0) (x_71 MutInt_0))
	(ismutMutInt_0 (mutMutInt_1 x_70 x_71))))
(assert (forall ((x_72 MutInt_0) (x_73 MutInt_0) (x_74 MutInt_0) (x_75 MutInt_0))
	(=> (diseqMutInt_0 x_72 x_74)
	    (diseqMutMutInt_0 (mutMutInt_1 x_72 x_73) (mutMutInt_1 x_74 x_75)))))
(assert (forall ((x_72 MutInt_0) (x_73 MutInt_0) (x_74 MutInt_0) (x_75 MutInt_0))
	(=> (diseqMutInt_0 x_73 x_75)
	    (diseqMutMutInt_0 (mutMutInt_1 x_72 x_73) (mutMutInt_1 x_74 x_75)))))
(declare-fun main_0 (Bool) Bool)
(declare-fun main_1 (Bool Bool) Bool)
(declare-fun swapdecthree_0 (MutMutInt_0 MutMutInt_0 MutMutInt_0) Bool)
(declare-fun mayswapMutInt_0 (MutMutInt_0 MutMutInt_0) Bool)
(declare-fun mayswapMutInt_1 (MutMutInt_0 MutMutInt_0 Bool) Bool)
(declare-fun swapdecthree_1 (MutMutInt_0 MutMutInt_0 MutMutInt_0 Bool) Bool)
(assert (forall ((x_0 Bool) (x_1 Nat_0) (x_2 Nat_0) (x_3 Nat_0) (x_4 Nat_0) (x_5 Nat_0) (x_6 Nat_0) (x_7 MutInt_0) (x_8 MutInt_0) (x_9 MutInt_0) (x_10 MutInt_0) (x_11 MutInt_0) (x_12 MutInt_0) (x_44 Bool) (x_76 Nat_0) (x_77 Nat_0) (x_78 Nat_0) (x_79 Nat_0) (x_80 Nat_0) (x_81 Nat_0))
	(=>	(and (swapdecthree_0 (mutMutInt_1 (mutInt_1 x_1 x_4) x_8) (mutMutInt_1 (mutInt_1 x_2 x_5) x_10) (mutMutInt_1 (mutInt_1 x_3 x_6) x_12))
			(= x_11 x_12)
			(= x_9 x_10)
			(= x_7 x_8)
			(= x_76 x_77)
			(= x_78 x_79)
			(= x_80 x_81)
			(main_1 x_44 x_0)
			(ge_0 x_1 x_4)
			(not_0 x_44 true)
			(retInt_1 x_76 x_7)
			(curInt_1 x_77 x_7)
			(retInt_1 x_78 x_9)
			(curInt_1 x_79 x_9)
			(retInt_1 x_80 x_11)
			(curInt_1 x_81 x_11))
		(main_0 x_0))))
(assert (forall ((x_0 Bool) (x_1 Nat_0) (x_2 Nat_0) (x_3 Nat_0) (x_4 Nat_0) (x_5 Nat_0) (x_6 Nat_0) (x_7 MutInt_0) (x_8 MutInt_0) (x_9 MutInt_0) (x_10 MutInt_0) (x_11 MutInt_0) (x_12 MutInt_0) (x_45 Bool) (x_82 Nat_0) (x_83 Nat_0) (x_84 Nat_0) (x_85 Nat_0) (x_86 Nat_0) (x_87 Nat_0))
	(=>	(and (swapdecthree_0 (mutMutInt_1 (mutInt_1 x_1 x_4) x_8) (mutMutInt_1 (mutInt_1 x_2 x_5) x_10) (mutMutInt_1 (mutInt_1 x_3 x_6) x_12))
			(= x_11 x_12)
			(= x_9 x_10)
			(= x_7 x_8)
			(= x_82 x_83)
			(= x_84 x_85)
			(= x_86 x_87)
			(main_1 x_45 x_0)
			(lt_0 x_1 x_4)
			(not_0 x_45 false)
			(retInt_1 x_82 x_7)
			(curInt_1 x_83 x_7)
			(retInt_1 x_84 x_9)
			(curInt_1 x_85 x_9)
			(retInt_1 x_86 x_11)
			(curInt_1 x_87 x_11))
		(main_0 x_0))))
(assert (forall ((x_13 Bool))
	(=> (= x_13 false)
	    (main_1 false x_13))))
(assert (forall ((x_14 Bool))
	(=> (= x_14 true)
	    (main_1 true x_14))))
(assert (forall ((x_15 MutMutInt_0) (x_16 MutMutInt_0) (x_17 Bool))
	(=> (mayswapMutInt_1 x_15 x_16 x_17)
	    (mayswapMutInt_0 x_15 x_16))))
(assert (forall ((x_18 MutMutInt_0) (x_19 MutMutInt_0) (x_88 MutInt_0) (x_89 MutInt_0) (x_90 MutInt_0) (x_91 MutInt_0))
	(=>	(and (= x_88 x_89)
			(= x_90 x_91)
			(retMutInt_1 x_88 x_19)
			(curMutInt_1 x_89 x_19)
			(retMutInt_1 x_90 x_18)
			(curMutInt_1 x_91 x_18))
		(mayswapMutInt_1 x_18 x_19 false))))
(assert (forall ((x_20 MutMutInt_0) (x_21 MutMutInt_0) (x_22 MutInt_0) (x_23 MutInt_0) (x_92 MutInt_0) (x_93 MutInt_0) (x_94 MutInt_0) (x_95 MutInt_0))
	(=>	(and (= x_23 x_92)
			(= x_22 x_93)
			(= x_94 x_23)
			(= x_95 x_22)
			(curMutInt_1 x_92 x_20)
			(curMutInt_1 x_93 x_21)
			(retMutInt_1 x_94 x_21)
			(retMutInt_1 x_95 x_20))
		(mayswapMutInt_1 x_20 x_21 true))))
(assert (forall ((x_24 MutMutInt_0) (x_25 MutMutInt_0) (x_26 MutMutInt_0) (x_27 Bool) (x_28 MutInt_0) (x_29 MutInt_0) (x_30 MutInt_0) (x_31 MutInt_0) (x_32 MutInt_0) (x_33 MutInt_0) (x_96 MutInt_0) (x_97 MutInt_0) (x_98 MutInt_0) (x_99 MutInt_0) (x_100 MutInt_0) (x_101 MutInt_0))
	(=>	(and (mayswapMutInt_0 (mutMutInt_1 x_96 x_28) (mutMutInt_1 x_97 x_29))
			(mayswapMutInt_0 (mutMutInt_1 x_29 x_30) (mutMutInt_1 x_98 x_31))
			(mayswapMutInt_0 (mutMutInt_1 x_28 x_32) (mutMutInt_1 x_30 x_33))
			(swapdecthree_1 (mutMutInt_1 x_32 x_99) (mutMutInt_1 x_33 x_100) (mutMutInt_1 x_31 x_101) x_27)
			(curMutInt_1 x_96 x_24)
			(curMutInt_1 x_97 x_25)
			(curMutInt_1 x_98 x_26)
			(retMutInt_1 x_99 x_24)
			(retMutInt_1 x_100 x_25)
			(retMutInt_1 x_101 x_26))
		(swapdecthree_0 x_24 x_25 x_26))))
(assert (forall ((x_34 MutMutInt_0) (x_35 MutMutInt_0) (x_36 MutMutInt_0) (x_37 MutInt_0) (x_38 MutInt_0) (x_39 MutInt_0) (a_2 MutInt_0) (a_3 MutInt_0) (a_4 MutInt_0) (x_47 Nat_0) (x_48 Nat_0) (x_49 Nat_0) (x_102 MutInt_0) (x_103 MutInt_0) (x_104 MutInt_0) (x_105 MutInt_0) (x_106 Nat_0) (x_107 MutInt_0) (x_108 Nat_0) (x_109 MutInt_0) (x_110 Nat_0) (x_111 MutInt_0) (x_112 Nat_0) (x_113 MutInt_0) (x_114 Nat_0) (x_115 MutInt_0) (x_116 Nat_0))
	(=>	(and (swapdecthree_0 (mutMutInt_1 a_2 x_37) (mutMutInt_1 a_3 x_38) (mutMutInt_1 a_4 x_39))
			(= x_102 x_39)
			(= x_103 x_38)
			(= x_104 x_37)
			(= a_2 (mutInt_1 x_47 x_106))
			(= a_3 (mutInt_1 x_48 x_108))
			(= a_4 (mutInt_1 x_49 x_110))
			(minus_0 x_47 x_112 (S_0 Z_0))
			(minus_0 x_48 x_114 (S_0 (S_0 Z_0)))
			(minus_0 x_49 x_116 (S_0 (S_0 (S_0 Z_0))))
			(retMutInt_1 x_102 x_36)
			(retMutInt_1 x_103 x_35)
			(retMutInt_1 x_104 x_34)
			(curMutInt_1 x_105 x_34)
			(retInt_1 x_106 x_105)
			(curMutInt_1 x_107 x_35)
			(retInt_1 x_108 x_107)
			(curMutInt_1 x_109 x_36)
			(retInt_1 x_110 x_109)
			(curMutInt_1 x_111 x_34)
			(curInt_1 x_112 x_111)
			(curMutInt_1 x_113 x_35)
			(curInt_1 x_114 x_113)
			(curMutInt_1 x_115 x_36)
			(curInt_1 x_116 x_115))
		(swapdecthree_1 x_34 x_35 x_36 false))))
(assert (forall ((x_40 MutMutInt_0) (x_41 MutMutInt_0) (x_42 MutMutInt_0) (x_117 MutInt_0) (x_118 MutInt_0) (x_119 MutInt_0) (x_120 MutInt_0) (x_121 MutInt_0) (x_122 MutInt_0))
	(=>	(and (= x_117 x_118)
			(= x_119 x_120)
			(= x_121 x_122)
			(retMutInt_1 x_117 x_42)
			(curMutInt_1 x_118 x_42)
			(retMutInt_1 x_119 x_41)
			(curMutInt_1 x_120 x_41)
			(retMutInt_1 x_121 x_40)
			(curMutInt_1 x_122 x_40))
		(swapdecthree_1 x_40 x_41 x_42 true))))
(assert (forall ((x_43 Nat_0))
	(=> (main_0 true)
	    false)))
(check-sat)