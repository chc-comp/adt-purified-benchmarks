(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun unS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_0 (Nat_0) Bool)
(declare-fun isS_0 (Nat_0) Bool)
(assert (forall ((x_205 Nat_0) (x_204 Nat_0))
	(=> (= x_205 (S_0 x_204))
	    (unS_1 x_204 x_205))))
(assert (isZ_0 Z_0))
(assert (forall ((x_206 Nat_0))
	(isS_0 (S_0 x_206))))
(assert (forall ((x_207 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_207))))
(assert (forall ((x_208 Nat_0))
	(diseqNat_0 (S_0 x_208) Z_0)))
(assert (forall ((x_209 Nat_0) (x_210 Nat_0))
	(=> (diseqNat_0 x_209 x_210)
	    (diseqNat_0 (S_0 x_209) (S_0 x_210)))))
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
(assert (forall ((x_198 Nat_0) (y_0 Nat_0) (r_0 Nat_0))
	(=> (add_0 r_0 x_198 y_0)
	    (add_0 (S_0 r_0) (S_0 x_198) y_0))))
(assert (forall ((y_0 Nat_0))
	(minus_0 Z_0 Z_0 y_0)))
(assert (forall ((x_198 Nat_0) (y_0 Nat_0) (r_0 Nat_0))
	(=> (minus_0 r_0 x_198 y_0)
	    (minus_0 (S_0 r_0) (S_0 x_198) y_0))))
(assert (forall ((y_0 Nat_0))
	(le_0 Z_0 y_0)))
(assert (forall ((x_198 Nat_0) (y_0 Nat_0))
	(=> (le_0 x_198 y_0)
	    (le_0 (S_0 x_198) (S_0 y_0)))))
(assert (forall ((y_0 Nat_0))
	(ge_0 y_0 Z_0)))
(assert (forall ((x_198 Nat_0) (y_0 Nat_0))
	(=> (ge_0 x_198 y_0)
	    (ge_0 (S_0 x_198) (S_0 y_0)))))
(assert (forall ((y_0 Nat_0))
	(lt_0 Z_0 (S_0 y_0))))
(assert (forall ((x_198 Nat_0) (y_0 Nat_0))
	(=> (lt_0 x_198 y_0)
	    (lt_0 (S_0 x_198) (S_0 y_0)))))
(assert (forall ((y_0 Nat_0))
	(gt_0 (S_0 y_0) Z_0)))
(assert (forall ((x_198 Nat_0) (y_0 Nat_0))
	(=> (gt_0 x_198 y_0)
	    (gt_0 (S_0 x_198) (S_0 y_0)))))
(assert (forall ((y_0 Nat_0))
	(mult_0 Z_0 Z_0 y_0)))
(assert (forall ((x_198 Nat_0) (y_0 Nat_0) (r_0 Nat_0) (z_1 Nat_0))
	(=>	(and (mult_0 r_0 x_198 y_0)
			(add_0 z_1 r_0 y_0))
		(mult_0 z_1 (S_0 x_198) y_0))))
(assert (forall ((x_198 Nat_0) (y_0 Nat_0))
	(=> (lt_0 x_198 y_0)
	    (div_0 Z_0 x_198 y_0))))
(assert (forall ((x_198 Nat_0) (y_0 Nat_0) (r_0 Nat_0) (z_1 Nat_0))
	(=>	(and (ge_0 x_198 y_0)
			(minus_0 z_1 x_198 y_0)
			(div_0 r_0 z_1 y_0))
		(div_0 (S_0 r_0) x_198 y_0))))
(assert (forall ((x_198 Nat_0) (y_0 Nat_0))
	(=> (lt_0 x_198 y_0)
	    (mod_0 x_198 x_198 y_0))))
