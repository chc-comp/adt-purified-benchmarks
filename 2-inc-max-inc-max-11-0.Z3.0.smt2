(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_0 ) (S_0 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun unS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_0 (Nat_0) Bool)
(declare-fun isS_0 (Nat_0) Bool)
(assert (forall ((x_109 Nat_0) (x_108 Nat_0))
	(=> (= x_109 (S_0 x_108))
	    (unS_1 x_108 x_109))))
(assert (isZ_0 Z_0))
(assert (forall ((x_110 Nat_0))
	(isS_0 (S_0 x_110))))
(assert (forall ((x_111 Nat_0))
	(diseqNat_0 Z_0 (S_0 x_111))))
(assert (forall ((x_112 Nat_0))
	(diseqNat_0 (S_0 x_112) Z_0)))
(assert (forall ((x_113 Nat_0) (x_114 Nat_0))
	(=> (diseqNat_0 x_113 x_114)
	    (diseqNat_0 (S_0 x_113) (S_0 x_114)))))
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
(declare-datatypes ((MutInt_0 0)) (((mutInt_1 (curInt_0 Nat_0) (retInt_0 Nat_0)))))
(declare-fun diseqMutInt_0 (MutInt_0 MutInt_0) Bool)
(declare-fun curInt_1 (Nat_0 MutInt_0) Bool)
(declare-fun retInt_1 (Nat_0 MutInt_0) Bool)
(declare-fun ismutInt_0 (MutInt_0) Bool)
(assert (forall ((x_117 MutInt_0) (x_115 Nat_0) (x_116 Nat_0))
	(=> (= x_117 (mutInt_1 x_115 x_116))
	    (curInt_1 x_115 x_117))))
(assert (forall ((x_117 MutInt_0) (x_115 Nat_0) (x_116 Nat_0))
	(=> (= x_117 (mutInt_1 x_115 x_116))
	    (retInt_1 x_116 x_117))))
(assert (forall ((x_118 Nat_0) (x_119 Nat_0))
	(ismutInt_0 (mutInt_1 x_118 x_119))))
(assert (forall ((x_120 Nat_0) (x_121 Nat_0) (x_122 Nat_0) (x_123 Nat_0))
	(=> (diseqNat_0 x_120 x_122)
	    (diseqMutInt_0 (mutInt_1 x_120 x_121) (mutInt_1 x_122 x_123)))))
(assert (forall ((x_120 Nat_0) (x_121 Nat_0) (x_122 Nat_0) (x_123 Nat_0))
	(=> (diseqNat_0 x_121 x_123)
	    (diseqMutInt_0 (mutInt_1 x_120 x_121) (mutInt_1 x_122 x_123)))))
(declare-datatypes ((TupMutIntMutInt_0 0)) (((tupMutIntMutInt_1 (atMutIntMutInt_0 MutInt_0) (atMutIntMutInt_1 MutInt_0)))))
(declare-fun diseqTupMutIntMutInt_0 (TupMutIntMutInt_0 TupMutIntMutInt_0) Bool)
(declare-fun atMutIntMutInt_2 (MutInt_0 TupMutIntMutInt_0) Bool)
(declare-fun atMutIntMutInt_3 (MutInt_0 TupMutIntMutInt_0) Bool)
(declare-fun istupMutIntMutInt_0 (TupMutIntMutInt_0) Bool)
(assert (forall ((x_126 TupMutIntMutInt_0) (x_124 MutInt_0) (x_125 MutInt_0))
	(=> (= x_126 (tupMutIntMutInt_1 x_124 x_125))
	    (atMutIntMutInt_2 x_124 x_126))))
(assert (forall ((x_126 TupMutIntMutInt_0) (x_124 MutInt_0) (x_125 MutInt_0))
	(=> (= x_126 (tupMutIntMutInt_1 x_124 x_125))
	    (atMutIntMutInt_3 x_125 x_126))))
(assert (forall ((x_127 MutInt_0) (x_128 MutInt_0))
	(istupMutIntMutInt_0 (tupMutIntMutInt_1 x_127 x_128))))
(assert (forall ((x_129 MutInt_0) (x_130 MutInt_0) (x_131 MutInt_0) (x_132 MutInt_0))
	(=> (diseqMutInt_0 x_129 x_131)
	    (diseqTupMutIntMutInt_0 (tupMutIntMutInt_1 x_129 x_130) (tupMutIntMutInt_1 x_131 x_132)))))
