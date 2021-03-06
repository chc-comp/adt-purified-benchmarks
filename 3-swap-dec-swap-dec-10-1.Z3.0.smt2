(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun unS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_0 (Nat_0) Bool)
(declare-fun isS_0 (Nat_0) Bool)
(assert (forall ((x_75 Nat_0) (x_74 Nat_0))
	(=> (= x_75 (S_0 x_74))
	    (unS_1 x_74 x_75))))
(assert (isZ_0 Z_0))
(assert (forall ((x_76 Nat_0))
	(isS_0 (S_0 x_76))))
(assert (forall ((x_77 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_77))))
(assert (forall ((x_78 Nat_0))
	(diseqNat_0 (S_0 x_78) Z_0)))
(assert (forall ((x_79 Nat_0) (x_80 Nat_0))
	(=> (diseqNat_0 x_79 x_80)
	    (diseqNat_0 (S_0 x_79) (S_0 x_80)))))
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
(assert (forall ((x_65 Nat_0) (y_0 Nat_0) (r_0 Nat_0))
	(=> (add_0 r_0 x_65 y_0)
	    (add_0 (S_0 r_0) (S_0 x_65) y_0))))
(assert (forall ((y_0 Nat_0))
	(minus_0 Z_0 Z_0 y_0)))
(assert (forall ((x_65 Nat_0) (y_0 Nat_0) (r_0 Nat_0))
	(=> (minus_0 r_0 x_65 y_0)
	    (minus_0 (S_0 r_0) (S_0 x_65) y_0))))
(assert (forall ((y_0 Nat_0))
	(le_0 Z_0 y_0)))
(assert (forall ((x_65 Nat_0) (y_0 Nat_0))
	(=> (le_0 x_65 y_0)
	    (le_0 (S_0 x_65) (S_0 y_0)))))
(assert (forall ((y_0 Nat_0))
	(ge_0 y_0 Z_0)))
(assert (forall ((x_65 Nat_0) (y_0 Nat_0))
	(=> (ge_0 x_65 y_0)
	    (ge_0 (S_0 x_65) (S_0 y_0)))))
(assert (forall ((y_0 Nat_0))
	(lt_0 Z_0 (S_0 y_0))))
(assert (forall ((x_65 Nat_0) (y_0 Nat_0))
	(=> (lt_0 x_65 y_0)
	    (lt_0 (S_0 x_65) (S_0 y_0)))))
(assert (forall ((y_0 Nat_0))
	(gt_0 (S_0 y_0) Z_0)))
(assert (forall ((x_65 Nat_0) (y_0 Nat_0))
	(=> (gt_0 x_65 y_0)
	    (gt_0 (S_0 x_65) (S_0 y_0)))))
(assert (forall ((y_0 Nat_0))
	(mult_0 Z_0 Z_0 y_0)))
(assert (forall ((x_65 Nat_0) (y_0 Nat_0) (r_0 Nat_0) (z_1 Nat_0))
	(=>	(and (mult_0 r_0 x_65 y_0)
			(add_0 z_1 r_0 y_0))
		(mult_0 z_1 (S_0 x_65) y_0))))
(assert (forall ((x_65 Nat_0) (y_0 Nat_0))
	(=> (lt_0 x_65 y_0)
	    (div_0 Z_0 x_65 y_0))))
(assert (forall ((x_65 Nat_0) (y_0 Nat_0) (r_0 Nat_0) (z_1 Nat_0))
	(=>	(and (ge_0 x_65 y_0)
			(minus_0 z_1 x_65 y_0)
			(div_0 r_0 z_1 y_0))
		(div_0 (S_0 r_0) x_65 y_0))))
(assert (forall ((x_65 Nat_0) (y_0 Nat_0))
	(=> (lt_0 x_65 y_0)
	    (mod_0 x_65 x_65 y_0))))
(assert (forall ((x_65 Nat_0) (y_0 Nat_0) (r_0 Nat_0) (z_1 Nat_0))
	(=>	(and (ge_0 x_65 y_0)
			(minus_0 z_1 x_65 y_0)
			(mod_0 r_0 z_1 y_0))
		(mod_0 r_0 x_65 y_0))))
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
(assert (forall ((x_83 MutInt_0) (x_81 Nat_0) (x_82 Nat_0))
	(=> (= x_83 (mutInt_1 x_81 x_82))
	    (curInt_1 x_81 x_83))))
(assert (forall ((x_83 MutInt_0) (x_81 Nat_0) (x_82 Nat_0))
	(=> (= x_83 (mutInt_1 x_81 x_82))
	    (retInt_1 x_82 x_83))))
(assert (forall ((x_84 Nat_0) (x_85 Nat_0))
	(ismutInt_0 (mutInt_1 x_84 x_85))))