(assert (forall ((x_198 Nat_0) (y_0 Nat_0) (r_0 Nat_0) (z_1 Nat_0))
	(=>	(and (ge_0 x_198 y_0)
			(minus_0 z_1 x_198 y_0)
			(mod_0 r_0 z_1 y_0))
		(mod_0 r_0 x_198 y_0))))
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
(declare-fun assume_0 (Bool) Bool)
(declare-fun assume_1 (Bool Bool) Bool)
(declare-fun main_0 (Bool) Bool)
(declare-fun main_1 (Nat_0 Nat_0 Nat_0 Nat_0 Bool Bool) Bool)
(declare-fun main_2 (Nat_0 Nat_0 Nat_0 Nat_0 Nat_0 Bool Bool) Bool)
(declare-fun main_3 (Nat_0 Nat_0 Nat_0 Nat_0 Nat_0 Bool Bool) Bool)
(declare-fun main_4 (Nat_0 Nat_0 Nat_0 Nat_0 Nat_0 Nat_0 Bool Bool) Bool)
(declare-fun main_5 (Nat_0 Nat_0 Nat_0 Nat_0 Nat_0 Nat_0 Bool Bool) Bool)
(declare-fun main_6 (Nat_0 Nat_0 Nat_0 Nat_0 Nat_0 Nat_0 Nat_0 Bool Bool) Bool)
(declare-fun main_7 (Nat_0 Nat_0 Nat_0 Nat_0 Nat_0 Nat_0 Nat_0 Bool Bool) Bool)
(declare-fun main_8 (Nat_0 Nat_0 Nat_0 Nat_0 Nat_0 Nat_0 Nat_0 Bool Bool) Bool)
(declare-fun main_9 (Nat_0 Nat_0 Nat_0 Nat_0 Nat_0 Nat_0 Nat_0 Bool Bool) Bool)
(declare-fun main_10 (Nat_0 Nat_0 Nat_0 Nat_0 Nat_0 Nat_0 Nat_0 Bool Bool) Bool)
(declare-fun main_11 (Nat_0 Nat_0 Nat_0 Nat_0 Nat_0 Nat_0 Nat_0 Bool Bool) Bool)
(declare-fun main_12 (Bool Bool) Bool)
(assert (forall ((x_0 Bool) (x_187 Bool))
	(=>	(and (assume_1 x_0 x_187)
			(not_0 x_187 x_0))
		(assume_0 x_0))))
(assert (forall ((x_1 Bool))
	(=> true
	    (assume_1 x_1 false))))
(assert (forall ((x_2 Bool))
	(=> false
	    (assume_1 x_2 true))))
(assert (forall ((x_3 Bool) (x_4 Nat_0) (x_5 Nat_0) (x_6 Nat_0) (x_7 Nat_0) (x_8 Bool))
	(=>	(and (assume_0 true)
			(gt_0 x_4 Z_0)
			(main_1 x_5 x_6 x_7 x_4 x_8 x_3))
		(main_0 x_3))))
(assert (forall ((x_3 Bool) (x_4 Nat_0) (x_5 Nat_0) (x_6 Nat_0) (x_7 Nat_0) (x_8 Bool))
	(=>	(and (assume_0 false)
			(le_0 x_4 Z_0)
			(main_1 x_5 x_6 x_7 x_4 x_8 x_3))
		(main_0 x_3))))
(assert (forall ((x_9 Nat_0) (x_10 Nat_0) (x_11 Nat_0) (x_12 Nat_0) (x_13 Bool) (x_14 Bool))
	(=> (main_2 x_9 x_10 x_11 Z_0 x_12 x_14 x_13)
	    (main_1 x_9 x_10 x_11 x_12 false x_13))))
(assert (forall ((x_15 Nat_0) (x_16 Nat_0) (x_17 Nat_0) (x_18 Nat_0) (x_19 Bool) (x_20 Bool))
	(=> (main_2 x_15 x_16 x_17 (S_0 Z_0) x_18 x_20 x_19)
	    (main_1 x_15 x_16 x_17 x_18 true x_19))))
(assert (forall ((x_21 Nat_0) (x_22 Nat_0) (x_23 Nat_0) (x_24 Nat_0) (x_25 Nat_0) (x_26 Bool) (x_27 Bool))
	(=> (main_3 x_21 x_22 x_23 x_24 x_25 x_27 x_26)
	    (main_2 x_21 x_22 x_23 x_24 x_25 false x_26))))
