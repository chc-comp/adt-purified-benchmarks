(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun unS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_0 (Nat_0) Bool)
(declare-fun isS_0 (Nat_0) Bool)
(assert (forall ((x_113 Nat_0) (x_112 Nat_0))
	(=> (= x_113 (S_0 x_112))
	    (unS_1 x_112 x_113))))
(assert (isZ_0 Z_0))
(assert (forall ((x_114 Nat_0))
	(isS_0 (S_0 x_114))))
(assert (forall ((x_115 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_115))))
(assert (forall ((x_116 Nat_0))
	(diseqNat_0 (S_0 x_116) Z_0)))
(assert (forall ((x_117 Nat_0) (x_118 Nat_0))
	(=> (diseqNat_0 x_117 x_118)
	    (diseqNat_0 (S_0 x_117) (S_0 x_118)))))
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
(assert (forall ((x_99 Nat_0) (y_0 Nat_0) (r_0 Nat_0))
	(=> (add_0 r_0 x_99 y_0)
	    (add_0 (S_0 r_0) (S_0 x_99) y_0))))
(assert (forall ((y_0 Nat_0))
	(minus_0 Z_0 Z_0 y_0)))
(assert (forall ((x_99 Nat_0) (y_0 Nat_0) (r_0 Nat_0))
	(=> (minus_0 r_0 x_99 y_0)
	    (minus_0 (S_0 r_0) (S_0 x_99) y_0))))
(assert (forall ((y_0 Nat_0))
	(le_0 Z_0 y_0)))
(assert (forall ((x_99 Nat_0) (y_0 Nat_0))
	(=> (le_0 x_99 y_0)
	    (le_0 (S_0 x_99) (S_0 y_0)))))
(assert (forall ((y_0 Nat_0))
	(ge_0 y_0 Z_0)))
(assert (forall ((x_99 Nat_0) (y_0 Nat_0))
	(=> (ge_0 x_99 y_0)
	    (ge_0 (S_0 x_99) (S_0 y_0)))))
(assert (forall ((y_0 Nat_0))
	(lt_0 Z_0 (S_0 y_0))))
(assert (forall ((x_99 Nat_0) (y_0 Nat_0))
	(=> (lt_0 x_99 y_0)
	    (lt_0 (S_0 x_99) (S_0 y_0)))))
(assert (forall ((y_0 Nat_0))
	(gt_0 (S_0 y_0) Z_0)))
(assert (forall ((x_99 Nat_0) (y_0 Nat_0))
	(=> (gt_0 x_99 y_0)
	    (gt_0 (S_0 x_99) (S_0 y_0)))))
(assert (forall ((y_0 Nat_0))
	(mult_0 Z_0 Z_0 y_0)))
(assert (forall ((x_99 Nat_0) (y_0 Nat_0) (r_0 Nat_0) (z_1 Nat_0))
	(=>	(and (mult_0 r_0 x_99 y_0)
			(add_0 z_1 r_0 y_0))
		(mult_0 z_1 (S_0 x_99) y_0))))
(assert (forall ((x_99 Nat_0) (y_0 Nat_0))
	(=> (lt_0 x_99 y_0)
	    (div_0 Z_0 x_99 y_0))))
(assert (forall ((x_99 Nat_0) (y_0 Nat_0) (r_0 Nat_0) (z_1 Nat_0))
	(=>	(and (ge_0 x_99 y_0)
			(minus_0 z_1 x_99 y_0)
			(div_0 r_0 z_1 y_0))
		(div_0 (S_0 r_0) x_99 y_0))))
(assert (forall ((x_99 Nat_0) (y_0 Nat_0))
	(=> (lt_0 x_99 y_0)
	    (mod_0 x_99 x_99 y_0))))
