(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun unS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_0 (Nat_0) Bool)
(declare-fun isS_0 (Nat_0) Bool)
(assert (forall ((x_166 Nat_0) (x_165 Nat_0))
	(=> (= x_166 (S_0 x_165))
	    (unS_1 x_165 x_166))))
(assert (isZ_0 Z_0))
(assert (forall ((x_167 Nat_0))
	(isS_0 (S_0 x_167))))
(assert (forall ((x_168 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_168))))
(assert (forall ((x_169 Nat_0))
	(diseqNat_0 (S_0 x_169) Z_0)))
(assert (forall ((x_170 Nat_0) (x_171 Nat_0))
	(=> (diseqNat_0 x_170 x_171)
	    (diseqNat_0 (S_0 x_170) (S_0 x_171)))))
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
(assert (forall ((x_155 Nat_0) (y_0 Nat_0) (r_0 Nat_0))
	(=> (add_0 r_0 x_155 y_0)
	    (add_0 (S_0 r_0) (S_0 x_155) y_0))))
(assert (forall ((y_0 Nat_0))
	(minus_0 Z_0 Z_0 y_0)))
(assert (forall ((x_155 Nat_0) (y_0 Nat_0) (r_0 Nat_0))
	(=> (minus_0 r_0 x_155 y_0)
	    (minus_0 (S_0 r_0) (S_0 x_155) y_0))))
(assert (forall ((y_0 Nat_0))
	(le_0 Z_0 y_0)))
(assert (forall ((x_155 Nat_0) (y_0 Nat_0))
	(=> (le_0 x_155 y_0)
	    (le_0 (S_0 x_155) (S_0 y_0)))))
(assert (forall ((y_0 Nat_0))
	(ge_0 y_0 Z_0)))
(assert (forall ((x_155 Nat_0) (y_0 Nat_0))
	(=> (ge_0 x_155 y_0)
	    (ge_0 (S_0 x_155) (S_0 y_0)))))
(assert (forall ((y_0 Nat_0))
	(lt_0 Z_0 (S_0 y_0))))
(assert (forall ((x_155 Nat_0) (y_0 Nat_0))
	(=> (lt_0 x_155 y_0)
	    (lt_0 (S_0 x_155) (S_0 y_0)))))
(assert (forall ((y_0 Nat_0))
	(gt_0 (S_0 y_0) Z_0)))
(assert (forall ((x_155 Nat_0) (y_0 Nat_0))
	(=> (gt_0 x_155 y_0)
	    (gt_0 (S_0 x_155) (S_0 y_0)))))
(assert (forall ((y_0 Nat_0))
	(mult_0 Z_0 Z_0 y_0)))
(assert (forall ((x_155 Nat_0) (y_0 Nat_0) (r_0 Nat_0) (z_1 Nat_0))
	(=>	(and (mult_0 r_0 x_155 y_0)
			(add_0 z_1 r_0 y_0))
		(mult_0 z_1 (S_0 x_155) y_0))))
(assert (forall ((x_155 Nat_0) (y_0 Nat_0))
	(=> (lt_0 x_155 y_0)
	    (div_0 Z_0 x_155 y_0))))
(assert (forall ((x_155 Nat_0) (y_0 Nat_0) (r_0 Nat_0) (z_1 Nat_0))
	(=>	(and (ge_0 x_155 y_0)
			(minus_0 z_1 x_155 y_0)
			(div_0 r_0 z_1 y_0))
		(div_0 (S_0 r_0) x_155 y_0))))
(assert (forall ((x_155 Nat_0) (y_0 Nat_0))
	(=> (lt_0 x_155 y_0)
	    (mod_0 x_155 x_155 y_0))))
(assert (forall ((x_155 Nat_0) (y_0 Nat_0) (r_0 Nat_0) (z_1 Nat_0))
	(=>	(and (ge_0 x_155 y_0)
			(minus_0 z_1 x_155 y_0)
			(mod_0 r_0 z_1 y_0))
		(mod_0 r_0 x_155 y_0))))
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
(assert (forall ((x_175 Tree_0) (x_172 Tree_0) (x_173 Nat_0) (x_174 Tree_0))
	(=> (= x_175 (Tree_1 x_172 x_173 x_174))
	    (Tree_6 x_172 x_175))))
(assert (forall ((x_175 Tree_0) (x_172 Tree_0) (x_173 Nat_0) (x_174 Tree_0))
	(=> (= x_175 (Tree_1 x_172 x_173 x_174))
	    (Tree_7 x_173 x_175))))
(assert (forall ((x_175 Tree_0) (x_172 Tree_0) (x_173 Nat_0) (x_174 Tree_0))
	(=> (= x_175 (Tree_1 x_172 x_173 x_174))
	    (Tree_8 x_174 x_175))))
