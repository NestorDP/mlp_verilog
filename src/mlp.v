module mlp (
    input wire clock,
    input wire reset,
    input wire weight_enable,

    input        [7:0]  address,
    input signed [15:0] weights,
        
    // 50 inputs in Q15 format
    input signed [15:0] input_0,
    input signed [15:0] input_1,
    input signed [15:0] input_2,
    input signed [15:0] input_3,
    input signed [15:0] input_4,
    input signed [15:0] input_5,
    input signed [15:0] input_6,
    input signed [15:0] input_7,
    input signed [15:0] input_8,
    input signed [15:0] input_9,
    input signed [15:0] input_10,
    input signed [15:0] input_11,
    input signed [15:0] input_12,
    input signed [15:0] input_13,
    input signed [15:0] input_14,
    input signed [15:0] input_15,
    input signed [15:0] input_16,
    input signed [15:0] input_17,
    input signed [15:0] input_18,
    input signed [15:0] input_19,
    input signed [15:0] input_20,
    input signed [15:0] input_21,
    input signed [15:0] input_22,
    input signed [15:0] input_23,
    input signed [15:0] input_24,
    input signed [15:0] input_25,
    input signed [15:0] input_26,
    input signed [15:0] input_27,
    input signed [15:0] input_28,
    input signed [15:0] input_29,
    input signed [15:0] input_30,
    input signed [15:0] input_31,
    input signed [15:0] input_32,
    input signed [15:0] input_33,
    input signed [15:0] input_34,
    input signed [15:0] input_35,
    input signed [15:0] input_36,
    input signed [15:0] input_37,
    input signed [15:0] input_38,
    input signed [15:0] input_39,
    input signed [15:0] input_40,
    input signed [15:0] input_41,
    input signed [15:0] input_42,
    input signed [15:0] input_43,
    input signed [15:0] input_44,
    input signed [15:0] input_45,
    input signed [15:0] input_46,
    input signed [15:0] input_47,
    input signed [15:0] input_48,
    input signed [15:0] input_49,

    output signed [22:0] out
);

    wire signed [15:0] WIRE_0;
    wire signed [15:0] WIRE_1;
    wire signed [15:0] WIRE_2;
    wire signed [15:0] WIRE_3;
    wire signed [15:0] WIRE_4;
    wire signed [15:0] WIRE_5;
    wire signed [15:0] WIRE_6;
    wire signed [15:0] WIRE_7;
    wire signed [15:0] WIRE_8;
    wire signed [15:0] WIRE_9;
    wire signed [15:0] WIRE_10;
    wire signed [15:0] WIRE_11;
    wire signed [15:0] WIRE_12;
    wire signed [15:0] WIRE_13;
    wire signed [15:0] WIRE_14;
    wire signed [15:0] WIRE_15;
    wire signed [15:0] WIRE_16;
    wire signed [15:0] WIRE_17;
    wire signed [15:0] WIRE_18;
    wire signed [15:0] WIRE_19;
    wire signed [15:0] WIRE_20;
    wire signed [15:0] WIRE_21;
    wire signed [15:0] WIRE_22;
    wire signed [15:0] WIRE_23;
    wire signed [15:0] WIRE_24;
    wire signed [15:0] WIRE_25;
    wire signed [15:0] WIRE_26;
    wire signed [15:0] WIRE_27;
    wire signed [15:0] WIRE_28;
    wire signed [15:0] WIRE_29;
    wire signed [15:0] WIRE_30;
    wire signed [15:0] WIRE_31;
    wire signed [15:0] WIRE_32;
    wire signed [15:0] WIRE_33;
    wire signed [15:0] WIRE_34;
    wire signed [15:0] WIRE_35;
    wire signed [15:0] WIRE_36;
    wire signed [15:0] WIRE_37;
    wire signed [15:0] WIRE_38;
    wire signed [15:0] WIRE_39;
    wire signed [15:0] WIRE_40;
    wire signed [15:0] WIRE_41;
    wire signed [15:0] WIRE_42;
    wire signed [15:0] WIRE_43;
    wire signed [15:0] WIRE_44;
    wire signed [15:0] WIRE_45;
    wire signed [15:0] WIRE_46;
    wire signed [15:0] WIRE_47;
    wire signed [15:0] WIRE_48;
    wire signed [15:0] WIRE_49;

    assign WIRE_0 = input_0;
    assign WIRE_1 = input_1;
    assign WIRE_2 = input_2;
    assign WIRE_3 = input_3;
    assign WIRE_4 = input_4;
    assign WIRE_5 = input_5;
    assign WIRE_6 = input_6;
    assign WIRE_7 = input_7;
    assign WIRE_8 = input_8;
    assign WIRE_9 = input_9;
    assign WIRE_10 = input_10;
    assign WIRE_11 = input_11;
    assign WIRE_12 = input_12;
    assign WIRE_13 = input_13;
    assign WIRE_14 = input_14;
    assign WIRE_15 = input_15;
    assign WIRE_16 = input_16;
    assign WIRE_17 = input_17;
    assign WIRE_18 = input_18;
    assign WIRE_19 = input_19;
    assign WIRE_20 = input_20;
    assign WIRE_21 = input_21;
    assign WIRE_22 = input_22;
    assign WIRE_23 = input_23;
    assign WIRE_24 = input_24;
    assign WIRE_25 = input_25;
    assign WIRE_26 = input_26;
    assign WIRE_27 = input_27;
    assign WIRE_28 = input_28;
    assign WIRE_29 = input_29;
    assign WIRE_30 = input_30;
    assign WIRE_31 = input_31;
    assign WIRE_32 = input_32;
    assign WIRE_33 = input_33;
    assign WIRE_34 = input_34;
    assign WIRE_35 = input_35;
    assign WIRE_36 = input_36;
    assign WIRE_37 = input_37;
    assign WIRE_38 = input_38;
    assign WIRE_39 = input_39;
    assign WIRE_40 = input_40;
    assign WIRE_41 = input_41;
    assign WIRE_42 = input_42;
    assign WIRE_43 = input_43;
    assign WIRE_44 = input_44;
    assign WIRE_45 = input_45;
    assign WIRE_46 = input_46;
    assign WIRE_47 = input_47;
    assign WIRE_48 = input_48;
    assign WIRE_49 = input_49;


    // Reg neueons weights
    reg signed [15:0] mlp_weight_0;
    reg signed [15:0] mlp_weight_1;
    reg signed [15:0] mlp_weight_2;
    reg signed [15:0] mlp_weight_3;
    reg signed [15:0] mlp_weight_4;
    reg signed [15:0] mlp_weight_5;
    reg signed [15:0] mlp_weight_6;
    reg signed [15:0] mlp_weight_7;
    reg signed [15:0] mlp_weight_8;
    reg signed [15:0] mlp_weight_9;
    reg signed [15:0] mlp_weight_10;
    reg signed [15:0] mlp_weight_11;
    reg signed [15:0] mlp_weight_12;
    reg signed [15:0] mlp_weight_13;
    reg signed [15:0] mlp_weight_14;
    reg signed [15:0] mlp_weight_15;
    reg signed [15:0] mlp_weight_16;
    reg signed [15:0] mlp_weight_17;
    reg signed [15:0] mlp_weight_18;
    reg signed [15:0] mlp_weight_19;
    reg signed [15:0] mlp_weight_20;
    reg signed [15:0] mlp_weight_21;
    reg signed [15:0] mlp_weight_22;
    reg signed [15:0] mlp_weight_23;
    reg signed [15:0] mlp_weight_24;
    reg signed [15:0] mlp_weight_25;
    reg signed [15:0] mlp_weight_26;
    reg signed [15:0] mlp_weight_27;
    reg signed [15:0] mlp_weight_28;
    reg signed [15:0] mlp_weight_29;
    reg signed [15:0] mlp_weight_30;
    reg signed [15:0] mlp_weight_31;
    reg signed [15:0] mlp_weight_32;
    reg signed [15:0] mlp_weight_33;
    reg signed [15:0] mlp_weight_34;
    reg signed [15:0] mlp_weight_35;
    reg signed [15:0] mlp_weight_36;
    reg signed [15:0] mlp_weight_37;
    reg signed [15:0] mlp_weight_38;
    reg signed [15:0] mlp_weight_39;
    reg signed [15:0] mlp_weight_40;
    reg signed [15:0] mlp_weight_41;
    reg signed [15:0] mlp_weight_42;
    reg signed [15:0] mlp_weight_43;
    reg signed [15:0] mlp_weight_44;
    reg signed [15:0] mlp_weight_45;
    reg signed [15:0] mlp_weight_46;
    reg signed [15:0] mlp_weight_47;
    reg signed [15:0] mlp_weight_48;
    reg signed [15:0] mlp_weight_49;

    always @ (*)
	begin: weight_assign
		if(weight_enable == 0) begin	
			case(address)	
                0 : mlp_weight_0 = weights;
                1 : mlp_weight_1 = weights;
                2 : mlp_weight_2 = weights;
                3 : mlp_weight_3 = weights;
                4 : mlp_weight_4 = weights;
                5 : mlp_weight_5 = weights;
                6 : mlp_weight_6 = weights;
                7 : mlp_weight_7 = weights;
                8 : mlp_weight_8 = weights;
                9 : mlp_weight_9 = weights;
                10 : mlp_weight_10 = weights;
                11 : mlp_weight_11 = weights;
                12 : mlp_weight_12 = weights;
                13 : mlp_weight_13 = weights;
                14 : mlp_weight_14 = weights;
                15 : mlp_weight_15 = weights;
                16 : mlp_weight_16 = weights;
                17 : mlp_weight_17 = weights;
                18 : mlp_weight_18 = weights;
                19 : mlp_weight_19 = weights;
                20 : mlp_weight_20 = weights;
                21 : mlp_weight_21 = weights;
                22 : mlp_weight_22 = weights;
                23 : mlp_weight_23 = weights;
                24 : mlp_weight_24 = weights;
                25 : mlp_weight_25 = weights;
                26 : mlp_weight_26 = weights;
                27 : mlp_weight_27 = weights;
                28 : mlp_weight_28 = weights;
                29 : mlp_weight_29 = weights;
                30 : mlp_weight_30 = weights;
                31 : mlp_weight_31 = weights;
                32 : mlp_weight_32 = weights;
                33 : mlp_weight_33 = weights;
                34 : mlp_weight_34 = weights;
                35 : mlp_weight_35 = weights;
                36 : mlp_weight_36 = weights;
                37 : mlp_weight_37 = weights;
                38 : mlp_weight_38 = weights;
                39 : mlp_weight_39 = weights;
                40 : mlp_weight_40 = weights;
                41 : mlp_weight_41 = weights;
                42 : mlp_weight_42 = weights;
                43 : mlp_weight_43 = weights;
                44 : mlp_weight_44 = weights;
                45 : mlp_weight_45 = weights;
                46 : mlp_weight_46 = weights;
                47 : mlp_weight_47 = weights;
                48 : mlp_weight_48 = weights;
                49 : mlp_weight_49 = weights;
                50 : mlp_weight_50 = weights;
                51 : mlp_weight_51 = weights;
                52 : mlp_weight_52 = weights;
                53 : mlp_weight_53 = weights;
                54 : mlp_weight_54 = weights;
                55 : mlp_weight_55 = weights;
                56 : mlp_weight_56 = weights;
                57 : mlp_weight_57 = weights;
                58 : mlp_weight_58 = weights;
                59 : mlp_weight_59 = weights;
                60 : mlp_weight_60 = weights;
                61 : mlp_weight_61 = weights;
                62 : mlp_weight_62 = weights;
                63 : mlp_weight_63 = weights;
                64 : mlp_weight_64 = weights;
                65 : mlp_weight_65 = weights;
                66 : mlp_weight_66 = weights;
                67 : mlp_weight_67 = weights;
                68 : mlp_weight_68 = weights;
                69 : mlp_weight_69 = weights;
                70 : mlp_weight_70 = weights;
                71 : mlp_weight_71 = weights;
                72 : mlp_weight_72 = weights;
                73 : mlp_weight_73 = weights;
                74 : mlp_weight_74 = weights;
                75 : mlp_weight_75 = weights;
                76 : mlp_weight_76 = weights;
                77 : mlp_weight_77 = weights;
                78 : mlp_weight_78 = weights;
                79 : mlp_weight_79 = weights;
                80 : mlp_weight_80 = weights;
                81 : mlp_weight_81 = weights;
                82 : mlp_weight_82 = weights;
                83 : mlp_weight_83 = weights;
                84 : mlp_weight_84 = weights;
                85 : mlp_weight_85 = weights;
                86 : mlp_weight_86 = weights;
                87 : mlp_weight_87 = weights;
                88 : mlp_weight_88 = weights;
                89 : mlp_weight_89 = weights;
                90 : mlp_weight_90 = weights;
                91 : mlp_weight_91 = weights;
                92 : mlp_weight_92 = weights;
                93 : mlp_weight_93 = weights;
                94 : mlp_weight_94 = weights;
                95 : mlp_weight_95 = weights;
                96 : mlp_weight_96 = weights;
                97 : mlp_weight_97 = weights;
                98 : mlp_weight_98 = weights;
                99 : mlp_weight_99 = weights;
                100 : mlp_weight_100 = weights;
                101 : mlp_weight_101 = weights;
                102 : mlp_weight_102 = weights;
                103 : mlp_weight_103 = weights;
                104 : mlp_weight_104 = weights;
                105 : mlp_weight_105 = weights;
                106 : mlp_weight_106 = weights;
                107 : mlp_weight_107 = weights;
                108 : mlp_weight_108 = weights;
                109 : mlp_weight_109 = weights;
                110 : mlp_weight_110 = weights;
                111 : mlp_weight_111 = weights;
                112 : mlp_weight_112 = weights;
                113 : mlp_weight_113 = weights;
                114 : mlp_weight_114 = weights;
                115 : mlp_weight_115 = weights;
                116 : mlp_weight_116 = weights;
                117 : mlp_weight_117 = weights;
                118 : mlp_weight_118 = weights;
                119 : mlp_weight_119 = weights;
                120 : mlp_weight_120 = weights;
                121 : mlp_weight_121 = weights;
                122 : mlp_weight_122 = weights;
                123 : mlp_weight_123 = weights;
                124 : mlp_weight_124 = weights;
                125 : mlp_weight_125 = weights;
                126 : mlp_weight_126 = weights;
                127 : mlp_weight_127 = weights;
                128 : mlp_weight_128 = weights;
                129 : mlp_weight_129 = weights;
                130 : mlp_weight_130 = weights;
                131 : mlp_weight_131 = weights;
                132 : mlp_weight_132 = weights;
                133 : mlp_weight_133 = weights;
                134 : mlp_weight_134 = weights;
                135 : mlp_weight_135 = weights;
                136 : mlp_weight_136 = weights;
                137 : mlp_weight_137 = weights;
                138 : mlp_weight_138 = weights;
                139 : mlp_weight_139 = weights;
                140 : mlp_weight_140 = weights;
                141 : mlp_weight_141 = weights;
                142 : mlp_weight_142 = weights;
                143 : mlp_weight_143 = weights;
                144 : mlp_weight_144 = weights;
                145 : mlp_weight_145 = weights;
                146 : mlp_weight_146 = weights;
                147 : mlp_weight_147 = weights;
                148 : mlp_weight_148 = weights;
                149 : mlp_weight_149 = weights;
                150 : mlp_weight_150 = weights;
                151 : mlp_weight_151 = weights;
                152 : mlp_weight_152 = weights;
                153 : mlp_weight_153 = weights;
                154 : mlp_weight_154 = weights;
                155 : mlp_weight_155 = weights;
                156 : mlp_weight_156 = weights;
                157 : mlp_weight_157 = weights;
                158 : mlp_weight_158 = weights;
                159 : mlp_weight_159 = weights;
                160 : mlp_weight_160 = weights;
                161 : mlp_weight_161 = weights;
                162 : mlp_weight_162 = weights;
                163 : mlp_weight_163 = weights;
                164 : mlp_weight_164 = weights;
                165 : mlp_weight_165 = weights;
                166 : mlp_weight_166 = weights;
                167 : mlp_weight_167 = weights;
                168 : mlp_weight_168 = weights;
                169 : mlp_weight_169 = weights;
                170 : mlp_weight_170 = weights;
                171 : mlp_weight_171 = weights;
                172 : mlp_weight_172 = weights;
                173 : mlp_weight_173 = weights;
                174 : mlp_weight_174 = weights;
                175 : mlp_weight_175 = weights;
                176 : mlp_weight_176 = weights;
                177 : mlp_weight_177 = weights;
                178 : mlp_weight_178 = weights;
                179 : mlp_weight_179 = weights;
                180 : mlp_weight_180 = weights;
                181 : mlp_weight_181 = weights;
                182 : mlp_weight_182 = weights;
                183 : mlp_weight_183 = weights;
                184 : mlp_weight_184 = weights;
                185 : mlp_weight_185 = weights;
                186 : mlp_weight_186 = weights;
                187 : mlp_weight_187 = weights;
                188 : mlp_weight_188 = weights;
                189 : mlp_weight_189 = weights;
                190 : mlp_weight_190 = weights;
                191 : mlp_weight_191 = weights;
                192 : mlp_weight_192 = weights;
                193 : mlp_weight_193 = weights;
                194 : mlp_weight_194 = weights;
                195 : mlp_weight_195 = weights;
                196 : mlp_weight_196 = weights;
                197 : mlp_weight_197 = weights;
                198 : mlp_weight_198 = weights;
                199 : mlp_weight_199 = weights;
                200 : mlp_weight_200 = weights;
                201 : mlp_weight_201 = weights;
                202 : mlp_weight_202 = weights;
                203 : mlp_weight_203 = weights;
                204 : mlp_weight_204 = weights;
                205 : mlp_weight_205 = weights;
                206 : mlp_weight_206 = weights;
                207 : mlp_weight_207 = weights;
                208 : mlp_weight_208 = weights;
                209 : mlp_weight_209 = weights;
                210 : mlp_weight_210 = weights;
                211 : mlp_weight_211 = weights;
                212 : mlp_weight_212 = weights;
                213 : mlp_weight_213 = weights;
                214 : mlp_weight_214 = weights;
                215 : mlp_weight_215 = weights;
                216 : mlp_weight_216 = weights;
                217 : mlp_weight_217 = weights;
                218 : mlp_weight_218 = weights;
                219 : mlp_weight_219 = weights;
                220 : mlp_weight_220 = weights;
                221 : mlp_weight_221 = weights;
                222 : mlp_weight_222 = weights;
                223 : mlp_weight_223 = weights;
                224 : mlp_weight_224 = weights;
                225 : mlp_weight_225 = weights;
                226 : mlp_weight_226 = weights;
                227 : mlp_weight_227 = weights;
                228 : mlp_weight_228 = weights;
                229 : mlp_weight_229 = weights;
                230 : mlp_weight_230 = weights;
                231 : mlp_weight_231 = weights;
                232 : mlp_weight_232 = weights;
                233 : mlp_weight_233 = weights;
                234 : mlp_weight_234 = weights;
                235 : mlp_weight_235 = weights;
                236 : mlp_weight_236 = weights;
                237 : mlp_weight_237 = weights;
                238 : mlp_weight_238 = weights;
                239 : mlp_weight_239 = weights;
                240 : mlp_weight_240 = weights;
                241 : mlp_weight_241 = weights;
                242 : mlp_weight_242 = weights;
                243 : mlp_weight_243 = weights;
                244 : mlp_weight_244 = weights;
                245 : mlp_weight_245 = weights;
                246 : mlp_weight_246 = weights;
                247 : mlp_weight_247 = weights;
                248 : mlp_weight_248 = weights;
                249 : mlp_weight_249 = weights;
                250 : mlp_weight_250 = weights;
                251 : mlp_weight_251 = weights;
                252 : mlp_weight_252 = weights;
                253 : mlp_weight_253 = weights;

				default : weight_254 = weights;
			endcase
		end
	end

    // Instantiate neuron_50in_relu
    neuron_50in_relu U1 (
        .clock(clock),
        .reset(reset),
        .input_0(WIRE_0),
        .input_1(WIRE_1),
        .input_2(WIRE_2),
        .input_3(WIRE_3),
        .input_4(WIRE_4),
        .input_5(WIRE_5),
        .input_6(WIRE_6),
        .input_7(WIRE_7),
        .input_8(WIRE_8),
        .input_9(WIRE_9),
        .input_10(WIRE_10),
        .input_11(WIRE_11),
        .input_12(WIRE_12),
        .input_13(WIRE_13),
        .input_14(WIRE_14),
        .input_15(WIRE_15),
        .input_16(WIRE_16),
        .input_17(WIRE_17),
        .input_18(WIRE_18),
        .input_19(WIRE_19),
        .input_20(WIRE_20),
        .input_21(WIRE_21),
        .input_22(WIRE_22),
        .input_23(WIRE_23),
        .input_24(WIRE_24),
        .input_25(WIRE_25),
        .input_26(WIRE_26),
        .input_27(WIRE_27),
        .input_28(WIRE_28),
        .input_29(WIRE_29),
        .input_30(WIRE_30),
        .input_31(WIRE_31),
        .input_32(WIRE_32),
        .input_33(WIRE_33),
        .input_34(WIRE_34),
        .input_35(WIRE_35),
        .input_36(WIRE_36),
        .input_37(WIRE_37),
        .input_38(WIRE_38),
        .input_39(WIRE_39),
        .input_40(WIRE_40),
        .input_41(WIRE_41),
        .input_42(WIRE_42),
        .input_43(WIRE_43),
        .input_44(WIRE_44),
        .input_45(WIRE_45),
        .input_46(WIRE_46),
        .input_47(WIRE_47),
        .input_48(WIRE_48),
        .input_49(WIRE_49),

        .weight_0(mlp_weight_0),
        .weight_1(mlp_weight_1),
        .weight_2(mlp_weight_2),
        .weight_3(mlp_weight_3),
        .weight_4(mlp_weight_4),
        .weight_5(mlp_weight_5),
        .weight_6(mlp_weight_6),
        .weight_7(mlp_weight_7),
        .weight_8(mlp_weight_8),
        .weight_9(mlp_weight_9),
        .weight_10(mlp_weight_10),
        .weight_11(mlp_weight_11),
        .weight_12(mlp_weight_12),
        .weight_13(mlp_weight_13),
        .weight_14(mlp_weight_14),
        .weight_15(mlp_weight_15),
        .weight_16(mlp_weight_16),
        .weight_17(mlp_weight_17),
        .weight_18(mlp_weight_18),
        .weight_19(mlp_weight_19),
        .weight_20(mlp_weight_20),
        .weight_21(mlp_weight_21),
        .weight_22(mlp_weight_22),
        .weight_23(mlp_weight_23),
        .weight_24(mlp_weight_24),
        .weight_25(mlp_weight_25),
        .weight_26(mlp_weight_26),
        .weight_27(mlp_weight_27),
        .weight_28(mlp_weight_28),
        .weight_29(mlp_weight_29),
        .weight_30(mlp_weight_30),
        .weight_31(mlp_weight_31),
        .weight_32(mlp_weight_32),
        .weight_33(mlp_weight_33),
        .weight_34(mlp_weight_34),
        .weight_35(mlp_weight_35),
        .weight_36(mlp_weight_36),
        .weight_37(mlp_weight_37),
        .weight_38(mlp_weight_38),
        .weight_39(mlp_weight_39),
        .weight_40(mlp_weight_40),
        .weight_41(mlp_weight_41),
        .weight_42(mlp_weight_42),
        .weight_43(mlp_weight_43),
        .weight_44(mlp_weight_44),
        .weight_45(mlp_weight_45),
        .weight_46(mlp_weight_46),
        .weight_47(mlp_weight_47),
        .weight_48(mlp_weight_48),
        .weight_49(mlp_weight_49),
        .bias(mlp_weight_50), 

        .output(out)
    );

endmodule