(assert (forall ((x_99 Nat_0) (y_0 Nat_0) (r_0 Nat_0) (z_1 Nat_0))
	(=>	(and (ge_0 x_99 y_0)
			(minus_0 z_1 x_99 y_0)
			(mod_0 r_0 z_1 y_0))
		(mod_0 r_0 x_99 y_0))))
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
(declare-datatypes ((Tree_0 0)) (((Tree_1 (Tree_2 Tree_0) (Tree_3 Nat_0) (Tree_4 Tree_0)) (Tree_5 ))))
(declare-fun diseqTree_0 (Tree_0 Tree_0) Bool)
(declare-fun Tree_6 (Tree_0 Tree_0) Bool)
(declare-fun Tree_7 (Nat_0 Tree_0) Bool)
(declare-fun Tree_8 (Tree_0 Tree_0) Bool)
(declare-fun isTree_0 (Tree_0) Bool)
(declare-fun isTree_1 (Tree_0) Bool)
(assert (forall ((x_122 Tree_0) (x_119 Tree_0) (x_120 Nat_0) (x_121 Tree_0))
	(=> (= x_122 (Tree_1 x_119 x_120 x_121))
	    (Tree_6 x_119 x_122))))
(assert (forall ((x_122 Tree_0) (x_119 Tree_0) (x_120 Nat_0) (x_121 Tree_0))
	(=> (= x_122 (Tree_1 x_119 x_120 x_121))
	    (Tree_7 x_120 x_122))))
(assert (forall ((x_122 Tree_0) (x_119 Tree_0) (x_120 Nat_0) (x_121 Tree_0))
	(=> (= x_122 (Tree_1 x_119 x_120 x_121))
	    (Tree_8 x_121 x_122))))
(assert (forall ((x_124 Tree_0) (x_125 Nat_0) (x_126 Tree_0))
	(isTree_0 (Tree_1 x_124 x_125 x_126))))
(assert (isTree_1 Tree_5))
(assert (forall ((x_127 Tree_0) (x_128 Nat_0) (x_129 Tree_0))
	(diseqTree_0 (Tree_1 x_127 x_128 x_129) Tree_5)))
(assert (forall ((x_130 Tree_0) (x_131 Nat_0) (x_132 Tree_0))
	(diseqTree_0 Tree_5 (Tree_1 x_130 x_131 x_132))))
(assert (forall ((x_133 Tree_0) (x_134 Nat_0) (x_135 Tree_0) (x_136 Tree_0) (x_137 Nat_0) (x_138 Tree_0))
	(=> (diseqTree_0 x_133 x_136)
	    (diseqTree_0 (Tree_1 x_133 x_134 x_135) (Tree_1 x_136 x_137 x_138)))))
(assert (forall ((x_133 Tree_0) (x_134 Nat_0) (x_135 Tree_0) (x_136 Tree_0) (x_137 Nat_0) (x_138 Tree_0))
	(=> (diseqNat_0 x_134 x_137)
	    (diseqTree_0 (Tree_1 x_133 x_134 x_135) (Tree_1 x_136 x_137 x_138)))))
(assert (forall ((x_133 Tree_0) (x_134 Nat_0) (x_135 Tree_0) (x_136 Tree_0) (x_137 Nat_0) (x_138 Tree_0))
	(=> (diseqTree_0 x_135 x_138)
	    (diseqTree_0 (Tree_1 x_133 x_134 x_135) (Tree_1 x_136 x_137 x_138)))))
(declare-datatypes ((MutTree_0 0)) (((mutTree_1 (curTree_0 Tree_0) (retTree_0 Tree_0)))))
(declare-fun diseqMutTree_0 (MutTree_0 MutTree_0) Bool)
(declare-fun curTree_1 (Tree_0 MutTree_0) Bool)
(declare-fun retTree_1 (Tree_0 MutTree_0) Bool)
(declare-fun ismutTree_0 (MutTree_0) Bool)
(assert (forall ((x_141 MutTree_0) (x_139 Tree_0) (x_140 Tree_0))
	(=> (= x_141 (mutTree_1 x_139 x_140))
	    (curTree_1 x_139 x_141))))
(assert (forall ((x_141 MutTree_0) (x_139 Tree_0) (x_140 Tree_0))
	(=> (= x_141 (mutTree_1 x_139 x_140))
	    (retTree_1 x_140 x_141))))
(assert (forall ((x_142 Tree_0) (x_143 Tree_0))
	(ismutTree_0 (mutTree_1 x_142 x_143))))
(assert (forall ((x_144 Tree_0) (x_145 Tree_0) (x_146 Tree_0) (x_147 Tree_0))
	(=> (diseqTree_0 x_144 x_146)
	    (diseqMutTree_0 (mutTree_1 x_144 x_145) (mutTree_1 x_146 x_147)))))