(assert (forall ((x_177 Tree_0) (x_178 Nat_0) (x_179 Tree_0))
	(isTree_0 (Tree_1 x_177 x_178 x_179))))
(assert (isTree_1 Tree_5))
(assert (forall ((x_180 Tree_0) (x_181 Nat_0) (x_182 Tree_0))
	(diseqTree_0 (Tree_1 x_180 x_181 x_182) Tree_5)))
(assert (forall ((x_183 Tree_0) (x_184 Nat_0) (x_185 Tree_0))
	(diseqTree_0 Tree_5 (Tree_1 x_183 x_184 x_185))))
(assert (forall ((x_186 Tree_0) (x_187 Nat_0) (x_188 Tree_0) (x_189 Tree_0) (x_190 Nat_0) (x_191 Tree_0))
	(=> (diseqTree_0 x_186 x_189)
	    (diseqTree_0 (Tree_1 x_186 x_187 x_188) (Tree_1 x_189 x_190 x_191)))))
(assert (forall ((x_186 Tree_0) (x_187 Nat_0) (x_188 Tree_0) (x_189 Tree_0) (x_190 Nat_0) (x_191 Tree_0))
	(=> (diseqNat_0 x_187 x_190)
	    (diseqTree_0 (Tree_1 x_186 x_187 x_188) (Tree_1 x_189 x_190 x_191)))))
(assert (forall ((x_186 Tree_0) (x_187 Nat_0) (x_188 Tree_0) (x_189 Tree_0) (x_190 Nat_0) (x_191 Tree_0))
	(=> (diseqTree_0 x_188 x_191)
	    (diseqTree_0 (Tree_1 x_186 x_187 x_188) (Tree_1 x_189 x_190 x_191)))))
(declare-datatypes ((MutInt_0 0)) (((mutInt_1 (curInt_0 Nat_0) (retInt_0 Nat_0)))))
(declare-fun diseqMutInt_0 (MutInt_0 MutInt_0) Bool)
(declare-fun curInt_1 (Nat_0 MutInt_0) Bool)
(declare-fun retInt_1 (Nat_0 MutInt_0) Bool)
(declare-fun ismutInt_0 (MutInt_0) Bool)
(assert (forall ((x_194 MutInt_0) (x_192 Nat_0) (x_193 Nat_0))
	(=> (= x_194 (mutInt_1 x_192 x_193))
	    (curInt_1 x_192 x_194))))
(assert (forall ((x_194 MutInt_0) (x_192 Nat_0) (x_193 Nat_0))
	(=> (= x_194 (mutInt_1 x_192 x_193))
	    (retInt_1 x_193 x_194))))
(assert (forall ((x_195 Nat_0) (x_196 Nat_0))
	(ismutInt_0 (mutInt_1 x_195 x_196))))
(assert (forall ((x_197 Nat_0) (x_198 Nat_0) (x_199 Nat_0) (x_200 Nat_0))
	(=> (diseqNat_0 x_197 x_199)
	    (diseqMutInt_0 (mutInt_1 x_197 x_198) (mutInt_1 x_199 x_200)))))
(assert (forall ((x_197 Nat_0) (x_198 Nat_0) (x_199 Nat_0) (x_200 Nat_0))
	(=> (diseqNat_0 x_198 x_200)
	    (diseqMutInt_0 (mutInt_1 x_197 x_198) (mutInt_1 x_199 x_200)))))
(declare-datatypes ((MutTree_0 0)) (((mutTree_1 (curTree_0 Tree_0) (retTree_0 Tree_0)))))
(declare-fun diseqMutTree_0 (MutTree_0 MutTree_0) Bool)
(declare-fun curTree_1 (Tree_0 MutTree_0) Bool)
(declare-fun retTree_1 (Tree_0 MutTree_0) Bool)
(declare-fun ismutTree_0 (MutTree_0) Bool)
(assert (forall ((x_203 MutTree_0) (x_201 Tree_0) (x_202 Tree_0))
	(=> (= x_203 (mutTree_1 x_201 x_202))
	    (curTree_1 x_201 x_203))))
(assert (forall ((x_203 MutTree_0) (x_201 Tree_0) (x_202 Tree_0))
	(=> (= x_203 (mutTree_1 x_201 x_202))
	    (retTree_1 x_202 x_203))))
(assert (forall ((x_204 Tree_0) (x_205 Tree_0))
	(ismutTree_0 (mutTree_1 x_204 x_205))))
(assert (forall ((x_206 Tree_0) (x_207 Tree_0) (x_208 Tree_0) (x_209 Tree_0))
	(=> (diseqTree_0 x_206 x_208)
	    (diseqMutTree_0 (mutTree_1 x_206 x_207) (mutTree_1 x_208 x_209)))))