(assert (forall ((x_86 Nat_0) (x_87 Nat_0) (x_88 Nat_0) (x_89 Nat_0))
	(=> (diseqNat_0 x_86 x_88)
	    (diseqMutInt_0 (mutInt_1 x_86 x_87) (mutInt_1 x_88 x_89)))))
(assert (forall ((x_86 Nat_0) (x_87 Nat_0) (x_88 Nat_0) (x_89 Nat_0))
	(=> (diseqNat_0 x_87 x_89)
	    (diseqMutInt_0 (mutInt_1 x_86 x_87) (mutInt_1 x_88 x_89)))))
(declare-datatypes ((MutMutInt_0 0)) (((mutMutInt_1 (curMutInt_0 MutInt_0) (retMutInt_0 MutInt_0)))))
(declare-fun diseqMutMutInt_0 (MutMutInt_0 MutMutInt_0) Bool)
(declare-fun curMutInt_1 (MutInt_0 MutMutInt_0) Bool)
(declare-fun retMutInt_1 (MutInt_0 MutMutInt_0) Bool)
(declare-fun ismutMutInt_0 (MutMutInt_0) Bool)
(assert (forall ((x_92 MutMutInt_0) (x_90 MutInt_0) (x_91 MutInt_0))
	(=> (= x_92 (mutMutInt_1 x_90 x_91))
	    (curMutInt_1 x_90 x_92))))
(assert (forall ((x_92 MutMutInt_0) (x_90 MutInt_0) (x_91 MutInt_0))
	(=> (= x_92 (mutMutInt_1 x_90 x_91))
	    (retMutInt_1 x_91 x_92))))
(assert (forall ((x_93 MutInt_0) (x_94 MutInt_0))
	(ismutMutInt_0 (mutMutInt_1 x_93 x_94))))
(assert (forall ((x_95 MutInt_0) (x_96 MutInt_0) (x_97 MutInt_0) (x_98 MutInt_0))
	(=> (diseqMutInt_0 x_95 x_97)
	    (diseqMutMutInt_0 (mutMutInt_1 x_95 x_96) (mutMutInt_1 x_97 x_98)))))
(assert (forall ((x_95 MutInt_0) (x_96 MutInt_0) (x_97 MutInt_0) (x_98 MutInt_0))
	(=> (diseqMutInt_0 x_96 x_98)
	    (diseqMutMutInt_0 (mutMutInt_1 x_95 x_96) (mutMutInt_1 x_97 x_98)))))
(declare-fun main_0 (Bool) Bool)
(declare-fun main_1 (Nat_0 Nat_0 Nat_0 Nat_0 MutInt_0 MutInt_0 Bool Bool) Bool)
(declare-fun swapdecbound_0 (Nat_0 MutMutInt_0 MutMutInt_0) Bool)
(declare-fun main_2 (Bool Bool) Bool)
(declare-fun main_3 (Nat_0 Nat_0 Nat_0 Nat_0 MutInt_0 MutInt_0 Bool Bool Bool) Bool)
(declare-fun mayswapMutInt_0 (MutMutInt_0 MutMutInt_0) Bool)
(declare-fun mayswapMutInt_1 (MutMutInt_0 MutMutInt_0 Bool) Bool)
(declare-fun swapdecbound_1 (Nat_0 MutMutInt_0 MutMutInt_0 Bool) Bool)
(assert (forall ((x_0 Bool) (x_1 Nat_0) (x_2 Nat_0) (x_3 Nat_0) (x_4 Nat_0) (x_5 Nat_0) (x_6 MutInt_0) (x_7 MutInt_0) (x_8 MutInt_0) (x_9 MutInt_0))
	(=>	(and (swapdecbound_0 x_1 (mutMutInt_1 (mutInt_1 x_2 x_4) x_7) (mutMutInt_1 (mutInt_1 x_3 x_5) x_9))
			(= x_8 x_9)
			(= x_6 x_7)
			(main_1 x_1 x_4 x_5 x_2 x_6 x_8 true x_0)
			(ge_0 x_2 x_4))
		(main_0 x_0))))
(assert (forall ((x_0 Bool) (x_1 Nat_0) (x_2 Nat_0) (x_3 Nat_0) (x_4 Nat_0) (x_5 Nat_0) (x_6 MutInt_0) (x_7 MutInt_0) (x_8 MutInt_0) (x_9 MutInt_0))
	(=>	(and (swapdecbound_0 x_1 (mutMutInt_1 (mutInt_1 x_2 x_4) x_7) (mutMutInt_1 (mutInt_1 x_3 x_5) x_9))
			(= x_8 x_9)
			(= x_6 x_7)
			(main_1 x_1 x_4 x_5 x_2 x_6 x_8 false x_0)
			(lt_0 x_2 x_4))
		(main_0 x_0))))