(assert (forall ((x_129 MutInt_0) (x_130 MutInt_0) (x_131 MutInt_0) (x_132 MutInt_0))
	(=> (diseqMutInt_0 x_130 x_132)
	    (diseqTupMutIntMutInt_0 (tupMutIntMutInt_1 x_129 x_130) (tupMutIntMutInt_1 x_131 x_132)))))
(declare-fun incmaxthreerepeat_0 (Nat_0 MutInt_0 MutInt_0 MutInt_0) Bool)
(declare-fun incmaxthreerepeat_1 (Nat_0 MutInt_0 MutInt_0 MutInt_0 Bool) Bool)
(declare-fun maxmid_0 (MutInt_0 MutInt_0 MutInt_0 TupMutIntMutInt_0) Bool)
(declare-fun main_0 (Bool) Bool)
(declare-fun main_1 (Nat_0 Nat_0 Nat_0 Nat_0 Bool Bool) Bool)
(declare-fun main_2 (Nat_0 Nat_0 Nat_0 Nat_0 Bool Bool Bool) Bool)
(declare-fun main_3 (Bool Bool) Bool)
(declare-fun maxmid_1 (MutInt_0 MutInt_0 MutInt_0 Bool TupMutIntMutInt_0) Bool)
(declare-fun maxmid_2 (MutInt_0 MutInt_0 MutInt_0 Bool TupMutIntMutInt_0) Bool)
(declare-fun maxmid_3 (MutInt_0 MutInt_0 MutInt_0 Bool TupMutIntMutInt_0) Bool)
(assert (forall ((x_0 Nat_0) (x_1 MutInt_0) (x_2 MutInt_0) (x_3 MutInt_0))
	(=>	(and (incmaxthreerepeat_1 x_0 x_1 x_2 x_3 true)
			(= x_0 Z_0))
		(incmaxthreerepeat_0 x_0 x_1 x_2 x_3))))
(assert (forall ((x_0 Nat_0) (x_1 MutInt_0) (x_2 MutInt_0) (x_3 MutInt_0))
	(=>	(and (incmaxthreerepeat_1 x_0 x_1 x_2 x_3 false)
			(diseqNat_0 x_0 Z_0))
		(incmaxthreerepeat_0 x_0 x_1 x_2 x_3))))
(assert (forall ((x_4 Nat_0) (x_5 MutInt_0) (x_6 MutInt_0) (x_7 MutInt_0) (x_8 TupMutIntMutInt_0) (x_9 Nat_0) (x_10 Nat_0) (x_11 Nat_0) (x_12 Nat_0) (x_13 Nat_0) (x_14 Nat_0) (x_100 Nat_0) (x_101 Nat_0) (x_102 Nat_0) (x_133 Nat_0) (x_134 Nat_0) (x_135 Nat_0) (x_136 MutInt_0) (x_137 Nat_0) (x_138 MutInt_0) (x_139 Nat_0) (x_140 Nat_0) (x_141 Nat_0) (x_142 Nat_0) (x_143 MutInt_0) (x_144 Nat_0) (x_145 MutInt_0) (x_146 Nat_0))
	(=>	(and (maxmid_0 (mutInt_1 x_133 x_9) (mutInt_1 x_134 x_10) (mutInt_1 x_135 x_11) x_8)
			(incmaxthreerepeat_0 x_100 (mutInt_1 x_9 x_12) (mutInt_1 x_10 x_13) (mutInt_1 x_11 x_14))
			(= x_137 x_101)
			(= x_139 x_102)
			(= x_140 x_14)
			(= x_141 x_12)
			(= x_142 x_13)
			(minus_0 x_100 x_4 (S_0 Z_0))
			(add_0 x_101 x_144 (S_0 Z_0))
			(add_0 x_102 x_146 (S_0 (S_0 Z_0)))
			(curInt_1 x_133 x_5)
			(curInt_1 x_134 x_6)
			(curInt_1 x_135 x_7)
			(atMutIntMutInt_3 x_136 x_8)
			(retInt_1 x_137 x_136)
			(atMutIntMutInt_2 x_138 x_8)
			(retInt_1 x_139 x_138)
			(retInt_1 x_140 x_7)
			(retInt_1 x_141 x_5)
			(retInt_1 x_142 x_6)
			(atMutIntMutInt_3 x_143 x_8)
			(curInt_1 x_144 x_143)
			(atMutIntMutInt_2 x_145 x_8)
			(curInt_1 x_146 x_145))
		(incmaxthreerepeat_1 x_4 x_5 x_6 x_7 false))))