(assert (forall ((x_28 Nat_0) (x_29 Nat_0) (x_30 Nat_0) (x_31 Nat_0) (x_32 Nat_0) (x_33 Bool) (x_34 Bool))
	(=> (main_2 x_28 x_29 x_30 x_31 x_32 x_34 x_33)
	    (main_2 x_28 x_29 x_30 x_31 x_32 true x_33))))
(assert (forall ((x_35 Nat_0) (x_36 Nat_0) (x_37 Nat_0) (x_38 Nat_0) (x_39 Nat_0) (x_40 Bool) (x_41 Bool))
	(=> (main_4 x_35 x_36 x_37 x_38 Z_0 x_39 x_41 x_40)
	    (main_3 x_35 x_36 x_37 x_38 x_39 false x_40))))
(assert (forall ((x_42 Nat_0) (x_43 Nat_0) (x_44 Nat_0) (x_45 Nat_0) (x_46 Nat_0) (x_47 Bool) (x_48 Bool))
	(=> (main_4 x_42 x_43 x_44 x_45 (S_0 Z_0) x_46 x_48 x_47)
	    (main_3 x_42 x_43 x_44 x_45 x_46 true x_47))))
(assert (forall ((x_49 Nat_0) (x_50 Nat_0) (x_51 Nat_0) (x_52 Nat_0) (x_53 Nat_0) (x_54 Nat_0) (x_55 Bool) (x_56 Bool))
	(=> (main_5 x_49 x_50 x_51 x_52 x_53 x_54 x_56 x_55)
	    (main_4 x_49 x_50 x_51 x_52 x_53 x_54 false x_55))))
(assert (forall ((x_57 Nat_0) (x_58 Nat_0) (x_59 Nat_0) (x_60 Nat_0) (x_61 Nat_0) (x_62 Nat_0) (x_63 Bool) (x_64 Bool))
	(=> (main_4 x_57 x_58 x_59 x_60 x_61 x_62 x_64 x_63)
	    (main_4 x_57 x_58 x_59 x_60 x_61 x_62 true x_63))))
(assert (forall ((x_65 Nat_0) (x_66 Nat_0) (x_67 Nat_0) (x_68 Nat_0) (x_69 Nat_0) (x_70 Nat_0) (x_71 Bool) (x_72 Bool))
	(=> (main_6 x_65 x_66 x_67 x_68 x_69 Z_0 x_70 x_72 x_71)
	    (main_5 x_65 x_66 x_67 x_68 x_69 x_70 false x_71))))
(assert (forall ((x_73 Nat_0) (x_74 Nat_0) (x_75 Nat_0) (x_76 Nat_0) (x_77 Nat_0) (x_78 Nat_0) (x_79 Bool) (x_80 Bool))
	(=> (main_6 x_73 x_74 x_75 x_76 x_77 (S_0 Z_0) x_78 x_80 x_79)
	    (main_5 x_73 x_74 x_75 x_76 x_77 x_78 true x_79))))
(assert (forall ((x_81 Nat_0) (x_82 Nat_0) (x_83 Nat_0) (x_84 Nat_0) (x_85 Nat_0) (x_86 Nat_0) (x_87 Nat_0) (x_88 Bool) (x_188 Bool))
	(=>	(and (main_7 x_81 x_82 x_83 x_84 x_85 x_86 x_87 x_188 x_88)
			(= x_84 Z_0)
			(not_0 x_188 true))
		(main_6 x_81 x_82 x_83 x_84 x_85 x_86 x_87 false x_88))))
(assert (forall ((x_81 Nat_0) (x_82 Nat_0) (x_83 Nat_0) (x_84 Nat_0) (x_85 Nat_0) (x_86 Nat_0) (x_87 Nat_0) (x_88 Bool) (x_189 Bool))
	(=>	(and (main_7 x_81 x_82 x_83 x_84 x_85 x_86 x_87 x_189 x_88)
			(diseqNat_0 x_84 Z_0)
			(not_0 x_189 false))
		(main_6 x_81 x_82 x_83 x_84 x_85 x_86 x_87 false x_88))))