(assert (forall ((x_144 Tree_0) (x_145 Tree_0) (x_146 Tree_0) (x_147 Tree_0))
	(=> (diseqTree_0 x_145 x_147)
	    (diseqMutTree_0 (mutTree_1 x_144 x_145) (mutTree_1 x_146 x_147)))))
(declare-fun incabs_0 (MutTree_0 Nat_0 Nat_0 Nat_0 Nat_0) Bool)
(declare-fun incabs_1 (MutTree_0 Nat_0 Nat_0 Nat_0 Nat_0) Bool)
(declare-fun sum_0 (Tree_0 Nat_0) Bool)
(declare-fun size_0 (Tree_0 Nat_0) Bool)
(declare-fun main_0 (Bool) Bool)
(declare-fun mainabs_0 (Tree_0 Bool Bool Nat_0 Nat_0) Bool)
(declare-fun size_1 (Tree_0 Nat_0) Bool)
(declare-fun sum_1 (Tree_0 Nat_0) Bool)
(declare-fun size_2 (Nat_0 Tree_0) Bool)
(declare-fun sum_2 (Nat_0 Tree_0) Bool)
(assert (forall ((x_0 Tree_0) (x_43 Nat_0))
	(=>	(and (= x_43 Z_0)
			(= x_0 Tree_5))
		(size_2 x_43 x_0))))
(assert (forall ((x_0 Tree_0) (x_44 Nat_0) (x_45 Nat_0) (x_46 Nat_0) (x_100 Nat_0) (x_101 Nat_0) (x_148 Tree_0) (x_149 Tree_0))
	(=>	(and (= x_44 x_101)
			(size_2 x_45 x_148)
			(size_2 x_46 x_149)
			(diseqTree_0 x_0 Tree_5)
			(add_0 x_100 (S_0 Z_0) x_45)
			(add_0 x_101 x_100 x_46)
			(Tree_6 x_148 x_0)
			(Tree_8 x_149 x_0))
		(size_2 x_44 x_0))))
(assert (forall ((x_1 Tree_0) (x_47 Nat_0))
	(=>	(and (= x_47 Z_0)
			(= x_1 Tree_5))
		(sum_2 x_47 x_1))))
(assert (forall ((x_1 Tree_0) (x_48 Nat_0) (x_49 Nat_0) (x_50 Nat_0) (x_102 Nat_0) (x_103 Nat_0) (x_150 Tree_0) (x_151 Tree_0) (x_152 Nat_0))
	(=>	(and (= x_48 x_103)
			(sum_2 x_49 x_150)
			(sum_2 x_50 x_151)
			(diseqTree_0 x_1 Tree_5)
			(add_0 x_102 x_152 x_49)
			(add_0 x_103 x_102 x_50)
			(Tree_6 x_150 x_1)
			(Tree_8 x_151 x_1)
			(Tree_7 x_152 x_1))
		(sum_2 x_48 x_1))))
(assert (forall ((x_2 MutTree_0) (c_0 Nat_0) (c_1 Nat_0) (c_2 Nat_0) (c_3 Nat_0) (c_4 Nat_0) (c_5 Nat_0) (c_6 Nat_0) (c_7 Nat_0) (x_51 Nat_0) (x_52 Nat_0) (x_53 Nat_0) (x_54 Nat_0) (x_55 Nat_0) (x_56 Nat_0) (x_57 Nat_0) (x_58 Nat_0) (x_153 Tree_0) (x_154 Tree_0) (x_155 Tree_0) (x_156 Tree_0) (x_157 Tree_0) (x_158 Tree_0) (x_159 Tree_0) (x_160 Tree_0) (x_161 Tree_0) (x_162 Tree_0) (x_163 Tree_0) (x_164 Tree_0) (x_165 Tree_0) (x_166 Tree_0) (x_167 Tree_0) (x_168 Tree_0))
	(=>	(and (= x_51 c_0)
			(size_0 x_153 c_0)
			(= x_52 c_1)
			(size_0 x_154 c_1)
			(= x_53 c_2)
			(sum_0 x_155 c_2)
			(= x_54 c_3)
			(sum_0 x_156 c_3)
			(= x_55 c_4)
			(size_0 x_157 c_4)
			(= x_56 c_5)
			(size_0 x_158 c_5)
			(= x_57 c_6)
			(sum_0 x_159 c_6)
			(= x_58 c_7)
			(sum_0 x_160 c_7)
			(incabs_1 x_2 c_4 c_5 c_6 c_7)
			(size_2 x_51 x_161)
			(size_2 x_52 x_162)
			(sum_2 x_53 x_163)
			(sum_2 x_54 x_164)
			(size_2 x_55 x_165)
			(size_2 x_56 x_166)
			(sum_2 x_57 x_167)
			(sum_2 x_58 x_168)
			(curTree_1 x_153 x_2)
			(retTree_1 x_154 x_2)
			(curTree_1 x_155 x_2)
			(retTree_1 x_156 x_2)
			(curTree_1 x_157 x_2)
			(retTree_1 x_158 x_2)
			(curTree_1 x_159 x_2)
			(retTree_1 x_160 x_2)
			(curTree_1 x_161 x_2)
			(retTree_1 x_162 x_2)
			(curTree_1 x_163 x_2)
			(retTree_1 x_164 x_2)
			(curTree_1 x_165 x_2)
			(retTree_1 x_166 x_2)
			(curTree_1 x_167 x_2)
			(retTree_1 x_168 x_2))
		(incabs_0 x_2 c_0 c_1 c_2 c_3))))
