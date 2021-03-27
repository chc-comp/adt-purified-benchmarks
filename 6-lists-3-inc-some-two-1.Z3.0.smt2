(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun unS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_0 (Nat_0) Bool)
(declare-fun isS_0 (Nat_0) Bool)
(assert (forall ((x_103 Nat_0) (x_102 Nat_0))
	(=> (= x_103 (S_0 x_102))
	    (unS_1 x_102 x_103))))
(assert (isZ_0 Z_0))
(assert (forall ((x_104 Nat_0))
	(isS_0 (S_0 x_104))))
(assert (forall ((x_105 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_105))))
(assert (forall ((x_106 Nat_0))
	(diseqNat_0 (S_0 x_106) Z_0)))
(assert (forall ((x_107 Nat_0) (x_108 Nat_0))
	(=> (diseqNat_0 x_107 x_108)
	    (diseqNat_0 (S_0 x_107) (S_0 x_108)))))
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
(assert (forall ((x_92 Nat_0) (y_0 Nat_0) (r_0 Nat_0))
	(=> (add_0 r_0 x_92 y_0)
	    (add_0 (S_0 r_0) (S_0 x_92) y_0))))
(assert (forall ((y_0 Nat_0))
	(minus_0 Z_0 Z_0 y_0)))
(assert (forall ((x_92 Nat_0) (y_0 Nat_0) (r_0 Nat_0))
	(=> (minus_0 r_0 x_92 y_0)
	    (minus_0 (S_0 r_0) (S_0 x_92) y_0))))
(assert (forall ((y_0 Nat_0))
	(le_0 Z_0 y_0)))
(assert (forall ((x_92 Nat_0) (y_0 Nat_0))
	(=> (le_0 x_92 y_0)
	    (le_0 (S_0 x_92) (S_0 y_0)))))
(assert (forall ((y_0 Nat_0))
	(ge_0 y_0 Z_0)))
(assert (forall ((x_92 Nat_0) (y_0 Nat_0))
	(=> (ge_0 x_92 y_0)
	    (ge_0 (S_0 x_92) (S_0 y_0)))))
(assert (forall ((y_0 Nat_0))
	(lt_0 Z_0 (S_0 y_0))))
(assert (forall ((x_92 Nat_0) (y_0 Nat_0))
	(=> (lt_0 x_92 y_0)
	    (lt_0 (S_0 x_92) (S_0 y_0)))))
(assert (forall ((y_0 Nat_0))
	(gt_0 (S_0 y_0) Z_0)))
(assert (forall ((x_92 Nat_0) (y_0 Nat_0))
	(=> (gt_0 x_92 y_0)
	    (gt_0 (S_0 x_92) (S_0 y_0)))))
(assert (forall ((y_0 Nat_0))
	(mult_0 Z_0 Z_0 y_0)))
(assert (forall ((x_92 Nat_0) (y_0 Nat_0) (r_0 Nat_0) (z_1 Nat_0))
	(=>	(and (mult_0 r_0 x_92 y_0)
			(add_0 z_1 r_0 y_0))
		(mult_0 z_1 (S_0 x_92) y_0))))
(assert (forall ((x_92 Nat_0) (y_0 Nat_0))
	(=> (lt_0 x_92 y_0)
	    (div_0 Z_0 x_92 y_0))))
(assert (forall ((x_92 Nat_0) (y_0 Nat_0) (r_0 Nat_0) (z_1 Nat_0))
	(=>	(and (ge_0 x_92 y_0)
			(minus_0 z_1 x_92 y_0)
			(div_0 r_0 z_1 y_0))
		(div_0 (S_0 r_0) x_92 y_0))))
(assert (forall ((x_92 Nat_0) (y_0 Nat_0))
	(=> (lt_0 x_92 y_0)
	    (mod_0 x_92 x_92 y_0))))
(assert (forall ((x_92 Nat_0) (y_0 Nat_0) (r_0 Nat_0) (z_1 Nat_0))
	(=>	(and (ge_0 x_92 y_0)
			(minus_0 z_1 x_92 y_0)
			(mod_0 r_0 z_1 y_0))
		(mod_0 r_0 x_92 y_0))))
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
(assert (forall ((x_111 List_0) (x_109 Nat_0) (x_110 List_0))
	(=> (= x_111 (List_1 x_109 x_110))
	    (List_5 x_109 x_111))))