(assert (forall ((x_206 Tree_0) (x_207 Tree_0) (x_208 Tree_0) (x_209 Tree_0))
	(=> (diseqTree_0 x_207 x_209)
	    (diseqMutTree_0 (mutTree_1 x_206 x_207) (mutTree_1 x_208 x_209)))))
(declare-fun main_0 (Bool) Bool)
(declare-fun mainabs_0 (Tree_0 Bool Bool Nat_0) Bool)
(declare-fun sum_0 (Tree_0 Nat_0) Bool)
(declare-fun someabs_0 (MutTree_0 MutInt_0 Nat_0 Nat_0) Bool)
(declare-fun someabs_1 (MutTree_0 MutInt_0 Nat_0 Nat_0) Bool)
(declare-fun someabs_2 (MutTree_0 MutTree_0 MutInt_0 MutTree_0 Bool MutInt_0 Nat_0 Nat_0 Nat_0 Nat_0 Nat_0 Nat_0) Bool)
(declare-fun someabs_3 (MutTree_0 MutTree_0 MutInt_0 MutTree_0 Bool Bool MutInt_0 Nat_0 Nat_0 Nat_0 Nat_0 Nat_0 Nat_0) Bool)
(declare-fun sum_1 (Tree_0 Nat_0) Bool)
(declare-fun sum_2 (Nat_0 Tree_0) Bool)
(assert (forall ((x_0 Tree_0) (x_87 Nat_0))
	(=>	(and (= x_87 Z_0)
			(= x_0 Tree_5))
		(sum_2 x_87 x_0))))
(assert (forall ((x_0 Tree_0) (x_88 Nat_0) (x_89 Nat_0) (x_90 Nat_0) (x_156 Nat_0) (x_157 Nat_0) (x_210 Tree_0) (x_211 Tree_0) (x_212 Nat_0))
	(=>	(and (= x_88 x_157)
			(sum_2 x_89 x_210)
			(sum_2 x_90 x_211)
			(diseqTree_0 x_0 Tree_5)
			(add_0 x_156 x_212 x_89)
			(add_0 x_157 x_156 x_90)
			(Tree_6 x_210 x_0)
			(Tree_8 x_211 x_0)
			(Tree_7 x_212 x_0))
		(sum_2 x_88 x_0))))
(assert (forall ((x_1 Bool) (x_2 Nat_0) (x_3 MutInt_0) (x_4 Nat_0) (x_5 Tree_0) (x_6 Tree_0) (x_7 Tree_0) (c_0 Nat_0) (c_1 Nat_0) (c_2 Nat_0) (x_91 Nat_0) (x_92 Nat_0) (x_93 Nat_0) (x_94 Nat_0) (x_95 Nat_0) (x_153 Bool) (x_158 Nat_0) (x_159 Nat_0) (x_213 Nat_0) (x_214 Nat_0))
	(=>	(and (= x_91 c_0)
			(sum_0 x_5 c_0)
			(= x_92 c_1)
			(sum_0 x_7 c_1)
			(= x_93 c_2)
			(sum_0 x_6 c_2)
			(sum_0 x_5 x_2)
			(someabs_0 (mutTree_1 x_5 x_7) x_3 c_0 c_1)
			(sum_0 x_6 x_4)
			(mainabs_0 x_6 x_153 x_1 c_2)
			(= x_4 x_158)
			(= x_94 x_2)
			(= x_95 x_4)
			(= x_6 x_7)
			(= x_213 x_159)
			(sum_2 x_91 x_5)
			(sum_2 x_92 x_7)
			(sum_2 x_93 x_6)
			(sum_2 x_94 x_5)
			(sum_2 x_95 x_6)
			(not_0 x_153 true)
			(add_0 x_158 x_2 (S_0 Z_0))
			(add_0 x_159 x_214 (S_0 Z_0))
			(retInt_1 x_213 x_3)
			(curInt_1 x_214 x_3))
		(main_0 x_1))))
(assert (forall ((x_1 Bool) (x_2 Nat_0) (x_3 MutInt_0) (x_4 Nat_0) (x_5 Tree_0) (x_6 Tree_0) (x_7 Tree_0) (c_0 Nat_0) (c_1 Nat_0) (c_2 Nat_0) (x_96 Nat_0) (x_97 Nat_0) (x_98 Nat_0) (x_99 Nat_0) (x_100 Nat_0) (x_154 Bool) (x_160 Nat_0) (x_161 Nat_0) (x_215 Nat_0) (x_216 Nat_0))
	(=>	(and (= x_96 c_0)
			(sum_0 x_5 c_0)
			(= x_97 c_1)
			(sum_0 x_7 c_1)
			(= x_98 c_2)
			(sum_0 x_6 c_2)
			(sum_0 x_5 x_2)
			(someabs_0 (mutTree_1 x_5 x_7) x_3 c_0 c_1)
			(sum_0 x_6 x_4)
			(mainabs_0 x_6 x_154 x_1 c_2)
			(diseqNat_0 x_4 x_160)
			(= x_99 x_2)
			(= x_100 x_4)
			(= x_6 x_7)
			(= x_215 x_161)
			(sum_2 x_96 x_5)
			(sum_2 x_97 x_7)
			(sum_2 x_98 x_6)
			(sum_2 x_99 x_5)
			(sum_2 x_100 x_6)
			(not_0 x_154 false)
			(add_0 x_160 x_2 (S_0 Z_0))
			(add_0 x_161 x_216 (S_0 Z_0))
			(retInt_1 x_215 x_3)
			(curInt_1 x_216 x_3))
		(main_0 x_1))))