(assert (forall ((x_10 Nat_0) (x_11 Nat_0) (x_12 Nat_0) (x_13 Nat_0) (x_14 MutInt_0) (x_15 MutInt_0) (x_16 Bool) (x_99 Nat_0) (x_100 Nat_0) (x_101 Nat_0) (x_102 Nat_0))
	(=>	(and (= x_99 x_100)
			(= x_101 x_102)
			(main_2 true x_16)
			(retInt_1 x_99 x_14)
			(curInt_1 x_100 x_14)
			(retInt_1 x_101 x_15)
			(curInt_1 x_102 x_15))
		(main_1 x_10 x_11 x_12 x_13 x_14 x_15 false x_16))))
(assert (forall ((x_17 Nat_0) (x_18 Nat_0) (x_19 Nat_0) (x_20 Nat_0) (x_21 MutInt_0) (x_22 MutInt_0) (x_23 Bool) (x_66 Nat_0) (x_67 Nat_0))
	(=>	(and (main_3 x_17 x_18 x_19 x_20 x_21 x_22 true true x_23)
			(lt_0 x_66 x_67)
			(minus_0 x_66 x_20 x_18)
			(mult_0 x_67 (S_0 (S_0 Z_0)) x_17))
		(main_1 x_17 x_18 x_19 x_20 x_21 x_22 true x_23))))
(assert (forall ((x_17 Nat_0) (x_18 Nat_0) (x_19 Nat_0) (x_20 Nat_0) (x_21 MutInt_0) (x_22 MutInt_0) (x_23 Bool) (x_68 Nat_0) (x_69 Nat_0))
	(=>	(and (main_3 x_17 x_18 x_19 x_20 x_21 x_22 true false x_23)
			(ge_0 x_68 x_69)
			(minus_0 x_68 x_20 x_18)
			(mult_0 x_69 (S_0 (S_0 Z_0)) x_17))
		(main_1 x_17 x_18 x_19 x_20 x_21 x_22 true x_23))))
(assert (forall ((x_24 Nat_0) (x_25 Nat_0) (x_26 Nat_0) (x_27 Nat_0) (x_28 MutInt_0) (x_29 MutInt_0) (x_30 Bool) (x_31 Bool) (x_103 Nat_0) (x_104 Nat_0) (x_105 Nat_0) (x_106 Nat_0))
	(=>	(and (= x_103 x_104)
			(= x_105 x_106)
			(main_2 true x_31)
			(retInt_1 x_103 x_28)
			(curInt_1 x_104 x_28)
			(retInt_1 x_105 x_29)
			(curInt_1 x_106 x_29))
		(main_3 x_24 x_25 x_26 x_27 x_28 x_29 x_30 false x_31))))
(assert (forall ((x_32 Nat_0) (x_33 Nat_0) (x_34 Nat_0) (x_35 Nat_0) (x_36 MutInt_0) (x_37 MutInt_0) (x_38 Bool) (x_39 Bool) (x_107 Nat_0) (x_108 Nat_0) (x_109 Nat_0) (x_110 Nat_0))
	(=>	(and (= x_107 x_108)
			(= x_109 x_110)
			(main_2 false x_39)
			(retInt_1 x_107 x_36)
			(curInt_1 x_108 x_36)
			(retInt_1 x_109 x_37)
			(curInt_1 x_110 x_37))
		(main_3 x_32 x_33 x_34 x_35 x_36 x_37 x_38 true x_39))))
(assert (forall ((x_40 Bool))
	(=> (= x_40 false)
	    (main_2 false x_40))))
(assert (forall ((x_41 Bool))
	(=> (= x_41 true)
	    (main_2 true x_41))))
(assert (forall ((x_42 MutMutInt_0) (x_43 MutMutInt_0) (x_44 Bool))
	(=> (mayswapMutInt_1 x_42 x_43 x_44)
	    (mayswapMutInt_0 x_42 x_43))))
(assert (forall ((x_45 MutMutInt_0) (x_46 MutMutInt_0) (x_111 MutInt_0) (x_112 MutInt_0) (x_113 MutInt_0) (x_114 MutInt_0))
	(=>	(and (= x_111 x_112)
			(= x_113 x_114)
			(retMutInt_1 x_111 x_45)
			(curMutInt_1 x_112 x_45)
			(retMutInt_1 x_113 x_46)
			(curMutInt_1 x_114 x_46))
		(mayswapMutInt_1 x_45 x_46 false))))
