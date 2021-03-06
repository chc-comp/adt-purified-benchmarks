(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun unS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_0 (Nat_0) Bool)
(declare-fun isS_0 (Nat_0) Bool)
(assert (forall ((x_96 Nat_0) (x_95 Nat_0))
	(=> (= x_96 (S_0 x_95))
	    (unS_1 x_95 x_96))))
(assert (isZ_0 Z_0))
(assert (forall ((x_97 Nat_0))
	(isS_0 (S_0 x_97))))
(assert (forall ((x_98 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_98))))
(assert (forall ((x_99 Nat_0))
	(diseqNat_0 (S_0 x_99) Z_0)))
(assert (forall ((x_100 Nat_0) (x_101 Nat_0))
	(=> (diseqNat_0 x_100 x_101)
	    (diseqNat_0 (S_0 x_100) (S_0 x_101)))))
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
(assert (forall ((x_86 Nat_0) (y_0 Nat_0) (r_0 Nat_0))
	(=> (add_0 r_0 x_86 y_0)
	    (add_0 (S_0 r_0) (S_0 x_86) y_0))))
(assert (forall ((y_0 Nat_0))
	(minus_0 Z_0 Z_0 y_0)))
(assert (forall ((x_86 Nat_0) (y_0 Nat_0) (r_0 Nat_0))
	(=> (minus_0 r_0 x_86 y_0)
	    (minus_0 (S_0 r_0) (S_0 x_86) y_0))))
(assert (forall ((y_0 Nat_0))
	(le_0 Z_0 y_0)))
(assert (forall ((x_86 Nat_0) (y_0 Nat_0))
	(=> (le_0 x_86 y_0)
	    (le_0 (S_0 x_86) (S_0 y_0)))))
(assert (forall ((y_0 Nat_0))
	(ge_0 y_0 Z_0)))
(assert (forall ((x_86 Nat_0) (y_0 Nat_0))
	(=> (ge_0 x_86 y_0)
	    (ge_0 (S_0 x_86) (S_0 y_0)))))
(assert (forall ((y_0 Nat_0))
	(lt_0 Z_0 (S_0 y_0))))
(assert (forall ((x_86 Nat_0) (y_0 Nat_0))
	(=> (lt_0 x_86 y_0)
	    (lt_0 (S_0 x_86) (S_0 y_0)))))
(assert (forall ((y_0 Nat_0))
	(gt_0 (S_0 y_0) Z_0)))
(assert (forall ((x_86 Nat_0) (y_0 Nat_0))
	(=> (gt_0 x_86 y_0)
	    (gt_0 (S_0 x_86) (S_0 y_0)))))
(assert (forall ((y_0 Nat_0))
	(mult_0 Z_0 Z_0 y_0)))
(assert (forall ((x_86 Nat_0) (y_0 Nat_0) (r_0 Nat_0) (z_1 Nat_0))
	(=>	(and (mult_0 r_0 x_86 y_0)
			(add_0 z_1 r_0 y_0))
		(mult_0 z_1 (S_0 x_86) y_0))))
(assert (forall ((x_86 Nat_0) (y_0 Nat_0))
	(=> (lt_0 x_86 y_0)
	    (div_0 Z_0 x_86 y_0))))
(assert (forall ((x_86 Nat_0) (y_0 Nat_0) (r_0 Nat_0) (z_1 Nat_0))
	(=>	(and (ge_0 x_86 y_0)
			(minus_0 z_1 x_86 y_0)
			(div_0 r_0 z_1 y_0))
		(div_0 (S_0 r_0) x_86 y_0))))
(assert (forall ((x_86 Nat_0) (y_0 Nat_0))
	(=> (lt_0 x_86 y_0)
	    (mod_0 x_86 x_86 y_0))))
(assert (forall ((x_86 Nat_0) (y_0 Nat_0) (r_0 Nat_0) (z_1 Nat_0))
	(=>	(and (ge_0 x_86 y_0)
			(minus_0 z_1 x_86 y_0)
			(mod_0 r_0 z_1 y_0))
		(mod_0 r_0 x_86 y_0))))
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
(declare-datatypes ((List_0 0)) (((List_1 (List_2 Nat_0) (List_3 List_0)) (List_4 ))))
(declare-fun diseqList_0 (List_0 List_0) Bool)
(declare-fun List_5 (Nat_0 List_0) Bool)
(declare-fun List_6 (List_0 List_0) Bool)
(declare-fun isList_0 (List_0) Bool)
(declare-fun isList_1 (List_0) Bool)
(assert (forall ((x_104 List_0) (x_102 Nat_0) (x_103 List_0))
	(=> (= x_104 (List_1 x_102 x_103))
	    (List_5 x_102 x_104))))