(assert (forall ((x_111 List_0) (x_109 Nat_0) (x_110 List_0))
	(=> (= x_111 (List_1 x_109 x_110))
	    (List_6 x_110 x_111))))
(assert (forall ((x_113 Nat_0) (x_114 List_0))
	(isList_0 (List_1 x_113 x_114))))
(assert (isList_1 List_4))
(assert (forall ((x_115 Nat_0) (x_116 List_0))
	(diseqList_0 (List_1 x_115 x_116) List_4)))
(assert (forall ((x_117 Nat_0) (x_118 List_0))
	(diseqList_0 List_4 (List_1 x_117 x_118))))
(assert (forall ((x_119 Nat_0) (x_120 List_0) (x_121 Nat_0) (x_122 List_0))
	(=> (diseqNat_0 x_119 x_121)
	    (diseqList_0 (List_1 x_119 x_120) (List_1 x_121 x_122)))))
(assert (forall ((x_119 Nat_0) (x_120 List_0) (x_121 Nat_0) (x_122 List_0))
	(=> (diseqList_0 x_120 x_122)
	    (diseqList_0 (List_1 x_119 x_120) (List_1 x_121 x_122)))))
(declare-datatypes ((MutList_0 0)) (((mutList_1 (curList_0 List_0) (retList_0 List_0)))))
(declare-fun diseqMutList_0 (MutList_0 MutList_0) Bool)
(declare-fun curList_1 (List_0 MutList_0) Bool)
(declare-fun retList_1 (List_0 MutList_0) Bool)
(declare-fun ismutList_0 (MutList_0) Bool)
(assert (forall ((x_125 MutList_0) (x_123 List_0) (x_124 List_0))
	(=> (= x_125 (mutList_1 x_123 x_124))
	    (curList_1 x_123 x_125))))
(assert (forall ((x_125 MutList_0) (x_123 List_0) (x_124 List_0))
	(=> (= x_125 (mutList_1 x_123 x_124))
	    (retList_1 x_124 x_125))))
(assert (forall ((x_126 List_0) (x_127 List_0))
	(ismutList_0 (mutList_1 x_126 x_127))))
(assert (forall ((x_128 List_0) (x_129 List_0) (x_130 List_0) (x_131 List_0))
	(=> (diseqList_0 x_128 x_130)
	    (diseqMutList_0 (mutList_1 x_128 x_129) (mutList_1 x_130 x_131)))))
(assert (forall ((x_128 List_0) (x_129 List_0) (x_130 List_0) (x_131 List_0))
	(=> (diseqList_0 x_129 x_131)
	    (diseqMutList_0 (mutList_1 x_128 x_129) (mutList_1 x_130 x_131)))))
(declare-datatypes ((MutInt_0 0)) (((mutInt_1 (curInt_0 Nat_0) (retInt_0 Nat_0)))))
(declare-fun diseqMutInt_0 (MutInt_0 MutInt_0) Bool)
(declare-fun curInt_1 (Nat_0 MutInt_0) Bool)
(declare-fun retInt_1 (Nat_0 MutInt_0) Bool)
(declare-fun ismutInt_0 (MutInt_0) Bool)
(assert (forall ((x_134 MutInt_0) (x_132 Nat_0) (x_133 Nat_0))
	(=> (= x_134 (mutInt_1 x_132 x_133))
	    (curInt_1 x_132 x_134))))
(assert (forall ((x_134 MutInt_0) (x_132 Nat_0) (x_133 Nat_0))
	(=> (= x_134 (mutInt_1 x_132 x_133))
	    (retInt_1 x_133 x_134))))
(assert (forall ((x_135 Nat_0) (x_136 Nat_0))
	(ismutInt_0 (mutInt_1 x_135 x_136))))
(assert (forall ((x_137 Nat_0) (x_138 Nat_0) (x_139 Nat_0) (x_140 Nat_0))
	(=> (diseqNat_0 x_137 x_139)
	    (diseqMutInt_0 (mutInt_1 x_137 x_138) (mutInt_1 x_139 x_140)))))
(assert (forall ((x_137 Nat_0) (x_138 Nat_0) (x_139 Nat_0) (x_140 Nat_0))
	(=> (diseqNat_0 x_138 x_140)
	    (diseqMutInt_0 (mutInt_1 x_137 x_138) (mutInt_1 x_139 x_140)))))