(assert (forall ((x_47 MutMutInt_0) (x_48 MutMutInt_0) (x_49 MutInt_0) (x_50 MutInt_0) (x_115 MutInt_0) (x_116 MutInt_0) (x_117 MutInt_0) (x_118 MutInt_0))
	(=>	(and (= x_50 x_115)
			(= x_49 x_116)
			(= x_117 x_49)
			(= x_118 x_50)
			(curMutInt_1 x_115 x_47)
			(curMutInt_1 x_116 x_48)
			(retMutInt_1 x_117 x_47)
			(retMutInt_1 x_118 x_48))
		(mayswapMutInt_1 x_47 x_48 true))))
(assert (forall ((x_51 Nat_0) (x_52 MutMutInt_0) (x_53 MutMutInt_0) (x_54 MutInt_0) (x_55 MutInt_0) (x_119 MutInt_0) (x_120 MutInt_0) (x_121 MutInt_0) (x_122 MutInt_0))
	(=>	(and (mayswapMutInt_0 (mutMutInt_1 x_119 x_54) (mutMutInt_1 x_120 x_55))
			(swapdecbound_1 x_51 (mutMutInt_1 x_54 x_121) (mutMutInt_1 x_55 x_122) true)
			(= x_51 Z_0)
			(curMutInt_1 x_119 x_52)
			(curMutInt_1 x_120 x_53)
			(retMutInt_1 x_121 x_52)
			(retMutInt_1 x_122 x_53))
		(swapdecbound_0 x_51 x_52 x_53))))
(assert (forall ((x_51 Nat_0) (x_52 MutMutInt_0) (x_53 MutMutInt_0) (x_54 MutInt_0) (x_55 MutInt_0) (x_123 MutInt_0) (x_124 MutInt_0) (x_125 MutInt_0) (x_126 MutInt_0))
	(=>	(and (mayswapMutInt_0 (mutMutInt_1 x_123 x_54) (mutMutInt_1 x_124 x_55))
			(swapdecbound_1 x_51 (mutMutInt_1 x_54 x_125) (mutMutInt_1 x_55 x_126) false)
			(diseqNat_0 x_51 Z_0)
			(curMutInt_1 x_123 x_52)
			(curMutInt_1 x_124 x_53)
			(retMutInt_1 x_125 x_52)
			(retMutInt_1 x_126 x_53))
		(swapdecbound_0 x_51 x_52 x_53))))
(assert (forall ((x_56 Nat_0) (x_57 MutMutInt_0) (x_58 MutMutInt_0) (x_59 MutInt_0) (x_60 MutInt_0) (a_3 MutInt_0) (a_4 MutInt_0) (x_70 Nat_0) (x_71 Nat_0) (x_72 Nat_0) (x_127 MutInt_0) (x_128 MutInt_0) (x_129 MutInt_0) (x_130 Nat_0) (x_131 MutInt_0) (x_132 Nat_0) (x_133 MutInt_0) (x_134 Nat_0) (x_135 MutInt_0) (x_136 Nat_0))
	(=>	(and (swapdecbound_0 x_70 (mutMutInt_1 a_3 x_59) (mutMutInt_1 a_4 x_60))
			(= x_127 x_59)
			(= x_128 x_60)
			(= a_3 (mutInt_1 x_71 x_130))
			(= a_4 (mutInt_1 x_72 x_132))
			(minus_0 x_70 x_56 (S_0 Z_0))
			(minus_0 x_71 x_134 (S_0 Z_0))
			(minus_0 x_72 x_136 (S_0 (S_0 Z_0)))
			(retMutInt_1 x_127 x_57)
			(retMutInt_1 x_128 x_58)
			(curMutInt_1 x_129 x_57)
			(retInt_1 x_130 x_129)
			(curMutInt_1 x_131 x_58)
			(retInt_1 x_132 x_131)
			(curMutInt_1 x_133 x_57)
			(curInt_1 x_134 x_133)
			(curMutInt_1 x_135 x_58)
			(curInt_1 x_136 x_135))
		(swapdecbound_1 x_56 x_57 x_58 false))))
(assert (forall ((x_61 Nat_0) (x_62 MutMutInt_0) (x_63 MutMutInt_0) (x_137 MutInt_0) (x_138 MutInt_0) (x_139 MutInt_0) (x_140 MutInt_0))
	(=>	(and (= x_137 x_138)
			(= x_139 x_140)
			(retMutInt_1 x_137 x_62)
			(curMutInt_1 x_138 x_62)
			(retMutInt_1 x_139 x_63)
			(curMutInt_1 x_140 x_63))
		(swapdecbound_1 x_61 x_62 x_63 true))))
(assert (forall ((x_64 Nat_0))
	(=> (main_0 true)
	    false)))
(check-sat)