(assert (forall ((x_104 List_0) (x_102 Nat_0) (x_103 List_0))
	(=> (= x_104 (List_1 x_102 x_103))
	    (List_6 x_103 x_104))))
(assert (forall ((x_106 Nat_0) (x_107 List_0))
	(isList_0 (List_1 x_106 x_107))))
(assert (isList_1 List_4))
(assert (forall ((x_108 Nat_0) (x_109 List_0))
	(diseqList_0 (List_1 x_108 x_109) List_4)))
(assert (forall ((x_110 Nat_0) (x_111 List_0))
	(diseqList_0 List_4 (List_1 x_110 x_111))))
(assert (forall ((x_112 Nat_0) (x_113 List_0) (x_114 Nat_0) (x_115 List_0))
	(=> (diseqNat_0 x_112 x_114)
	    (diseqList_0 (List_1 x_112 x_113) (List_1 x_114 x_115)))))
(assert (forall ((x_112 Nat_0) (x_113 List_0) (x_114 Nat_0) (x_115 List_0))
	(=> (diseqList_0 x_113 x_115)
	    (diseqList_0 (List_1 x_112 x_113) (List_1 x_114 x_115)))))
(declare-datatypes ((MutList_0 0)) (((mutList_1 (curList_0 List_0) (retList_0 List_0)))))
(declare-fun diseqMutList_0 (MutList_0 MutList_0) Bool)
(declare-fun curList_1 (List_0 MutList_0) Bool)
(declare-fun retList_1 (List_0 MutList_0) Bool)
(declare-fun ismutList_0 (MutList_0) Bool)
(assert (forall ((x_118 MutList_0) (x_116 List_0) (x_117 List_0))
	(=> (= x_118 (mutList_1 x_116 x_117))
	    (curList_1 x_116 x_118))))
(assert (forall ((x_118 MutList_0) (x_116 List_0) (x_117 List_0))
	(=> (= x_118 (mutList_1 x_116 x_117))
	    (retList_1 x_117 x_118))))
(assert (forall ((x_119 List_0) (x_120 List_0))
	(ismutList_0 (mutList_1 x_119 x_120))))
(assert (forall ((x_121 List_0) (x_122 List_0) (x_123 List_0) (x_124 List_0))
	(=> (diseqList_0 x_121 x_123)
	    (diseqMutList_0 (mutList_1 x_121 x_122) (mutList_1 x_123 x_124)))))
(assert (forall ((x_121 List_0) (x_122 List_0) (x_123 List_0) (x_124 List_0))
	(=> (diseqList_0 x_122 x_124)
	    (diseqMutList_0 (mutList_1 x_121 x_122) (mutList_1 x_123 x_124)))))
(declare-fun incabs_0 (MutList_0 Nat_0 Nat_0 Nat_0 Nat_0) Bool)
(declare-fun incabs_1 (MutList_0 Nat_0 Nat_0 Nat_0 Nat_0) Bool)
(declare-fun length_0 (List_0 Nat_0) Bool)
(declare-fun sum_0 (List_0 Nat_0) Bool)
(declare-fun length_1 (List_0 Nat_0) Bool)
(declare-fun main_0 (Bool) Bool)
(declare-fun mainabs_0 (List_0 Bool Bool Nat_0 Nat_0) Bool)
(declare-fun sum_1 (List_0 Nat_0) Bool)
(declare-fun length_2 (Nat_0 List_0) Bool)
(declare-fun sum_2 (Nat_0 List_0) Bool)
(assert (forall ((x_0 List_0) (x_36 Nat_0))
	(=>	(and (= x_36 Z_0)
			(= x_0 List_4))
		(length_2 x_36 x_0))))
(assert (forall ((x_0 List_0) (x_37 Nat_0) (x_38 Nat_0) (x_87 Nat_0) (x_125 List_0))
	(=>	(and (= x_37 x_87)
			(length_2 x_38 x_125)
			(diseqList_0 x_0 List_4)
			(add_0 x_87 (S_0 Z_0) x_38)
			(List_6 x_125 x_0))
		(length_2 x_37 x_0))))