(declare-datatypes ((TupMutIntMutList_0 0)) (((tupMutIntMutList_1 (atMutIntMutList_0 MutInt_0) (atMutIntMutList_1 MutList_0)))))
(declare-fun diseqTupMutIntMutList_0 (TupMutIntMutList_0 TupMutIntMutList_0) Bool)
(declare-fun atMutIntMutList_2 (MutInt_0 TupMutIntMutList_0) Bool)
(declare-fun atMutIntMutList_3 (MutList_0 TupMutIntMutList_0) Bool)
(declare-fun istupMutIntMutList_0 (TupMutIntMutList_0) Bool)
(assert (forall ((x_143 TupMutIntMutList_0) (x_141 MutInt_0) (x_142 MutList_0))
	(=> (= x_143 (tupMutIntMutList_1 x_141 x_142))
	    (atMutIntMutList_2 x_141 x_143))))
(assert (forall ((x_143 TupMutIntMutList_0) (x_141 MutInt_0) (x_142 MutList_0))
	(=> (= x_143 (tupMutIntMutList_1 x_141 x_142))
	    (atMutIntMutList_3 x_142 x_143))))
(assert (forall ((x_144 MutInt_0) (x_145 MutList_0))
	(istupMutIntMutList_0 (tupMutIntMutList_1 x_144 x_145))))
(assert (forall ((x_146 MutInt_0) (x_147 MutList_0) (x_148 MutInt_0) (x_149 MutList_0))
	(=> (diseqMutInt_0 x_146 x_148)
	    (diseqTupMutIntMutList_0 (tupMutIntMutList_1 x_146 x_147) (tupMutIntMutList_1 x_148 x_149)))))
(assert (forall ((x_146 MutInt_0) (x_147 MutList_0) (x_148 MutInt_0) (x_149 MutList_0))
	(=> (diseqMutList_0 x_147 x_149)
	    (diseqTupMutIntMutList_0 (tupMutIntMutList_1 x_146 x_147) (tupMutIntMutList_1 x_148 x_149)))))
(declare-fun main_0 (Bool) Bool)
(declare-fun mainabs_0 (List_0 Bool Bool Nat_0) Bool)
(declare-fun sum_0 (List_0 Nat_0) Bool)
(declare-fun takesomerestabs_0 (MutList_0 TupMutIntMutList_0 Nat_0 Nat_0) Bool)
(declare-fun sum_1 (List_0 Nat_0) Bool)
(declare-fun takesomerestabs_1 (MutList_0 TupMutIntMutList_0 Nat_0 Nat_0) Bool)
(declare-fun takesomerestabs_2 (MutList_0 MutInt_0 MutList_0 Bool TupMutIntMutList_0 Nat_0 Nat_0 Nat_0 Nat_0) Bool)
(declare-fun sum_2 (Nat_0 List_0) Bool)
(assert (forall ((x_0 List_0) (x_47 Nat_0))
	(=>	(and (= x_47 Z_0)
			(= x_0 List_4))
		(sum_2 x_47 x_0))))
(assert (forall ((x_0 List_0) (x_48 Nat_0) (x_49 Nat_0) (x_93 Nat_0) (x_150 List_0) (x_151 Nat_0))
	(=>	(and (= x_48 x_93)
			(sum_2 x_49 x_150)
			(diseqList_0 x_0 List_4)
			(add_0 x_93 x_151 x_49)
			(List_6 x_150 x_0)
			(List_5 x_151 x_0))
		(sum_2 x_48 x_0))))