(assert (forall ((x_3 Tree_0) (x_4 Nat_0) (x_5 Tree_0) (x_6 Tree_0) (x_7 Tree_0) (x_8 Tree_0) (x_9 Nat_0) (x_10 Tree_0) (x_11 MutTree_0) (c_8 Nat_0) (c_9 Nat_0) (c_10 Nat_0) (c_11 Nat_0) (c_12 Nat_0) (c_13 Nat_0) (c_14 Nat_0) (c_15 Nat_0) (c_16 Nat_0) (c_17 Nat_0) (c_18 Nat_0) (c_19 Nat_0) (x_59 Nat_0) (x_60 Nat_0) (x_61 Nat_0) (x_62 Nat_0) (x_63 Nat_0) (x_64 Nat_0) (x_65 Nat_0) (x_66 Nat_0) (x_67 Nat_0) (x_68 Nat_0) (x_69 Nat_0) (x_70 Nat_0) (x_104 Nat_0) (x_174 Tree_0) (x_169 Tree_0) (x_170 Tree_0) (x_171 Tree_0) (x_172 Tree_0) (x_173 Tree_0))
	(=>	(and (retTree_1 x_174 x_11)
			(= x_59 c_8)
			(size_0 (Tree_1 x_5 x_4 x_3) c_8)
			(= x_60 c_9)
			(size_0 x_169 c_9)
			(= x_61 c_10)
			(sum_0 (Tree_1 x_5 x_4 x_3) c_10)
			(= x_62 c_11)
			(sum_0 x_170 c_11)
			(= x_63 c_12)
			(size_0 x_5 c_12)
			(= x_64 c_13)
			(size_0 x_7 c_13)
			(= x_65 c_14)
			(sum_0 x_5 c_14)
			(= x_66 c_15)
			(sum_0 x_7 c_15)
			(= x_67 c_16)
			(size_0 x_3 c_16)
			(= x_68 c_17)
			(size_0 x_6 c_17)
			(= x_69 c_18)
			(sum_0 x_3 c_18)
			(= x_70 c_19)
			(sum_0 x_6 c_19)
			(incabs_0 (mutTree_1 x_5 x_7) c_12 c_13 c_14 c_15)
			(incabs_0 (mutTree_1 x_3 x_6) c_16 c_17 c_18 c_19)
			(= x_8 x_6)
			(= x_9 x_104)
			(= x_10 x_7)
			(= x_171 (Tree_1 x_10 x_9 x_8))
			(size_2 x_59 (Tree_1 x_5 x_4 x_3))
			(size_2 x_60 x_172)
			(sum_2 x_61 (Tree_1 x_5 x_4 x_3))
			(sum_2 x_62 x_173)
			(size_2 x_63 x_5)
			(size_2 x_64 x_7)
			(sum_2 x_65 x_5)
			(sum_2 x_66 x_7)
			(size_2 x_67 x_3)
			(size_2 x_68 x_6)
			(sum_2 x_69 x_3)
			(sum_2 x_70 x_6)
			(add_0 x_104 x_4 (S_0 Z_0))
			(retTree_1 x_169 x_11)
			(retTree_1 x_170 x_11)
			(retTree_1 x_171 x_11)
			(retTree_1 x_172 x_11)
			(retTree_1 x_173 x_11))
		(incabs_1 (mutTree_1 (Tree_1 x_5 x_4 x_3) x_174) c_8 c_9 c_10 c_11))))