(assert (forall ((x_1 List_0) (x_39 Nat_0))
	(=>	(and (= x_39 Z_0)
			(= x_1 List_4))
		(sum_2 x_39 x_1))))
(assert (forall ((x_1 List_0) (x_40 Nat_0) (x_41 Nat_0) (x_88 Nat_0) (x_126 List_0) (x_127 Nat_0))
	(=>	(and (= x_40 x_88)
			(sum_2 x_41 x_126)
			(diseqList_0 x_1 List_4)
			(add_0 x_88 x_127 x_41)
			(List_6 x_126 x_1)
			(List_5 x_127 x_1))
		(sum_2 x_40 x_1))))
(assert (forall ((x_2 MutList_0) (c_0 Nat_0) (c_1 Nat_0) (c_2 Nat_0) (c_3 Nat_0) (c_4 Nat_0) (c_5 Nat_0) (c_6 Nat_0) (c_7 Nat_0) (x_42 Nat_0) (x_43 Nat_0) (x_44 Nat_0) (x_45 Nat_0) (x_46 Nat_0) (x_47 Nat_0) (x_48 Nat_0) (x_49 Nat_0) (x_128 List_0) (x_129 List_0) (x_130 List_0) (x_131 List_0) (x_132 List_0) (x_133 List_0) (x_134 List_0) (x_135 List_0) (x_136 List_0) (x_137 List_0) (x_138 List_0) (x_139 List_0) (x_140 List_0) (x_141 List_0) (x_142 List_0) (x_143 List_0))
	(=>	(and (= x_42 c_0)
			(sum_0 x_128 c_0)
			(= x_43 c_1)
			(sum_0 x_129 c_1)
			(= x_44 c_2)
			(length_0 x_130 c_2)
			(= x_45 c_3)
			(length_0 x_131 c_3)
			(= x_46 c_4)
			(sum_0 x_132 c_4)
			(= x_47 c_5)
			(sum_0 x_133 c_5)
			(= x_48 c_6)
			(length_0 x_134 c_6)
			(= x_49 c_7)
			(length_0 x_135 c_7)
			(incabs_1 x_2 c_4 c_5 c_6 c_7)
			(sum_2 x_42 x_136)
			(sum_2 x_43 x_137)
			(length_2 x_44 x_138)
			(length_2 x_45 x_139)
			(sum_2 x_46 x_140)
			(sum_2 x_47 x_141)
			(length_2 x_48 x_142)
			(length_2 x_49 x_143)
			(curList_1 x_128 x_2)
			(retList_1 x_129 x_2)
			(curList_1 x_130 x_2)
			(retList_1 x_131 x_2)
			(curList_1 x_132 x_2)
			(retList_1 x_133 x_2)
			(curList_1 x_134 x_2)
			(retList_1 x_135 x_2)
			(curList_1 x_136 x_2)
			(retList_1 x_137 x_2)
			(curList_1 x_138 x_2)
			(retList_1 x_139 x_2)
			(curList_1 x_140 x_2)
			(retList_1 x_141 x_2)
			(curList_1 x_142 x_2)
			(retList_1 x_143 x_2))
		(incabs_0 x_2 c_0 c_1 c_2 c_3))))
(assert (forall ((x_3 List_0) (x_4 Nat_0) (x_5 List_0) (x_6 List_0) (x_7 Nat_0) (x_8 MutList_0) (c_8 Nat_0) (c_9 Nat_0) (c_10 Nat_0) (c_11 Nat_0) (c_12 Nat_0) (c_13 Nat_0) (c_14 Nat_0) (c_15 Nat_0) (x_50 Nat_0) (x_51 Nat_0) (x_52 Nat_0) (x_53 Nat_0) (x_54 Nat_0) (x_55 Nat_0) (x_56 Nat_0) (x_57 Nat_0) (x_89 Nat_0) (x_149 List_0) (x_144 List_0) (x_145 List_0) (x_146 List_0) (x_147 List_0) (x_148 List_0))
	(=>	(and (retList_1 x_149 x_8)
			(= x_50 c_8)
			(sum_0 (List_1 x_4 x_3) c_8)
			(= x_51 c_9)
			(sum_0 x_144 c_9)
			(= x_52 c_10)
			(length_0 (List_1 x_4 x_3) c_10)
			(= x_53 c_11)
			(length_0 x_145 c_11)
			(= x_54 c_12)
			(sum_0 x_3 c_12)
			(= x_55 c_13)
			(sum_0 x_5 c_13)
			(= x_56 c_14)
			(length_0 x_3 c_14)
			(= x_57 c_15)
			(length_0 x_5 c_15)
			(incabs_0 (mutList_1 x_3 x_5) c_12 c_13 c_14 c_15)
			(= x_6 x_5)
			(= x_7 x_89)
			(= x_146 (List_1 x_7 x_6))
			(sum_2 x_50 (List_1 x_4 x_3))
			(sum_2 x_51 x_147)
			(length_2 x_52 (List_1 x_4 x_3))
			(length_2 x_53 x_148)
			(sum_2 x_54 x_3)
			(sum_2 x_55 x_5)
			(length_2 x_56 x_3)
			(length_2 x_57 x_5)
			(add_0 x_89 x_4 (S_0 Z_0))
			(retList_1 x_144 x_8)
			(retList_1 x_145 x_8)
			(retList_1 x_146 x_8)
			(retList_1 x_147 x_8)
			(retList_1 x_148 x_8))
		(incabs_1 (mutList_1 (List_1 x_4 x_3) x_149) c_8 c_9 c_10 c_11))))