(assert (forall ((x_8 Bool) (x_9 Tree_0) (c_3 Nat_0) (x_101 Nat_0))
	(=>	(and (= x_101 c_3)
			(sum_0 x_9 c_3)
			(= x_8 false)
			(sum_2 x_101 x_9))
		(mainabs_0 x_9 false x_8 c_3))))
(assert (forall ((x_10 Bool) (x_11 Tree_0) (c_4 Nat_0) (x_102 Nat_0))
	(=>	(and (= x_102 c_4)
			(sum_0 x_11 c_4)
			(= x_10 true)
			(sum_2 x_102 x_11))
		(mainabs_0 x_11 true x_10 c_4))))
(assert (forall ((x_12 MutInt_0) (x_13 MutTree_0) (c_5 Nat_0) (c_6 Nat_0) (c_7 Nat_0) (c_8 Nat_0) (x_103 Nat_0) (x_104 Nat_0) (x_105 Nat_0) (x_106 Nat_0) (x_217 Tree_0) (x_218 Tree_0) (x_219 Tree_0) (x_220 Tree_0) (x_221 Tree_0) (x_222 Tree_0) (x_223 Tree_0) (x_224 Tree_0))
	(=>	(and (= x_103 c_5)
			(sum_0 x_217 c_5)
			(= x_104 c_6)
			(sum_0 x_218 c_6)
			(= x_105 c_7)
			(sum_0 x_219 c_7)
			(= x_106 c_8)
			(sum_0 x_220 c_8)
			(someabs_1 x_13 x_12 c_7 c_8)
			(sum_2 x_103 x_221)
			(sum_2 x_104 x_222)
			(sum_2 x_105 x_223)
			(sum_2 x_106 x_224)
			(curTree_1 x_217 x_13)
			(retTree_1 x_218 x_13)
			(curTree_1 x_219 x_13)
			(retTree_1 x_220 x_13)
			(curTree_1 x_221 x_13)
			(retTree_1 x_222 x_13)
			(curTree_1 x_223 x_13)
			(retTree_1 x_224 x_13))
		(someabs_0 x_13 x_12 c_5 c_6))))
(assert (forall ((x_14 Tree_0) (x_15 Nat_0) (x_16 Tree_0) (x_17 Tree_0) (x_18 Nat_0) (x_19 Tree_0) (x_20 Bool) (x_21 MutInt_0) (x_22 MutTree_0) (c_9 Nat_0) (c_10 Nat_0) (c_11 Nat_0) (c_12 Nat_0) (c_13 Nat_0) (c_14 Nat_0) (c_15 Nat_0) (c_16 Nat_0) (x_107 Nat_0) (x_108 Nat_0) (x_109 Nat_0) (x_110 Nat_0) (x_111 Nat_0) (x_112 Nat_0) (x_113 Nat_0) (x_114 Nat_0) (x_230 Tree_0) (x_225 Tree_0) (x_226 Tree_0) (x_227 Tree_0) (x_228 Tree_0) (x_229 Tree_0))
	(=>	(and (retTree_1 x_230 x_22)
			(= x_107 c_9)
			(sum_0 (Tree_1 x_16 x_15 x_14) c_9)
			(= x_108 c_10)
			(sum_0 x_225 c_10)
			(= x_109 c_11)
			(sum_0 (Tree_1 x_19 x_18 x_17) c_11)
			(= x_110 c_12)
			(sum_0 x_226 c_12)
			(= x_111 c_13)
			(sum_0 x_16 c_13)
			(= x_112 c_14)
			(sum_0 x_19 c_14)
			(= x_113 c_15)
			(sum_0 x_14 c_15)
			(= x_114 c_16)
			(sum_0 x_17 c_16)
			(someabs_2 (mutTree_1 (Tree_1 x_19 x_18 x_17) x_227) (mutTree_1 x_16 x_19) (mutInt_1 x_15 x_18) (mutTree_1 x_14 x_17) x_20 x_21 c_11 c_12 c_13 c_14 c_15 c_16)
			(sum_2 x_107 (Tree_1 x_16 x_15 x_14))
			(sum_2 x_108 x_228)
			(sum_2 x_109 (Tree_1 x_19 x_18 x_17))
			(sum_2 x_110 x_229)
			(sum_2 x_111 x_16)
			(sum_2 x_112 x_19)
			(sum_2 x_113 x_14)
			(sum_2 x_114 x_17)
			(retTree_1 x_225 x_22)
			(retTree_1 x_226 x_22)
			(retTree_1 x_227 x_22)
			(retTree_1 x_228 x_22)
			(retTree_1 x_229 x_22))
		(someabs_1 (mutTree_1 (Tree_1 x_16 x_15 x_14) x_230) x_21 c_9 c_10))))