(assert (forall ((x_12 MutTree_0) (c_20 Nat_0) (c_21 Nat_0) (c_22 Nat_0) (c_23 Nat_0) (x_71 Nat_0) (x_72 Nat_0) (x_73 Nat_0) (x_74 Nat_0) (x_180 Tree_0) (x_175 Tree_0) (x_176 Tree_0) (x_177 Tree_0) (x_178 Tree_0) (x_179 Tree_0))
	(=>	(and (retTree_1 x_180 x_12)
			(= x_71 c_20)
			(size_0 Tree_5 c_20)
			(= x_72 c_21)
			(size_0 x_175 c_21)
			(= x_73 c_22)
			(sum_0 Tree_5 c_22)
			(= x_74 c_23)
			(sum_0 x_176 c_23)
			(= x_177 Tree_5)
			(size_2 x_71 Tree_5)
			(size_2 x_72 x_178)
			(sum_2 x_73 Tree_5)
			(sum_2 x_74 x_179)
			(retTree_1 x_175 x_12)
			(retTree_1 x_176 x_12)
			(retTree_1 x_177 x_12)
			(retTree_1 x_178 x_12)
			(retTree_1 x_179 x_12))
		(incabs_1 (mutTree_1 Tree_5 x_180) c_20 c_21 c_22 c_23))))
(assert (forall ((x_13 Tree_0) (x_14 Tree_0) (x_15 Tree_0) (x_16 Nat_0) (x_17 Nat_0) (x_18 Nat_0) (x_19 Bool) (c_24 Nat_0) (c_25 Nat_0) (c_26 Nat_0) (c_27 Nat_0) (c_28 Nat_0) (c_29 Nat_0) (x_75 Nat_0) (x_76 Nat_0) (x_77 Nat_0) (x_78 Nat_0) (x_79 Nat_0) (x_80 Nat_0) (x_81 Nat_0) (x_82 Nat_0) (x_83 Nat_0) (x_97 Bool) (x_105 Nat_0))
	(=>	(and (= x_75 c_24)
			(size_0 x_15 c_24)
			(= x_76 c_25)
			(size_0 x_13 c_25)
			(= x_77 c_26)
			(sum_0 x_15 c_26)
			(= x_78 c_27)
			(sum_0 x_13 c_27)
			(= x_79 c_28)
			(size_0 x_14 c_28)
			(= x_80 c_29)
			(sum_0 x_14 c_29)
			(sum_0 x_15 x_18)
			(size_0 x_15 x_17)
			(incabs_0 (mutTree_1 x_15 x_13) c_24 c_25 c_26 c_27)
			(sum_0 x_14 x_16)
			(mainabs_0 x_14 x_97 x_19 c_28 c_29)
			(gt_0 x_16 x_105)
			(= x_81 x_17)
			(= x_82 x_18)
			(= x_83 x_16)
			(= x_14 x_13)
			(size_2 x_75 x_15)
			(size_2 x_76 x_13)
			(sum_2 x_77 x_15)
			(sum_2 x_78 x_13)
			(size_2 x_79 x_14)
			(sum_2 x_80 x_14)
			(size_2 x_81 x_15)
			(sum_2 x_82 x_15)
			(sum_2 x_83 x_14)
			(not_0 x_97 true)
			(add_0 x_105 x_18 x_17))
		(main_0 x_19))))