(assert (forall ((x_9 MutList_0) (c_16 Nat_0) (c_17 Nat_0) (c_18 Nat_0) (c_19 Nat_0) (x_58 Nat_0) (x_59 Nat_0) (x_60 Nat_0) (x_61 Nat_0) (x_155 List_0) (x_150 List_0) (x_151 List_0) (x_152 List_0) (x_153 List_0) (x_154 List_0))
	(=>	(and (retList_1 x_155 x_9)
			(= x_58 c_16)
			(sum_0 List_4 c_16)
			(= x_59 c_17)
			(sum_0 x_150 c_17)
			(= x_60 c_18)
			(length_0 List_4 c_18)
			(= x_61 c_19)
			(length_0 x_151 c_19)
			(= x_152 List_4)
			(sum_2 x_58 List_4)
			(sum_2 x_59 x_153)
			(length_2 x_60 List_4)
			(length_2 x_61 x_154)
			(retList_1 x_150 x_9)
			(retList_1 x_151 x_9)
			(retList_1 x_152 x_9)
			(retList_1 x_153 x_9)
			(retList_1 x_154 x_9))
		(incabs_1 (mutList_1 List_4 x_155) c_16 c_17 c_18 c_19))))
(assert (forall ((x_10 List_0) (x_11 Nat_0))
	(=> (length_1 x_10 x_11)
	    (length_0 x_10 x_11))))
(assert (forall ((x_12 Nat_0) (x_13 Nat_0) (x_14 Nat_0) (x_15 List_0) (x_90 Nat_0))
	(=>	(and (length_0 x_15 x_13)
			(= x_12 x_90)
			(add_0 x_90 (S_0 Z_0) x_13))
		(length_1 (List_1 x_14 x_15) x_12))))
(assert (forall ((x_16 Nat_0))
	(=> (= x_16 Z_0)
	    (length_1 List_4 x_16))))
(assert (forall ((x_17 List_0) (x_18 List_0) (x_19 List_0) (x_20 Nat_0) (x_21 Nat_0) (x_22 Nat_0) (x_23 Bool) (c_20 Nat_0) (c_21 Nat_0) (c_22 Nat_0) (c_23 Nat_0) (c_24 Nat_0) (c_25 Nat_0) (x_62 Nat_0) (x_63 Nat_0) (x_64 Nat_0) (x_65 Nat_0) (x_66 Nat_0) (x_67 Nat_0) (x_68 Nat_0) (x_69 Nat_0) (x_70 Nat_0) (x_84 Bool) (x_91 Nat_0))
	(=>	(and (= x_62 c_20)
			(sum_0 x_19 c_20)
			(= x_63 c_21)
			(sum_0 x_17 c_21)
			(= x_64 c_22)
			(length_0 x_19 c_22)
			(= x_65 c_23)
			(length_0 x_17 c_23)
			(= x_66 c_24)
			(sum_0 x_18 c_24)
			(= x_67 c_25)
			(length_0 x_18 c_25)
			(sum_0 x_19 x_22)
			(length_0 x_19 x_21)
			(incabs_0 (mutList_1 x_19 x_17) c_20 c_21 c_22 c_23)
			(sum_0 x_18 x_20)
			(mainabs_0 x_18 x_84 x_23 c_24 c_25)
			(gt_0 x_20 x_91)
			(= x_68 x_22)
			(= x_69 x_20)
			(= x_70 x_21)
			(= x_18 x_17)
			(sum_2 x_62 x_19)
			(sum_2 x_63 x_17)
			(length_2 x_64 x_19)
			(length_2 x_65 x_17)
			(sum_2 x_66 x_18)
			(length_2 x_67 x_18)
			(sum_2 x_68 x_19)
			(sum_2 x_69 x_18)
			(length_2 x_70 x_19)
			(not_0 x_84 true)
			(add_0 x_91 x_22 x_21))
		(main_0 x_23))))