(assert (forall ((x_23 Nat_0) (x_24 Nat_0) (x_25 Nat_0) (x_26 Tree_0) (x_27 MutInt_0) (x_28 MutInt_0) (x_29 MutTree_0) (c_17 Nat_0) (c_18 Nat_0) (c_19 Nat_0) (c_20 Nat_0) (x_115 Nat_0) (x_116 Nat_0) (x_117 Nat_0) (x_118 Nat_0) (x_236 Tree_0) (x_231 Tree_0) (x_232 Nat_0) (x_233 Tree_0) (x_234 Nat_0) (x_235 Tree_0))
	(=>	(and (retTree_1 x_236 x_29)
			(= x_115 c_17)
			(sum_0 Tree_5 c_17)
			(= x_116 c_18)
			(sum_0 x_231 c_18)
			(= x_117 c_19)
			(sum_0 Tree_5 c_19)
			(= x_118 c_20)
			(sum_0 x_26 c_20)
			(someabs_0 (mutTree_1 Tree_5 x_26) x_27 c_19 c_20)
			(= x_232 x_25)
			(= x_25 x_24)
			(= x_24 x_23)
			(= x_233 x_26)
			(= x_28 (mutInt_1 x_234 x_23))
			(sum_2 x_115 Tree_5)
			(sum_2 x_116 x_235)
			(sum_2 x_117 Tree_5)
			(sum_2 x_118 x_26)
			(retTree_1 x_231 x_29)
			(retInt_1 x_232 x_27)
			(retTree_1 x_233 x_29)
			(curInt_1 x_234 x_27)
			(retTree_1 x_235 x_29))
		(someabs_1 (mutTree_1 Tree_5 x_236) x_28 c_17 c_18))))
(assert (forall ((x_30 Bool) (x_31 MutInt_0) (x_32 MutTree_0) (x_33 MutInt_0) (x_34 MutTree_0) (x_35 MutTree_0) (c_21 Nat_0) (c_22 Nat_0) (c_23 Nat_0) (c_24 Nat_0) (c_25 Nat_0) (c_26 Nat_0) (c_27 Nat_0) (c_28 Nat_0) (c_29 Nat_0) (c_30 Nat_0) (c_31 Nat_0) (c_32 Nat_0) (x_119 Nat_0) (x_120 Nat_0) (x_121 Nat_0) (x_122 Nat_0) (x_123 Nat_0) (x_124 Nat_0) (x_125 Nat_0) (x_126 Nat_0) (x_127 Nat_0) (x_128 Nat_0) (x_129 Nat_0) (x_130 Nat_0) (x_237 Tree_0) (x_238 Tree_0) (x_239 Tree_0) (x_240 Tree_0) (x_241 Tree_0) (x_242 Tree_0) (x_243 Tree_0) (x_244 Tree_0) (x_245 Tree_0) (x_246 Tree_0) (x_247 Tree_0) (x_248 Tree_0) (x_249 Tree_0) (x_250 Tree_0) (x_251 Tree_0) (x_252 Tree_0) (x_253 Tree_0) (x_254 Tree_0) (x_255 Tree_0) (x_256 Tree_0) (x_257 Tree_0) (x_258 Tree_0) (x_259 Tree_0) (x_260 Tree_0))
	(=>	(and (= x_119 c_21)
			(sum_0 x_237 c_21)
			(= x_120 c_22)
			(sum_0 x_238 c_22)
			(= x_121 c_23)
			(sum_0 x_239 c_23)
			(= x_122 c_24)
			(sum_0 x_240 c_24)
			(= x_123 c_25)
			(sum_0 x_241 c_25)
			(= x_124 c_26)
			(sum_0 x_242 c_26)
			(= x_125 c_27)
			(sum_0 x_243 c_27)
			(= x_126 c_28)
			(sum_0 x_244 c_28)
			(= x_127 c_29)
			(sum_0 x_245 c_29)
			(= x_128 c_30)
			(sum_0 x_246 c_30)
			(= x_129 c_31)
			(sum_0 x_247 c_31)
			(= x_130 c_32)
			(sum_0 x_248 c_32)
			(someabs_3 x_35 x_34 x_33 x_32 false x_30 x_31 c_27 c_28 c_29 c_30 c_31 c_32)
			(sum_2 x_119 x_249)
			(sum_2 x_120 x_250)
			(sum_2 x_121 x_251)
			(sum_2 x_122 x_252)
			(sum_2 x_123 x_253)
			(sum_2 x_124 x_254)
			(sum_2 x_125 x_255)
			(sum_2 x_126 x_256)
			(sum_2 x_127 x_257)
			(sum_2 x_128 x_258)
			(sum_2 x_129 x_259)
			(sum_2 x_130 x_260)
			(curTree_1 x_237 x_35)
			(retTree_1 x_238 x_35)
			(curTree_1 x_239 x_34)
			(retTree_1 x_240 x_34)
			(curTree_1 x_241 x_32)
			(retTree_1 x_242 x_32)
			(curTree_1 x_243 x_35)
			(retTree_1 x_244 x_35)
			(curTree_1 x_245 x_34)
			(retTree_1 x_246 x_34)
			(curTree_1 x_247 x_32)
			(retTree_1 x_248 x_32)
			(curTree_1 x_249 x_35)
			(retTree_1 x_250 x_35)
			(curTree_1 x_251 x_34)
			(retTree_1 x_252 x_34)
			(curTree_1 x_253 x_32)
			(retTree_1 x_254 x_32)
			(curTree_1 x_255 x_35)
			(retTree_1 x_256 x_35)
			(curTree_1 x_257 x_34)
			(retTree_1 x_258 x_34)
			(curTree_1 x_259 x_32)
			(retTree_1 x_260 x_32))
		(someabs_2 x_35 x_34 x_33 x_32 false x_31 c_21 c_22 c_23 c_24 c_25 c_26))))