(assert (forall ((x_89 Nat_0) (x_90 Nat_0) (x_91 Nat_0) (x_92 Nat_0) (x_93 Nat_0) (x_94 Nat_0) (x_95 Nat_0) (x_96 Bool) (x_97 Bool))
	(=> (main_6 x_89 x_90 x_91 x_92 x_93 x_94 x_95 x_97 x_96)
	    (main_6 x_89 x_90 x_91 x_92 x_93 x_94 x_95 true x_96))))
(assert (forall ((x_98 Nat_0) (x_99 Nat_0) (x_100 Nat_0) (x_101 Nat_0) (x_102 Nat_0) (x_103 Nat_0) (x_104 Nat_0) (x_105 Bool) (x_106 Bool) (x_199 Nat_0))
	(=>	(and (main_8 x_199 x_99 x_100 x_101 x_102 x_103 x_104 x_106 x_105)
			(minus_0 x_199 x_98 (S_0 Z_0)))
		(main_7 x_98 x_99 x_100 x_101 x_102 x_103 x_104 false x_105))))
(assert (forall ((x_107 Nat_0) (x_108 Nat_0) (x_109 Nat_0) (x_110 Nat_0) (x_111 Nat_0) (x_112 Nat_0) (x_113 Nat_0) (x_114 Bool) (x_115 Bool) (x_200 Nat_0))
	(=>	(and (main_8 x_200 x_108 x_109 x_110 x_111 x_112 x_113 x_115 x_114)
			(add_0 x_200 x_107 (S_0 Z_0)))
		(main_7 x_107 x_108 x_109 x_110 x_111 x_112 x_113 true x_114))))
(assert (forall ((x_116 Nat_0) (x_117 Nat_0) (x_118 Nat_0) (x_119 Nat_0) (x_120 Nat_0) (x_121 Nat_0) (x_122 Nat_0) (x_123 Bool) (x_190 Bool))
	(=>	(and (main_9 x_116 x_117 x_118 x_119 x_120 x_121 x_122 x_190 x_123)
			(= x_120 Z_0)
			(not_0 x_190 true))
		(main_8 x_116 x_117 x_118 x_119 x_120 x_121 x_122 false x_123))))
(assert (forall ((x_116 Nat_0) (x_117 Nat_0) (x_118 Nat_0) (x_119 Nat_0) (x_120 Nat_0) (x_121 Nat_0) (x_122 Nat_0) (x_123 Bool) (x_191 Bool))
	(=>	(and (main_9 x_116 x_117 x_118 x_119 x_120 x_121 x_122 x_191 x_123)
			(diseqNat_0 x_120 Z_0)
			(not_0 x_191 false))
		(main_8 x_116 x_117 x_118 x_119 x_120 x_121 x_122 false x_123))))
(assert (forall ((x_124 Nat_0) (x_125 Nat_0) (x_126 Nat_0) (x_127 Nat_0) (x_128 Nat_0) (x_129 Nat_0) (x_130 Nat_0) (x_131 Bool) (x_132 Bool))
	(=> (main_8 x_124 x_125 x_126 x_127 x_128 x_129 x_130 x_132 x_131)
	    (main_8 x_124 x_125 x_126 x_127 x_128 x_129 x_130 true x_131))))
(assert (forall ((x_133 Nat_0) (x_134 Nat_0) (x_135 Nat_0) (x_136 Nat_0) (x_137 Nat_0) (x_138 Nat_0) (x_139 Nat_0) (x_140 Bool) (x_141 Bool) (x_201 Nat_0))
	(=>	(and (main_10 x_133 x_201 x_135 x_136 x_137 x_138 x_139 x_141 x_140)
			(minus_0 x_201 x_134 (S_0 Z_0)))
		(main_9 x_133 x_134 x_135 x_136 x_137 x_138 x_139 false x_140))))
(assert (forall ((x_142 Nat_0) (x_143 Nat_0) (x_144 Nat_0) (x_145 Nat_0) (x_146 Nat_0) (x_147 Nat_0) (x_148 Nat_0) (x_149 Bool) (x_150 Bool) (x_202 Nat_0))
	(=>	(and (main_10 x_142 x_202 x_144 x_145 x_146 x_147 x_148 x_150 x_149)
			(add_0 x_202 x_143 (S_0 Z_0)))
		(main_9 x_142 x_143 x_144 x_145 x_146 x_147 x_148 true x_149))))