(assert (forall ((x_13 Tree_0) (x_14 Tree_0) (x_15 Tree_0) (x_16 Nat_0) (x_17 Nat_0) (x_18 Nat_0) (x_19 Bool) (c_24 Nat_0) (c_25 Nat_0) (c_26 Nat_0) (c_27 Nat_0) (c_28 Nat_0) (c_29 Nat_0) (x_84 Nat_0) (x_85 Nat_0) (x_86 Nat_0) (x_87 Nat_0) (x_88 Nat_0) (x_89 Nat_0) (x_90 Nat_0) (x_91 Nat_0) (x_92 Nat_0) (x_98 Bool) (x_106 Nat_0))
	(=>	(and (= x_84 c_24)
			(size_0 x_15 c_24)
			(= x_85 c_25)
			(size_0 x_13 c_25)
			(= x_86 c_26)
			(sum_0 x_15 c_26)
			(= x_87 c_27)
			(sum_0 x_13 c_27)
			(= x_88 c_28)
			(size_0 x_14 c_28)
			(= x_89 c_29)
			(sum_0 x_14 c_29)
			(sum_0 x_15 x_18)
			(size_0 x_15 x_17)
			(incabs_0 (mutTree_1 x_15 x_13) c_24 c_25 c_26 c_27)
			(sum_0 x_14 x_16)
			(mainabs_0 x_14 x_98 x_19 c_28 c_29)
			(le_0 x_16 x_106)
			(= x_90 x_17)
			(= x_91 x_18)
			(= x_92 x_16)
			(= x_14 x_13)
			(size_2 x_84 x_15)
			(size_2 x_85 x_13)
			(sum_2 x_86 x_15)
			(sum_2 x_87 x_13)
			(size_2 x_88 x_14)
			(sum_2 x_89 x_14)
			(size_2 x_90 x_15)
			(sum_2 x_91 x_15)
			(sum_2 x_92 x_14)
			(not_0 x_98 false)
			(add_0 x_106 x_18 x_17))
		(main_0 x_19))))
(assert (forall ((x_20 Bool) (x_21 Tree_0) (c_30 Nat_0) (c_31 Nat_0) (x_93 Nat_0) (x_94 Nat_0))
	(=>	(and (= x_93 c_30)
			(size_0 x_21 c_30)
			(= x_94 c_31)
			(sum_0 x_21 c_31)
			(= x_20 false)
			(size_2 x_93 x_21)
			(sum_2 x_94 x_21))
		(mainabs_0 x_21 false x_20 c_30 c_31))))
(assert (forall ((x_22 Bool) (x_23 Tree_0) (c_32 Nat_0) (c_33 Nat_0) (x_95 Nat_0) (x_96 Nat_0))
	(=>	(and (= x_95 c_32)
			(size_0 x_23 c_32)
			(= x_96 c_33)
			(sum_0 x_23 c_33)
			(= x_22 true)
			(size_2 x_95 x_23)
			(sum_2 x_96 x_23))
		(mainabs_0 x_23 true x_22 c_32 c_33))))
(assert (forall ((x_24 Tree_0) (x_25 Nat_0))
	(=> (size_1 x_24 x_25)
	    (size_0 x_24 x_25))))
(assert (forall ((x_26 Nat_0) (x_27 Nat_0) (x_28 Nat_0) (x_29 Tree_0) (x_30 Nat_0) (x_31 Tree_0) (x_107 Nat_0) (x_108 Nat_0))
	(=>	(and (size_0 x_29 x_27)
			(size_0 x_31 x_28)
			(= x_26 x_108)
			(add_0 x_107 x_27 (S_0 Z_0))
			(add_0 x_108 x_107 x_28))
		(size_1 (Tree_1 x_29 x_30 x_31) x_26))))
(assert (forall ((x_32 Nat_0))
	(=> (= x_32 Z_0)
	    (size_1 Tree_5 x_32))))
(assert (forall ((x_33 Tree_0) (x_34 Nat_0))
	(=> (sum_1 x_33 x_34)
	    (sum_0 x_33 x_34))))
(assert (forall ((x_35 Nat_0) (x_36 Nat_0) (x_37 Nat_0) (x_38 Tree_0) (x_39 Nat_0) (x_40 Tree_0) (x_109 Nat_0) (x_110 Nat_0))
	(=>	(and (sum_0 x_38 x_36)
			(sum_0 x_40 x_37)
			(= x_35 x_110)
			(add_0 x_109 x_36 x_39)
			(add_0 x_110 x_109 x_37))
		(sum_1 (Tree_1 x_38 x_39 x_40) x_35))))
(assert (forall ((x_41 Nat_0))
	(=> (= x_41 Z_0)
	    (sum_1 Tree_5 x_41))))
(assert (forall ((x_42 Nat_0))
	(=> (main_0 true)
	    false)))
(check-sat)