(assert (forall ((x_36 Nat_0) (x_37 Nat_0) (x_38 Nat_0) (x_39 Nat_0) (x_40 Nat_0) (x_41 Nat_0) (x_42 MutInt_0) (x_43 MutTree_0) (x_44 MutInt_0) (x_45 MutTree_0) (x_46 MutTree_0) (c_33 Nat_0) (c_34 Nat_0) (c_35 Nat_0) (c_36 Nat_0) (c_37 Nat_0) (c_38 Nat_0) (x_131 Nat_0) (x_132 Nat_0) (x_133 Nat_0) (x_134 Nat_0) (x_135 Nat_0) (x_136 Nat_0) (x_261 Tree_0) (x_262 Tree_0) (x_263 Tree_0) (x_264 Tree_0) (x_265 Tree_0) (x_266 Tree_0) (x_267 Tree_0) (x_268 Tree_0) (x_269 Nat_0) (x_270 Tree_0) (x_271 Tree_0) (x_272 Tree_0) (x_273 Tree_0) (x_274 Nat_0) (x_275 Tree_0) (x_276 Tree_0) (x_277 Tree_0) (x_278 Tree_0) (x_279 Tree_0) (x_280 Tree_0))
	(=>	(and (= x_131 c_33)
			(sum_0 x_261 c_33)
			(= x_132 c_34)
			(sum_0 x_262 c_34)
			(= x_133 c_35)
			(sum_0 x_263 c_35)
			(= x_134 c_36)
			(sum_0 x_264 c_36)
			(= x_135 c_37)
			(sum_0 x_265 c_37)
			(= x_136 c_38)
			(sum_0 x_266 c_38)
			(= x_41 x_40)
			(= x_40 x_39)
			(= x_39 x_38)
			(= x_267 x_268)
			(= x_269 x_41)
			(= x_270 x_271)
			(= x_38 x_37)
			(= x_37 x_36)
			(= x_272 x_273)
			(= x_42 (mutInt_1 x_274 x_36))
			(sum_2 x_131 x_275)
			(sum_2 x_132 x_276)
			(sum_2 x_133 x_277)
			(sum_2 x_134 x_278)
			(sum_2 x_135 x_279)
			(sum_2 x_136 x_280)
			(curTree_1 x_261 x_46)
			(retTree_1 x_262 x_46)
			(curTree_1 x_263 x_45)
			(retTree_1 x_264 x_45)
			(curTree_1 x_265 x_43)
			(retTree_1 x_266 x_43)
			(retTree_1 x_267 x_43)
			(curTree_1 x_268 x_43)
			(retInt_1 x_269 x_44)
			(retTree_1 x_270 x_45)
			(curTree_1 x_271 x_45)
			(retTree_1 x_272 x_46)
			(curTree_1 x_273 x_46)
			(curInt_1 x_274 x_44)
			(curTree_1 x_275 x_46)
			(retTree_1 x_276 x_46)
			(curTree_1 x_277 x_45)
			(retTree_1 x_278 x_45)
			(curTree_1 x_279 x_43)
			(retTree_1 x_280 x_43))
		(someabs_2 x_46 x_45 x_44 x_43 true x_42 c_33 c_34 c_35 c_36 c_37 c_38))))