(assert (forall ((x_15 Nat_0) (x_16 MutInt_0) (x_17 MutInt_0) (x_18 MutInt_0) (x_147 Nat_0) (x_148 Nat_0) (x_149 Nat_0) (x_150 Nat_0) (x_151 Nat_0) (x_152 Nat_0))
	(=>	(and (= x_147 x_148)
			(= x_149 x_150)
			(= x_151 x_152)
			(retInt_1 x_147 x_16)
			(curInt_1 x_148 x_16)
			(retInt_1 x_149 x_18)
			(curInt_1 x_150 x_18)
			(retInt_1 x_151 x_17)
			(curInt_1 x_152 x_17))
		(incmaxthreerepeat_1 x_15 x_16 x_17 x_18 true))))
(assert (forall ((x_19 Bool) (x_20 Nat_0) (x_21 Nat_0) (x_22 Nat_0) (x_23 Nat_0) (x_24 Nat_0) (x_25 Nat_0) (x_26 Nat_0) (x_27 Nat_0) (x_28 Nat_0) (x_29 Nat_0) (x_103 Nat_0))
	(=>	(and (incmaxthreerepeat_0 x_20 (mutInt_1 x_21 x_25) (mutInt_1 x_22 x_27) (mutInt_1 x_23 x_29))
			(= x_28 x_29)
			(= x_26 x_27)
			(= x_24 x_25)
			(main_1 x_20 x_24 x_26 x_28 true x_19)
			(ge_0 x_103 x_20)
			(minus_0 x_103 x_24 x_26))
		(main_0 x_19))))
(assert (forall ((x_19 Bool) (x_20 Nat_0) (x_21 Nat_0) (x_22 Nat_0) (x_23 Nat_0) (x_24 Nat_0) (x_25 Nat_0) (x_26 Nat_0) (x_27 Nat_0) (x_28 Nat_0) (x_29 Nat_0) (x_104 Nat_0))
	(=>	(and (incmaxthreerepeat_0 x_20 (mutInt_1 x_21 x_25) (mutInt_1 x_22 x_27) (mutInt_1 x_23 x_29))
			(= x_28 x_29)
			(= x_26 x_27)
			(= x_24 x_25)
			(main_1 x_20 x_24 x_26 x_28 false x_19)
			(lt_0 x_104 x_20)
			(minus_0 x_104 x_24 x_26))
		(main_0 x_19))))
(assert (forall ((x_30 Nat_0) (x_31 Nat_0) (x_32 Nat_0) (x_33 Nat_0) (x_34 Bool) (x_105 Nat_0))
	(=>	(and (main_2 x_30 x_31 x_32 x_33 false true x_34)
			(ge_0 x_105 x_30)
			(minus_0 x_105 x_32 x_31))
		(main_1 x_30 x_31 x_32 x_33 false x_34))))
(assert (forall ((x_30 Nat_0) (x_31 Nat_0) (x_32 Nat_0) (x_33 Nat_0) (x_34 Bool) (x_106 Nat_0))
	(=>	(and (main_2 x_30 x_31 x_32 x_33 false false x_34)
			(lt_0 x_106 x_30)
			(minus_0 x_106 x_32 x_31))
		(main_1 x_30 x_31 x_32 x_33 false x_34))))
(assert (forall ((x_35 Nat_0) (x_36 Nat_0) (x_37 Nat_0) (x_38 Nat_0) (x_39 Bool))
	(=> (main_3 false x_39)
	    (main_1 x_35 x_36 x_37 x_38 true x_39))))
(assert (forall ((x_40 Nat_0) (x_41 Nat_0) (x_42 Nat_0) (x_43 Nat_0) (x_44 Bool) (x_45 Bool))
	(=> (main_3 true x_45)
	    (main_2 x_40 x_41 x_42 x_43 x_44 false x_45))))