(assert (forall ((x_1 Bool) (x_2 Nat_0) (x_3 TupMutIntMutList_0) (x_4 TupMutIntMutList_0) (x_5 Nat_0) (x_6 List_0) (x_7 List_0) (x_8 List_0) (x_9 List_0) (c_0 Nat_0) (c_1 Nat_0) (c_2 Nat_0) (c_3 Nat_0) (c_4 Nat_0) (x_50 Nat_0) (x_51 Nat_0) (x_52 Nat_0) (x_53 Nat_0) (x_54 Nat_0) (x_55 Nat_0) (x_56 Nat_0) (x_90 Bool) (x_94 Nat_0) (x_95 Nat_0) (x_96 Nat_0) (x_152 MutList_0) (x_153 List_0) (x_154 MutList_0) (x_155 List_0) (x_156 MutList_0) (x_157 List_0) (x_158 MutList_0) (x_159 List_0) (x_160 MutInt_0) (x_161 Nat_0) (x_162 MutList_0) (x_163 List_0) (x_164 MutInt_0) (x_165 Nat_0) (x_166 MutList_0) (x_167 List_0) (x_168 MutInt_0) (x_169 Nat_0) (x_170 MutInt_0) (x_171 Nat_0))
	(=>	(and (= x_50 c_0)
			(sum_0 x_6 c_0)
			(= x_51 c_1)
			(sum_0 x_8 c_1)
			(= x_52 c_2)
			(sum_0 x_153 c_2)
			(= x_53 c_3)
			(sum_0 x_9 c_3)
			(= x_54 c_4)
			(sum_0 x_7 c_4)
			(sum_0 x_6 x_2)
			(takesomerestabs_0 (mutList_1 x_6 x_8) x_3 c_0 c_1)
			(takesomerestabs_0 (mutList_1 x_155 x_9) x_4 c_2 c_3)
			(sum_0 x_7 x_5)
			(mainabs_0 x_7 x_90 x_1 c_4)
			(gt_0 x_5 x_94)
			(= x_55 x_2)
			(= x_56 x_5)
			(= x_7 x_8)
			(= x_157 x_159)
			(= x_161 x_95)
			(= x_163 x_9)
			(= x_165 x_96)
			(sum_2 x_50 x_6)
			(sum_2 x_51 x_8)
			(sum_2 x_52 x_167)
			(sum_2 x_53 x_9)
			(sum_2 x_54 x_7)
			(sum_2 x_55 x_6)
			(sum_2 x_56 x_7)
			(not_0 x_90 true)
			(add_0 x_94 x_2 (S_0 (S_0 Z_0)))
			(add_0 x_95 x_169 (S_0 Z_0))
			(add_0 x_96 x_171 (S_0 Z_0))
			(atMutIntMutList_3 x_152 x_3)
			(curList_1 x_153 x_152)
			(atMutIntMutList_3 x_154 x_3)
			(curList_1 x_155 x_154)
			(atMutIntMutList_3 x_156 x_4)
			(retList_1 x_157 x_156)
			(atMutIntMutList_3 x_158 x_4)
			(curList_1 x_159 x_158)
			(atMutIntMutList_2 x_160 x_3)
			(retInt_1 x_161 x_160)
			(atMutIntMutList_3 x_162 x_3)
			(retList_1 x_163 x_162)
			(atMutIntMutList_2 x_164 x_4)
			(retInt_1 x_165 x_164)
			(atMutIntMutList_3 x_166 x_3)
			(curList_1 x_167 x_166)
			(atMutIntMutList_2 x_168 x_3)
			(curInt_1 x_169 x_168)
			(atMutIntMutList_2 x_170 x_4)
			(curInt_1 x_171 x_170))
		(main_0 x_1))))