(assert (forall ((x_47 Nat_0) (x_48 Nat_0) (x_49 Nat_0) (x_50 Nat_0) (x_51 Nat_0) (x_52 Nat_0) (x_53 Nat_0) (x_54 Tree_0) (x_55 MutInt_0) (x_56 MutInt_0) (x_57 Bool) (x_58 MutTree_0) (x_59 MutInt_0) (x_60 MutTree_0) (x_61 MutTree_0) (c_39 Nat_0) (c_40 Nat_0) (c_41 Nat_0) (c_42 Nat_0) (c_43 Nat_0) (c_44 Nat_0) (c_45 Nat_0) (c_46 Nat_0) (x_137 Nat_0) (x_138 Nat_0) (x_139 Nat_0) (x_140 Nat_0) (x_141 Nat_0) (x_142 Nat_0) (x_143 Nat_0) (x_144 Nat_0) (x_281 Tree_0) (x_282 Tree_0) (x_283 Tree_0) (x_284 Tree_0) (x_285 Tree_0) (x_286 Tree_0) (x_287 Tree_0) (x_288 Tree_0) (x_289 Nat_0) (x_290 Tree_0) (x_291 Nat_0) (x_292 Nat_0) (x_293 Tree_0) (x_294 Tree_0) (x_295 Tree_0) (x_296 Tree_0) (x_297 Nat_0) (x_298 Tree_0) (x_299 Tree_0) (x_300 Tree_0) (x_301 Tree_0) (x_302 Tree_0) (x_303 Tree_0) (x_304 Tree_0))
	(=>	(and (= x_137 c_39)
			(sum_0 x_281 c_39)
			(= x_138 c_40)
			(sum_0 x_282 c_40)
			(= x_139 c_41)
			(sum_0 x_283 c_41)
			(= x_140 c_42)
			(sum_0 x_284 c_42)
			(= x_141 c_43)
			(sum_0 x_285 c_43)
			(= x_142 c_44)
			(sum_0 x_286 c_44)
			(= x_143 c_45)
			(sum_0 x_287 c_45)
			(= x_144 c_46)
			(sum_0 x_54 c_46)
			(someabs_0 (mutTree_1 x_288 x_54) x_55 c_45 c_46)
			(= x_289 x_53)
			(= x_53 x_52)
			(= x_52 x_51)
			(= x_51 x_50)
			(= x_50 x_49)
			(= x_290 x_54)
			(= x_291 x_292)
			(= x_293 x_294)
			(= x_49 x_48)
			(= x_48 x_47)
			(= x_295 x_296)
			(= x_56 (mutInt_1 x_297 x_47))
			(sum_2 x_137 x_298)
			(sum_2 x_138 x_299)
			(sum_2 x_139 x_300)
			(sum_2 x_140 x_301)
			(sum_2 x_141 x_302)
			(sum_2 x_142 x_303)
			(sum_2 x_143 x_304)
			(sum_2 x_144 x_54)
			(curTree_1 x_281 x_61)
			(retTree_1 x_282 x_61)
			(curTree_1 x_283 x_60)
			(retTree_1 x_284 x_60)
			(curTree_1 x_285 x_58)
			(retTree_1 x_286 x_58)
			(curTree_1 x_287 x_58)
			(curTree_1 x_288 x_58)
			(retInt_1 x_289 x_55)
			(retTree_1 x_290 x_58)
			(retInt_1 x_291 x_59)
			(curInt_1 x_292 x_59)
			(retTree_1 x_293 x_60)
			(curTree_1 x_294 x_60)
			(retTree_1 x_295 x_61)
			(curTree_1 x_296 x_61)
			(curInt_1 x_297 x_55)
			(curTree_1 x_298 x_61)
			(retTree_1 x_299 x_61)
			(curTree_1 x_300 x_60)
			(retTree_1 x_301 x_60)
			(curTree_1 x_302 x_58)
			(retTree_1 x_303 x_58)
			(curTree_1 x_304 x_58))
		(someabs_3 x_61 x_60 x_59 x_58 x_57 false x_56 c_39 c_40 c_41 c_42 c_43 c_44))))