(assert (forall ((x_46 Nat_0) (x_47 Nat_0) (x_48 Nat_0) (x_49 Nat_0) (x_50 Bool) (x_51 Bool))
	(=> (main_3 false x_51)
	    (main_2 x_46 x_47 x_48 x_49 x_50 true x_51))))
(assert (forall ((x_52 Bool))
	(=> (= x_52 false)
	    (main_3 false x_52))))
(assert (forall ((x_53 Bool))
	(=> (= x_53 true)
	    (main_3 true x_53))))
(assert (forall ((x_54 MutInt_0) (x_55 MutInt_0) (x_56 MutInt_0) (x_57 TupMutIntMutInt_0) (x_153 Nat_0) (x_154 Nat_0))
	(=>	(and (maxmid_1 x_54 x_55 x_56 true x_57)
			(gt_0 x_153 x_154)
			(curInt_1 x_153 x_54)
			(curInt_1 x_154 x_55))
		(maxmid_0 x_54 x_55 x_56 x_57))))
(assert (forall ((x_54 MutInt_0) (x_55 MutInt_0) (x_56 MutInt_0) (x_57 TupMutIntMutInt_0) (x_155 Nat_0) (x_156 Nat_0))
	(=>	(and (maxmid_1 x_54 x_55 x_56 false x_57)
			(le_0 x_155 x_156)
			(curInt_1 x_155 x_54)
			(curInt_1 x_156 x_55))
		(maxmid_0 x_54 x_55 x_56 x_57))))
(assert (forall ((x_58 MutInt_0) (x_59 MutInt_0) (x_60 MutInt_0) (x_61 TupMutIntMutInt_0) (x_157 Nat_0) (x_158 Nat_0))
	(=>	(and (maxmid_2 x_58 x_59 x_60 true x_61)
			(gt_0 x_157 x_158)
			(curInt_1 x_157 x_59)
			(curInt_1 x_158 x_60))
		(maxmid_1 x_58 x_59 x_60 false x_61))))
(assert (forall ((x_58 MutInt_0) (x_59 MutInt_0) (x_60 MutInt_0) (x_61 TupMutIntMutInt_0) (x_159 Nat_0) (x_160 Nat_0))
	(=>	(and (maxmid_2 x_58 x_59 x_60 false x_61)
			(le_0 x_159 x_160)
			(curInt_1 x_159 x_59)
			(curInt_1 x_160 x_60))
		(maxmid_1 x_58 x_59 x_60 false x_61))))
(assert (forall ((x_62 MutInt_0) (x_63 MutInt_0) (x_64 MutInt_0) (x_65 TupMutIntMutInt_0) (x_66 MutInt_0) (x_67 MutInt_0) (x_68 MutInt_0) (x_69 MutInt_0) (x_161 Nat_0) (x_162 Nat_0))
	(=>	(and (= x_69 x_62)
			(= x_67 x_63)
			(= x_68 x_69)
			(= x_66 x_67)
			(maxmid_2 x_66 x_68 x_64 true x_65)
			(gt_0 x_161 x_162)
			(curInt_1 x_161 x_68)
			(curInt_1 x_162 x_64))
		(maxmid_1 x_62 x_63 x_64 true x_65))))
(assert (forall ((x_62 MutInt_0) (x_63 MutInt_0) (x_64 MutInt_0) (x_65 TupMutIntMutInt_0) (x_66 MutInt_0) (x_67 MutInt_0) (x_68 MutInt_0) (x_69 MutInt_0) (x_163 Nat_0) (x_164 Nat_0))
	(=>	(and (= x_69 x_62)
			(= x_67 x_63)
			(= x_68 x_69)
			(= x_66 x_67)
			(maxmid_2 x_66 x_68 x_64 false x_65)
			(le_0 x_163 x_164)
			(curInt_1 x_163 x_68)
			(curInt_1 x_164 x_64))
		(maxmid_1 x_62 x_63 x_64 true x_65))))
(assert (forall ((x_70 MutInt_0) (x_71 MutInt_0) (x_72 MutInt_0) (x_73 TupMutIntMutInt_0) (x_165 Nat_0) (x_166 Nat_0))
	(=>	(and (maxmid_3 x_70 x_71 x_72 true x_73)
			(gt_0 x_165 x_166)
			(curInt_1 x_165 x_70)
			(curInt_1 x_166 x_71))
		(maxmid_2 x_70 x_71 x_72 false x_73))))