(assert (forall ((x_151 Nat_0) (x_152 Nat_0) (x_153 Nat_0) (x_154 Nat_0) (x_155 Nat_0) (x_156 Nat_0) (x_157 Nat_0) (x_158 Bool) (x_192 Bool))
	(=>	(and (main_11 x_151 x_152 x_153 x_154 x_155 x_156 x_157 x_192 x_158)
			(= x_156 Z_0)
			(not_0 x_192 true))
		(main_10 x_151 x_152 x_153 x_154 x_155 x_156 x_157 false x_158))))
(assert (forall ((x_151 Nat_0) (x_152 Nat_0) (x_153 Nat_0) (x_154 Nat_0) (x_155 Nat_0) (x_156 Nat_0) (x_157 Nat_0) (x_158 Bool) (x_193 Bool))
	(=>	(and (main_11 x_151 x_152 x_153 x_154 x_155 x_156 x_157 x_193 x_158)
			(diseqNat_0 x_156 Z_0)
			(not_0 x_193 false))
		(main_10 x_151 x_152 x_153 x_154 x_155 x_156 x_157 false x_158))))
(assert (forall ((x_159 Nat_0) (x_160 Nat_0) (x_161 Nat_0) (x_162 Nat_0) (x_163 Nat_0) (x_164 Nat_0) (x_165 Nat_0) (x_166 Bool) (x_167 Bool))
	(=> (main_10 x_159 x_160 x_161 x_162 x_163 x_164 x_165 x_167 x_166)
	    (main_10 x_159 x_160 x_161 x_162 x_163 x_164 x_165 true x_166))))
(assert (forall ((x_168 Nat_0) (x_169 Nat_0) (x_170 Nat_0) (x_171 Nat_0) (x_172 Nat_0) (x_173 Nat_0) (x_174 Nat_0) (x_175 Bool) (x_194 Bool))
	(=>	(and (main_12 x_194 x_175)
			(gt_0 x_174 Z_0)
			(not_0 x_194 true))
		(main_11 x_168 x_169 x_170 x_171 x_172 x_173 x_174 false x_175))))
(assert (forall ((x_168 Nat_0) (x_169 Nat_0) (x_170 Nat_0) (x_171 Nat_0) (x_172 Nat_0) (x_173 Nat_0) (x_174 Nat_0) (x_175 Bool) (x_195 Bool))
	(=>	(and (main_12 x_195 x_175)
			(le_0 x_174 Z_0)
			(not_0 x_195 false))
		(main_11 x_168 x_169 x_170 x_171 x_172 x_173 x_174 false x_175))))
(assert (forall ((x_176 Nat_0) (x_177 Nat_0) (x_178 Nat_0) (x_179 Nat_0) (x_180 Nat_0) (x_181 Nat_0) (x_182 Nat_0) (x_183 Bool) (x_196 Bool))
	(=>	(and (main_12 x_196 x_183)
			(gt_0 x_182 Z_0)
			(not_0 x_196 true))
		(main_11 x_176 x_177 x_178 x_179 x_180 x_181 x_182 true x_183))))
(assert (forall ((x_176 Nat_0) (x_177 Nat_0) (x_178 Nat_0) (x_179 Nat_0) (x_180 Nat_0) (x_181 Nat_0) (x_182 Nat_0) (x_183 Bool) (x_197 Bool))
	(=>	(and (main_12 x_197 x_183)
			(le_0 x_182 Z_0)
			(not_0 x_197 false))
		(main_11 x_176 x_177 x_178 x_179 x_180 x_181 x_182 true x_183))))
(assert (forall ((x_184 Bool))
	(=> (= x_184 false)
	    (main_12 false x_184))))
(assert (forall ((x_185 Bool))
	(=> (= x_185 true)
	    (main_12 true x_185))))
(assert (forall ((x_186 Nat_0))
	(=> (main_0 true)
	    false)))
(check-sat)