(assert (forall ((x_62 Nat_0) (x_63 Nat_0) (x_64 Nat_0) (x_65 Nat_0) (x_66 Nat_0) (x_67 Nat_0) (x_68 Nat_0) (x_69 Tree_0) (x_70 MutInt_0) (x_71 MutInt_0) (x_72 Bool) (x_73 MutTree_0) (x_74 MutInt_0) (x_75 MutTree_0) (x_76 MutTree_0) (c_47 Nat_0) (c_48 Nat_0) (c_49 Nat_0) (c_50 Nat_0) (c_51 Nat_0) (c_52 Nat_0) (c_53 Nat_0) (c_54 Nat_0) (x_145 Nat_0) (x_146 Nat_0) (x_147 Nat_0) (x_148 Nat_0) (x_149 Nat_0) (x_150 Nat_0) (x_151 Nat_0) (x_152 Nat_0) (x_305 Tree_0) (x_306 Tree_0) (x_307 Tree_0) (x_308 Tree_0) (x_309 Tree_0) (x_310 Tree_0) (x_311 Tree_0) (x_312 Tree_0) (x_313 Nat_0) (x_314 Tree_0) (x_315 Tree_0) (x_316 Nat_0) (x_317 Nat_0) (x_318 Tree_0) (x_319 Tree_0) (x_320 Tree_0) (x_321 Nat_0) (x_322 Tree_0) (x_323 Tree_0) (x_324 Tree_0) (x_325 Tree_0) (x_326 Tree_0) (x_327 Tree_0) (x_328 Tree_0))
	(=>	(and (= x_145 c_47)
			(sum_0 x_305 c_47)
			(= x_146 c_48)
			(sum_0 x_306 c_48)
			(= x_147 c_49)
			(sum_0 x_307 c_49)
			(= x_148 c_50)
			(sum_0 x_308 c_50)
			(= x_149 c_51)
			(sum_0 x_309 c_51)
			(= x_150 c_52)
			(sum_0 x_310 c_52)
			(= x_151 c_53)
			(sum_0 x_311 c_53)
			(= x_152 c_54)
			(sum_0 x_69 c_54)
			(someabs_0 (mutTree_1 x_312 x_69) x_70 c_53 c_54)
			(= x_313 x_68)
			(= x_68 x_67)
			(= x_67 x_66)
			(= x_66 x_65)
			(= x_65 x_64)
			(= x_314 x_315)
			(= x_316 x_317)
			(= x_318 x_69)
			(= x_64 x_63)
			(= x_63 x_62)
			(= x_319 x_320)
			(= x_71 (mutInt_1 x_321 x_62))
			(sum_2 x_145 x_322)
			(sum_2 x_146 x_323)
			(sum_2 x_147 x_324)
			(sum_2 x_148 x_325)
			(sum_2 x_149 x_326)
			(sum_2 x_150 x_327)
			(sum_2 x_151 x_328)
			(sum_2 x_152 x_69)
			(curTree_1 x_305 x_76)
			(retTree_1 x_306 x_76)
			(curTree_1 x_307 x_75)
			(retTree_1 x_308 x_75)
			(curTree_1 x_309 x_73)
			(retTree_1 x_310 x_73)
			(curTree_1 x_311 x_75)
			(curTree_1 x_312 x_75)
			(retInt_1 x_313 x_70)
			(retTree_1 x_314 x_73)
			(curTree_1 x_315 x_73)
			(retInt_1 x_316 x_74)
			(curInt_1 x_317 x_74)
			(retTree_1 x_318 x_75)
			(retTree_1 x_319 x_76)
			(curTree_1 x_320 x_76)
			(curInt_1 x_321 x_70)
			(curTree_1 x_322 x_76)
			(retTree_1 x_323 x_76)
			(curTree_1 x_324 x_75)
			(retTree_1 x_325 x_75)
			(curTree_1 x_326 x_73)
			(retTree_1 x_327 x_73)
			(curTree_1 x_328 x_75))
		(someabs_3 x_76 x_75 x_74 x_73 x_72 true x_71 c_47 c_48 c_49 c_50 c_51 c_52))))
(assert (forall ((x_77 Tree_0) (x_78 Nat_0))
	(=> (sum_1 x_77 x_78)
	    (sum_0 x_77 x_78))))
(assert (forall ((x_79 Nat_0) (x_80 Nat_0) (x_81 Nat_0) (x_82 Tree_0) (x_83 Nat_0) (x_84 Tree_0) (x_162 Nat_0) (x_163 Nat_0))
	(=>	(and (sum_0 x_82 x_80)
			(sum_0 x_84 x_81)
			(= x_79 x_163)
			(add_0 x_162 x_80 x_83)
			(add_0 x_163 x_162 x_81))
		(sum_1 (Tree_1 x_82 x_83 x_84) x_79))))
(assert (forall ((x_85 Nat_0))
	(=> (= x_85 Z_0)
	    (sum_1 Tree_5 x_85))))
(assert (forall ((x_86 Nat_0))
	(=> (main_0 true)
	    false)))
(check-sat)