(assert (forall ((x_1 Bool) (x_2 Nat_0) (x_3 TupMutIntMutList_0) (x_4 TupMutIntMutList_0) (x_5 Nat_0) (x_6 List_0) (x_7 List_0) (x_8 List_0) (x_9 List_0) (c_0 Nat_0) (c_1 Nat_0) (c_2 Nat_0) (c_3 Nat_0) (c_4 Nat_0) (x_57 Nat_0) (x_58 Nat_0) (x_59 Nat_0) (x_60 Nat_0) (x_61 Nat_0) (x_62 Nat_0) (x_63 Nat_0) (x_91 Bool) (x_97 Nat_0) (x_98 Nat_0) (x_99 Nat_0) (x_172 MutList_0) (x_173 List_0) (x_174 MutList_0) (x_175 List_0) (x_176 MutList_0) (x_177 List_0) (x_178 MutList_0) (x_179 List_0) (x_180 MutInt_0) (x_181 Nat_0) (x_182 MutList_0) (x_183 List_0) (x_184 MutInt_0) (x_185 Nat_0) (x_186 MutList_0) (x_187 List_0) (x_188 MutInt_0) (x_189 Nat_0) (x_190 MutInt_0) (x_191 Nat_0))
	(=>	(and (= x_57 c_0)
			(sum_0 x_6 c_0)
			(= x_58 c_1)
			(sum_0 x_8 c_1)
			(= x_59 c_2)
			(sum_0 x_173 c_2)
			(= x_60 c_3)
			(sum_0 x_9 c_3)
			(= x_61 c_4)
			(sum_0 x_7 c_4)
			(sum_0 x_6 x_2)
			(takesomerestabs_0 (mutList_1 x_6 x_8) x_3 c_0 c_1)
			(takesomerestabs_0 (mutList_1 x_175 x_9) x_4 c_2 c_3)
			(sum_0 x_7 x_5)
			(mainabs_0 x_7 x_91 x_1 c_4)
			(le_0 x_5 x_97)
			(= x_62 x_2)
			(= x_63 x_5)
			(= x_7 x_8)
			(= x_177 x_179)
			(= x_181 x_98)
			(= x_183 x_9)
			(= x_185 x_99)
			(sum_2 x_57 x_6)
			(sum_2 x_58 x_8)
			(sum_2 x_59 x_187)
			(sum_2 x_60 x_9)
			(sum_2 x_61 x_7)
			(sum_2 x_62 x_6)
			(sum_2 x_63 x_7)
			(not_0 x_91 false)
			(add_0 x_97 x_2 (S_0 (S_0 Z_0)))
			(add_0 x_98 x_189 (S_0 Z_0))
			(add_0 x_99 x_191 (S_0 Z_0))
			(atMutIntMutList_3 x_172 x_3)
			(curList_1 x_173 x_172)
			(atMutIntMutList_3 x_174 x_3)
			(curList_1 x_175 x_174)
			(atMutIntMutList_3 x_176 x_4)
			(retList_1 x_177 x_176)
			(atMutIntMutList_3 x_178 x_4)
			(curList_1 x_179 x_178)
			(atMutIntMutList_2 x_180 x_3)
			(retInt_1 x_181 x_180)
			(atMutIntMutList_3 x_182 x_3)
			(retList_1 x_183 x_182)
			(atMutIntMutList_2 x_184 x_4)
			(retInt_1 x_185 x_184)
			(atMutIntMutList_3 x_186 x_3)
			(curList_1 x_187 x_186)
			(atMutIntMutList_2 x_188 x_3)
			(curInt_1 x_189 x_188)
			(atMutIntMutList_2 x_190 x_4)
			(curInt_1 x_191 x_190))
		(main_0 x_1))))
(assert (forall ((x_10 Bool) (x_11 List_0) (c_5 Nat_0) (x_64 Nat_0))
	(=>	(and (= x_64 c_5)
			(sum_0 x_11 c_5)
			(= x_10 false)
			(sum_2 x_64 x_11))
		(mainabs_0 x_11 false x_10 c_5))))
(assert (forall ((x_12 Bool) (x_13 List_0) (c_6 Nat_0) (x_65 Nat_0))
	(=>	(and (= x_65 c_6)
			(sum_0 x_13 c_6)
			(= x_12 true)
			(sum_2 x_65 x_13))
		(mainabs_0 x_13 true x_12 c_6))))
(assert (forall ((x_14 List_0) (x_15 Nat_0))
	(=> (sum_1 x_14 x_15)
	    (sum_0 x_14 x_15))))
(assert (forall ((x_16 Nat_0) (x_17 Nat_0) (x_18 Nat_0) (x_19 List_0) (x_100 Nat_0))
	(=>	(and (sum_0 x_19 x_17)
			(= x_16 x_100)
			(add_0 x_100 x_18 x_17))
		(sum_1 (List_1 x_18 x_19) x_16))))
(assert (forall ((x_20 Nat_0))
	(=> (= x_20 Z_0)
	    (sum_1 List_4 x_20))))
(assert (forall ((x_21 TupMutIntMutList_0) (x_22 MutList_0) (c_7 Nat_0) (c_8 Nat_0) (c_9 Nat_0) (c_10 Nat_0) (x_66 Nat_0) (x_67 Nat_0) (x_68 Nat_0) (x_69 Nat_0) (x_192 List_0) (x_193 List_0) (x_194 List_0) (x_195 List_0) (x_196 List_0) (x_197 List_0) (x_198 List_0) (x_199 List_0))
	(=>	(and (= x_66 c_7)
			(sum_0 x_192 c_7)
			(= x_67 c_8)
			(sum_0 x_193 c_8)
			(= x_68 c_9)
			(sum_0 x_194 c_9)
			(= x_69 c_10)
			(sum_0 x_195 c_10)
			(takesomerestabs_1 x_22 x_21 c_9 c_10)
			(sum_2 x_66 x_196)
			(sum_2 x_67 x_197)
			(sum_2 x_68 x_198)
			(sum_2 x_69 x_199)
			(curList_1 x_192 x_22)
			(retList_1 x_193 x_22)
			(curList_1 x_194 x_22)
			(retList_1 x_195 x_22)
			(curList_1 x_196 x_22)
			(retList_1 x_197 x_22)
			(curList_1 x_198 x_22)
			(retList_1 x_199 x_22))
		(takesomerestabs_0 x_22 x_21 c_7 c_8))))