(assert (forall ((x_17 List_0) (x_18 List_0) (x_19 List_0) (x_20 Nat_0) (x_21 Nat_0) (x_22 Nat_0) (x_23 Bool) (c_20 Nat_0) (c_21 Nat_0) (c_22 Nat_0) (c_23 Nat_0) (c_24 Nat_0) (c_25 Nat_0) (x_71 Nat_0) (x_72 Nat_0) (x_73 Nat_0) (x_74 Nat_0) (x_75 Nat_0) (x_76 Nat_0) (x_77 Nat_0) (x_78 Nat_0) (x_79 Nat_0) (x_85 Bool) (x_92 Nat_0))
	(=>	(and (= x_71 c_20)
			(sum_0 x_19 c_20)
			(= x_72 c_21)
			(sum_0 x_17 c_21)
			(= x_73 c_22)
			(length_0 x_19 c_22)
			(= x_74 c_23)
			(length_0 x_17 c_23)
			(= x_75 c_24)
			(sum_0 x_18 c_24)
			(= x_76 c_25)
			(length_0 x_18 c_25)
			(sum_0 x_19 x_22)
			(length_0 x_19 x_21)
			(incabs_0 (mutList_1 x_19 x_17) c_20 c_21 c_22 c_23)
			(sum_0 x_18 x_20)
			(mainabs_0 x_18 x_85 x_23 c_24 c_25)
			(le_0 x_20 x_92)
			(= x_77 x_22)
			(= x_78 x_20)
			(= x_79 x_21)
			(= x_18 x_17)
			(sum_2 x_71 x_19)
			(sum_2 x_72 x_17)
			(length_2 x_73 x_19)
			(length_2 x_74 x_17)
			(sum_2 x_75 x_18)
			(length_2 x_76 x_18)
			(sum_2 x_77 x_19)
			(sum_2 x_78 x_18)
			(length_2 x_79 x_19)
			(not_0 x_85 false)
			(add_0 x_92 x_22 x_21))
		(main_0 x_23))))
(assert (forall ((x_24 Bool) (x_25 List_0) (c_26 Nat_0) (c_27 Nat_0) (x_80 Nat_0) (x_81 Nat_0))
	(=>	(and (= x_80 c_26)
			(sum_0 x_25 c_26)
			(= x_81 c_27)
			(length_0 x_25 c_27)
			(= x_24 false)
			(sum_2 x_80 x_25)
			(length_2 x_81 x_25))
		(mainabs_0 x_25 false x_24 c_26 c_27))))
(assert (forall ((x_26 Bool) (x_27 List_0) (c_28 Nat_0) (c_29 Nat_0) (x_82 Nat_0) (x_83 Nat_0))
	(=>	(and (= x_82 c_28)
			(sum_0 x_27 c_28)
			(= x_83 c_29)
			(length_0 x_27 c_29)
			(= x_26 true)
			(sum_2 x_82 x_27)
			(length_2 x_83 x_27))
		(mainabs_0 x_27 true x_26 c_28 c_29))))
(assert (forall ((x_28 List_0) (x_29 Nat_0))
	(=> (sum_1 x_28 x_29)
	    (sum_0 x_28 x_29))))
(assert (forall ((x_30 Nat_0) (x_31 Nat_0) (x_32 Nat_0) (x_33 List_0) (x_93 Nat_0))
	(=>	(and (sum_0 x_33 x_31)
			(= x_30 x_93)
			(add_0 x_93 x_32 x_31))
		(sum_1 (List_1 x_32 x_33) x_30))))
(assert (forall ((x_34 Nat_0))
	(=> (= x_34 Z_0)
	    (sum_1 List_4 x_34))))
(assert (forall ((x_35 Nat_0))
	(=> (main_0 true)
	    false)))
(check-sat)