(assert (forall ((x_70 MutInt_0) (x_71 MutInt_0) (x_72 MutInt_0) (x_73 TupMutIntMutInt_0) (x_167 Nat_0) (x_168 Nat_0))
	(=>	(and (maxmid_3 x_70 x_71 x_72 false x_73)
			(le_0 x_167 x_168)
			(curInt_1 x_167 x_70)
			(curInt_1 x_168 x_71))
		(maxmid_2 x_70 x_71 x_72 false x_73))))
(assert (forall ((x_74 MutInt_0) (x_75 MutInt_0) (x_76 MutInt_0) (x_77 TupMutIntMutInt_0) (x_78 MutInt_0) (x_79 MutInt_0) (x_80 MutInt_0) (x_81 MutInt_0) (x_169 Nat_0) (x_170 Nat_0))
	(=>	(and (= x_81 x_75)
			(= x_79 x_76)
			(= x_80 x_81)
			(= x_78 x_79)
			(maxmid_3 x_74 x_78 x_80 true x_77)
			(gt_0 x_169 x_170)
			(curInt_1 x_169 x_74)
			(curInt_1 x_170 x_78))
		(maxmid_2 x_74 x_75 x_76 true x_77))))
(assert (forall ((x_74 MutInt_0) (x_75 MutInt_0) (x_76 MutInt_0) (x_77 TupMutIntMutInt_0) (x_78 MutInt_0) (x_79 MutInt_0) (x_80 MutInt_0) (x_81 MutInt_0) (x_171 Nat_0) (x_172 Nat_0))
	(=>	(and (= x_81 x_75)
			(= x_79 x_76)
			(= x_80 x_81)
			(= x_78 x_79)
			(maxmid_3 x_74 x_78 x_80 false x_77)
			(le_0 x_171 x_172)
			(curInt_1 x_171 x_74)
			(curInt_1 x_172 x_78))
		(maxmid_2 x_74 x_75 x_76 true x_77))))
(assert (forall ((x_82 MutInt_0) (x_83 MutInt_0) (x_84 MutInt_0) (x_85 TupMutIntMutInt_0) (x_86 Nat_0) (x_87 Nat_0) (x_173 Nat_0) (x_174 Nat_0) (x_175 Nat_0) (x_176 Nat_0) (x_177 Nat_0) (x_178 Nat_0))
	(=>	(and (= x_173 x_87)
			(= x_174 x_175)
			(= x_176 x_86)
			(= x_85 (tupMutIntMutInt_1 (mutInt_1 x_177 x_86) (mutInt_1 x_178 x_87)))
			(retInt_1 x_173 x_83)
			(retInt_1 x_174 x_82)
			(curInt_1 x_175 x_82)
			(retInt_1 x_176 x_84)
			(curInt_1 x_177 x_84)
			(curInt_1 x_178 x_83))
		(maxmid_3 x_82 x_83 x_84 false x_85))))
(assert (forall ((x_88 MutInt_0) (x_89 MutInt_0) (x_90 MutInt_0) (x_91 TupMutIntMutInt_0) (x_92 MutInt_0) (x_93 MutInt_0) (x_94 MutInt_0) (x_95 MutInt_0) (x_96 Nat_0) (x_97 Nat_0) (x_179 Nat_0) (x_180 Nat_0) (x_181 Nat_0) (x_182 Nat_0) (x_183 Nat_0) (x_184 Nat_0))
	(=>	(and (= x_95 x_88)
			(= x_93 x_89)
			(= x_94 x_95)
			(= x_92 x_93)
			(= x_179 x_96)
			(= x_180 x_97)
			(= x_181 x_182)
			(= x_91 (tupMutIntMutInt_1 (mutInt_1 x_183 x_96) (mutInt_1 x_184 x_97)))
			(retInt_1 x_179 x_90)
			(retInt_1 x_180 x_94)
			(retInt_1 x_181 x_92)
			(curInt_1 x_182 x_92)
			(curInt_1 x_183 x_90)
			(curInt_1 x_184 x_94))
		(maxmid_3 x_88 x_89 x_90 true x_91))))
(assert (forall ((x_98 Nat_0))
	(=> (main_0 true)
	    false)))
(check-sat)