(assert (forall ((x_23 List_0) (x_24 Nat_0) (x_25 List_0) (x_26 Nat_0) (x_27 Bool) (x_28 TupMutIntMutList_0) (x_29 MutList_0) (c_11 Nat_0) (c_12 Nat_0) (c_13 Nat_0) (c_14 Nat_0) (c_15 Nat_0) (c_16 Nat_0) (x_70 Nat_0) (x_71 Nat_0) (x_72 Nat_0) (x_73 Nat_0) (x_74 Nat_0) (x_75 Nat_0) (x_205 List_0) (x_200 List_0) (x_201 List_0) (x_202 List_0) (x_203 List_0) (x_204 List_0))
	(=>	(and (retList_1 x_205 x_29)
			(= x_70 c_11)
			(sum_0 (List_1 x_24 x_23) c_11)
			(= x_71 c_12)
			(sum_0 x_200 c_12)
			(= x_72 c_13)
			(sum_0 (List_1 x_26 x_25) c_13)
			(= x_73 c_14)
			(sum_0 x_201 c_14)
			(= x_74 c_15)
			(sum_0 x_23 c_15)
			(= x_75 c_16)
			(sum_0 x_25 c_16)
			(takesomerestabs_2 (mutList_1 (List_1 x_26 x_25) x_202) (mutInt_1 x_24 x_26) (mutList_1 x_23 x_25) x_27 x_28 c_13 c_14 c_15 c_16)
			(sum_2 x_70 (List_1 x_24 x_23))
			(sum_2 x_71 x_203)
			(sum_2 x_72 (List_1 x_26 x_25))
			(sum_2 x_73 x_204)
			(sum_2 x_74 x_23)
			(sum_2 x_75 x_25)
			(retList_1 x_200 x_29)
			(retList_1 x_201 x_29)
			(retList_1 x_202 x_29)
			(retList_1 x_203 x_29)
			(retList_1 x_204 x_29))
		(takesomerestabs_1 (mutList_1 (List_1 x_24 x_23) x_205) x_28 c_11 c_12))))
(assert (forall ((x_30 List_0) (x_31 TupMutIntMutList_0) (x_32 TupMutIntMutList_0) (x_33 MutList_0) (c_17 Nat_0) (c_18 Nat_0) (c_19 Nat_0) (c_20 Nat_0) (x_76 Nat_0) (x_77 Nat_0) (x_78 Nat_0) (x_79 Nat_0) (x_209 List_0) (x_206 List_0) (x_207 List_0) (x_208 List_0))
	(=>	(and (retList_1 x_209 x_33)
			(= x_76 c_17)
			(sum_0 List_4 c_17)
			(= x_77 c_18)
			(sum_0 x_206 c_18)
			(= x_78 c_19)
			(sum_0 List_4 c_19)
			(= x_79 c_20)
			(sum_0 x_30 c_20)
			(takesomerestabs_0 (mutList_1 List_4 x_30) x_31 c_19 c_20)
			(= x_207 x_30)
			(= x_32 x_31)
			(sum_2 x_76 List_4)
			(sum_2 x_77 x_208)
			(sum_2 x_78 List_4)
			(sum_2 x_79 x_30)
			(retList_1 x_206 x_33)
			(retList_1 x_207 x_33)
			(retList_1 x_208 x_33))
		(takesomerestabs_1 (mutList_1 List_4 x_209) x_32 c_17 c_18))))
(assert (forall ((x_34 List_0) (x_35 TupMutIntMutList_0) (x_36 TupMutIntMutList_0) (x_37 MutList_0) (x_38 MutInt_0) (x_39 MutList_0) (c_21 Nat_0) (c_22 Nat_0) (c_23 Nat_0) (c_24 Nat_0) (c_25 Nat_0) (c_26 Nat_0) (x_80 Nat_0) (x_81 Nat_0) (x_82 Nat_0) (x_83 Nat_0) (x_84 Nat_0) (x_85 Nat_0) (x_210 List_0) (x_211 List_0) (x_212 List_0) (x_213 List_0) (x_214 List_0) (x_215 List_0) (x_216 List_0) (x_217 Nat_0) (x_218 Nat_0) (x_219 List_0) (x_220 List_0) (x_221 List_0) (x_222 List_0) (x_223 List_0) (x_224 List_0) (x_225 List_0))
	(=>	(and (= x_80 c_21)
			(sum_0 x_210 c_21)
			(= x_81 c_22)
			(sum_0 x_211 c_22)
			(= x_82 c_23)
			(sum_0 x_212 c_23)
			(= x_83 c_24)
			(sum_0 x_213 c_24)
			(= x_84 c_25)
			(sum_0 x_214 c_25)
			(= x_85 c_26)
			(sum_0 x_34 c_26)
			(takesomerestabs_0 (mutList_1 x_215 x_34) x_35 c_25 c_26)
			(= x_216 x_34)
			(= x_217 x_218)
			(= x_219 x_220)
			(= x_36 x_35)
			(sum_2 x_80 x_221)
			(sum_2 x_81 x_222)
			(sum_2 x_82 x_223)
			(sum_2 x_83 x_224)
			(sum_2 x_84 x_225)
			(sum_2 x_85 x_34)
			(curList_1 x_210 x_39)
			(retList_1 x_211 x_39)
			(curList_1 x_212 x_37)
			(retList_1 x_213 x_37)
			(curList_1 x_214 x_37)
			(curList_1 x_215 x_37)
			(retList_1 x_216 x_37)
			(retInt_1 x_217 x_38)
			(curInt_1 x_218 x_38)
			(retList_1 x_219 x_39)
			(curList_1 x_220 x_39)
			(curList_1 x_221 x_39)
			(retList_1 x_222 x_39)
			(curList_1 x_223 x_37)
			(retList_1 x_224 x_37)
			(curList_1 x_225 x_37))
		(takesomerestabs_2 x_39 x_38 x_37 false x_36 c_21 c_22 c_23 c_24))))
(assert (forall ((x_40 List_0) (x_41 Nat_0) (x_42 TupMutIntMutList_0) (x_43 MutList_0) (x_44 MutInt_0) (x_45 MutList_0) (c_27 Nat_0) (c_28 Nat_0) (c_29 Nat_0) (c_30 Nat_0) (x_86 Nat_0) (x_87 Nat_0) (x_88 Nat_0) (x_89 Nat_0) (x_226 List_0) (x_227 List_0) (x_228 List_0) (x_229 List_0) (x_230 List_0) (x_231 Nat_0) (x_232 List_0) (x_233 List_0) (x_234 Nat_0) (x_235 List_0) (x_236 List_0) (x_237 List_0) (x_238 List_0) (x_239 List_0))
	(=>	(and (= x_86 c_27)
			(sum_0 x_226 c_27)
			(= x_87 c_28)
			(sum_0 x_227 c_28)
			(= x_88 c_29)
			(sum_0 x_228 c_29)
			(= x_89 c_30)
			(sum_0 x_229 c_30)
			(= x_230 x_40)
			(= x_231 x_41)
			(= x_232 x_233)
			(= x_42 (tupMutIntMutList_1 (mutInt_1 x_234 x_41) (mutList_1 x_235 x_40)))
			(sum_2 x_86 x_236)
			(sum_2 x_87 x_237)
			(sum_2 x_88 x_238)
			(sum_2 x_89 x_239)
			(curList_1 x_226 x_45)
			(retList_1 x_227 x_45)
			(curList_1 x_228 x_43)
			(retList_1 x_229 x_43)
			(retList_1 x_230 x_43)
			(retInt_1 x_231 x_44)
			(retList_1 x_232 x_45)
			(curList_1 x_233 x_45)
			(curInt_1 x_234 x_44)
			(curList_1 x_235 x_43)
			(curList_1 x_236 x_45)
			(retList_1 x_237 x_45)
			(curList_1 x_238 x_43)
			(retList_1 x_239 x_43))
		(takesomerestabs_2 x_45 x_44 x_43 true x_42 c_27 c_28 c_29 c_30))))
(assert (forall ((x_46 Nat_0))
	(=> (main_0 true)
	    false)))
(check-sat)
