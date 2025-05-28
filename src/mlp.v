module mlp (
    input wire clock,
    input wire reset,
    input wire weight_enable,

    input        [9:0]  address,
    input signed [22:0] weight,
        
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
    
    output signed [22:0] out_1,
    output signed [22:0] out_2,
    output signed [22:0] out_3,
    output signed [22:0] out_4,
    output signed [22:0] out_5,

    output signed [22:0] out_1_sig,
    output signed [45:0] out_2_sig,
    output signed [45:0] out_3_sig,
    output signed [45:0] out_4_sig,
    output signed [45:0] out_5_sig,

    output signed [15:0] out

);

    wire signed [15:0] INPUT_WIRE_0;
    wire signed [15:0] INPUT_WIRE_1;
    wire signed [15:0] INPUT_WIRE_2;
    wire signed [15:0] INPUT_WIRE_3;
    wire signed [15:0] INPUT_WIRE_4;
    wire signed [15:0] INPUT_WIRE_5;
    wire signed [15:0] INPUT_WIRE_6;
    wire signed [15:0] INPUT_WIRE_7;
    wire signed [15:0] INPUT_WIRE_8;
    wire signed [15:0] INPUT_WIRE_9;
    wire signed [15:0] INPUT_WIRE_10;
    wire signed [15:0] INPUT_WIRE_11;
    wire signed [15:0] INPUT_WIRE_12;
    wire signed [15:0] INPUT_WIRE_13;
    wire signed [15:0] INPUT_WIRE_14;
    wire signed [15:0] INPUT_WIRE_15;
    wire signed [15:0] INPUT_WIRE_16;
    wire signed [15:0] INPUT_WIRE_17;
    wire signed [15:0] INPUT_WIRE_18;
    wire signed [15:0] INPUT_WIRE_19;
    wire signed [15:0] INPUT_WIRE_20;
    wire signed [15:0] INPUT_WIRE_21;
    wire signed [15:0] INPUT_WIRE_22;
    wire signed [15:0] INPUT_WIRE_23;
    wire signed [15:0] INPUT_WIRE_24;
    wire signed [15:0] INPUT_WIRE_25;
    wire signed [15:0] INPUT_WIRE_26;
    wire signed [15:0] INPUT_WIRE_27;
    wire signed [15:0] INPUT_WIRE_28;
    wire signed [15:0] INPUT_WIRE_29;
    wire signed [15:0] INPUT_WIRE_30;
    wire signed [15:0] INPUT_WIRE_31;
    wire signed [15:0] INPUT_WIRE_32;
    wire signed [15:0] INPUT_WIRE_33;
    wire signed [15:0] INPUT_WIRE_34;
    wire signed [15:0] INPUT_WIRE_35;
    wire signed [15:0] INPUT_WIRE_36;
    wire signed [15:0] INPUT_WIRE_37;
    wire signed [15:0] INPUT_WIRE_38;
    wire signed [15:0] INPUT_WIRE_39;
    wire signed [15:0] INPUT_WIRE_40;
    wire signed [15:0] INPUT_WIRE_41;
    wire signed [15:0] INPUT_WIRE_42;
    wire signed [15:0] INPUT_WIRE_43;
    wire signed [15:0] INPUT_WIRE_44;
    wire signed [15:0] INPUT_WIRE_45;
    wire signed [15:0] INPUT_WIRE_46;
    wire signed [15:0] INPUT_WIRE_47;
    wire signed [15:0] INPUT_WIRE_48;
    wire signed [15:0] INPUT_WIRE_49;

    wire signed [22:0] HIDDEN_WIRE_0;
    wire signed [22:0] HIDDEN_WIRE_1;
    wire signed [22:0] HIDDEN_WIRE_2;
    wire signed [22:0] HIDDEN_WIRE_3;
    wire signed [22:0] HIDDEN_WIRE_4;

    assign INPUT_WIRE_0 = input_0;
    assign INPUT_WIRE_1 = input_1;
    assign INPUT_WIRE_2 = input_2;
    assign INPUT_WIRE_3 = input_3;
    assign INPUT_WIRE_4 = input_4;
    assign INPUT_WIRE_5 = input_5;
    assign INPUT_WIRE_6 = input_6;
    assign INPUT_WIRE_7 = input_7;
    assign INPUT_WIRE_8 = input_8;
    assign INPUT_WIRE_9 = input_9;
    assign INPUT_WIRE_10 = input_10;
    assign INPUT_WIRE_11 = input_11;
    assign INPUT_WIRE_12 = input_12;
    assign INPUT_WIRE_13 = input_13;
    assign INPUT_WIRE_14 = input_14;
    assign INPUT_WIRE_15 = input_15;
    assign INPUT_WIRE_16 = input_16;
    assign INPUT_WIRE_17 = input_17;
    assign INPUT_WIRE_18 = input_18;
    assign INPUT_WIRE_19 = input_19;
    assign INPUT_WIRE_20 = input_20;
    assign INPUT_WIRE_21 = input_21;
    assign INPUT_WIRE_22 = input_22;
    assign INPUT_WIRE_23 = input_23;
    assign INPUT_WIRE_24 = input_24;
    assign INPUT_WIRE_25 = input_25;
    assign INPUT_WIRE_26 = input_26;
    assign INPUT_WIRE_27 = input_27;
    assign INPUT_WIRE_28 = input_28;
    assign INPUT_WIRE_29 = input_29;
    assign INPUT_WIRE_30 = input_30;
    assign INPUT_WIRE_31 = input_31;
    assign INPUT_WIRE_32 = input_32;
    assign INPUT_WIRE_33 = input_33;
    assign INPUT_WIRE_34 = input_34;
    assign INPUT_WIRE_35 = input_35;
    assign INPUT_WIRE_36 = input_36;
    assign INPUT_WIRE_37 = input_37;
    assign INPUT_WIRE_38 = input_38;
    assign INPUT_WIRE_39 = input_39;
    assign INPUT_WIRE_40 = input_40;
    assign INPUT_WIRE_41 = input_41;
    assign INPUT_WIRE_42 = input_42;
    assign INPUT_WIRE_43 = input_43;
    assign INPUT_WIRE_44 = input_44;
    assign INPUT_WIRE_45 = input_45;
    assign INPUT_WIRE_46 = input_46;
    assign INPUT_WIRE_47 = input_47;
    assign INPUT_WIRE_48 = input_48;
    assign INPUT_WIRE_49 = input_49;


    // Reg neueons weight
    reg signed [22:0] mlp_weight_0;
    reg signed [22:0] mlp_weight_1;
    reg signed [22:0] mlp_weight_2;
    reg signed [22:0] mlp_weight_3;
    reg signed [22:0] mlp_weight_4;
    reg signed [22:0] mlp_weight_5;
    reg signed [22:0] mlp_weight_6;
    reg signed [22:0] mlp_weight_7;
    reg signed [22:0] mlp_weight_8;
    reg signed [22:0] mlp_weight_9;
    reg signed [22:0] mlp_weight_10;
    reg signed [22:0] mlp_weight_11;
    reg signed [22:0] mlp_weight_12;
    reg signed [22:0] mlp_weight_13;
    reg signed [22:0] mlp_weight_14;
    reg signed [22:0] mlp_weight_15;
    reg signed [22:0] mlp_weight_16;
    reg signed [22:0] mlp_weight_17;
    reg signed [22:0] mlp_weight_18;
    reg signed [22:0] mlp_weight_19;
    reg signed [22:0] mlp_weight_20;
    reg signed [22:0] mlp_weight_21;
    reg signed [22:0] mlp_weight_22;
    reg signed [22:0] mlp_weight_23;
    reg signed [22:0] mlp_weight_24;
    reg signed [22:0] mlp_weight_25;
    reg signed [22:0] mlp_weight_26;
    reg signed [22:0] mlp_weight_27;
    reg signed [22:0] mlp_weight_28;
    reg signed [22:0] mlp_weight_29;
    reg signed [22:0] mlp_weight_30;
    reg signed [22:0] mlp_weight_31;
    reg signed [22:0] mlp_weight_32;
    reg signed [22:0] mlp_weight_33;
    reg signed [22:0] mlp_weight_34;
    reg signed [22:0] mlp_weight_35;
    reg signed [22:0] mlp_weight_36;
    reg signed [22:0] mlp_weight_37;
    reg signed [22:0] mlp_weight_38;
    reg signed [22:0] mlp_weight_39;
    reg signed [22:0] mlp_weight_40;
    reg signed [22:0] mlp_weight_41;
    reg signed [22:0] mlp_weight_42;
    reg signed [22:0] mlp_weight_43;
    reg signed [22:0] mlp_weight_44;
    reg signed [22:0] mlp_weight_45;
    reg signed [22:0] mlp_weight_46;
    reg signed [22:0] mlp_weight_47;
    reg signed [22:0] mlp_weight_48;
    reg signed [22:0] mlp_weight_49;
    reg signed [22:0] mlp_weight_50;
    reg signed [22:0] mlp_weight_51;
    reg signed [22:0] mlp_weight_52;
    reg signed [22:0] mlp_weight_53;
    reg signed [22:0] mlp_weight_54;
    reg signed [22:0] mlp_weight_55;
    reg signed [22:0] mlp_weight_56;
    reg signed [22:0] mlp_weight_57;
    reg signed [22:0] mlp_weight_58;
    reg signed [22:0] mlp_weight_59;
    reg signed [22:0] mlp_weight_60;
    reg signed [22:0] mlp_weight_61;
    reg signed [22:0] mlp_weight_62;
    reg signed [22:0] mlp_weight_63;
    reg signed [22:0] mlp_weight_64;
    reg signed [22:0] mlp_weight_65;
    reg signed [22:0] mlp_weight_66;
    reg signed [22:0] mlp_weight_67;
    reg signed [22:0] mlp_weight_68;
    reg signed [22:0] mlp_weight_69;
    reg signed [22:0] mlp_weight_70;
    reg signed [22:0] mlp_weight_71;
    reg signed [22:0] mlp_weight_72;
    reg signed [22:0] mlp_weight_73;
    reg signed [22:0] mlp_weight_74;
    reg signed [22:0] mlp_weight_75;
    reg signed [22:0] mlp_weight_76;
    reg signed [22:0] mlp_weight_77;
    reg signed [22:0] mlp_weight_78;
    reg signed [22:0] mlp_weight_79;
    reg signed [22:0] mlp_weight_80;
    reg signed [22:0] mlp_weight_81;
    reg signed [22:0] mlp_weight_82;
    reg signed [22:0] mlp_weight_83;
    reg signed [22:0] mlp_weight_84;
    reg signed [22:0] mlp_weight_85;
    reg signed [22:0] mlp_weight_86;
    reg signed [22:0] mlp_weight_87;
    reg signed [22:0] mlp_weight_88;
    reg signed [22:0] mlp_weight_89;
    reg signed [22:0] mlp_weight_90;
    reg signed [22:0] mlp_weight_91;
    reg signed [22:0] mlp_weight_92;
    reg signed [22:0] mlp_weight_93;
    reg signed [22:0] mlp_weight_94;
    reg signed [22:0] mlp_weight_95;
    reg signed [22:0] mlp_weight_96;
    reg signed [22:0] mlp_weight_97;
    reg signed [22:0] mlp_weight_98;
    reg signed [22:0] mlp_weight_99;
    reg signed [22:0] mlp_weight_100;
    reg signed [22:0] mlp_weight_101;
    reg signed [22:0] mlp_weight_102;
    reg signed [22:0] mlp_weight_103;
    reg signed [22:0] mlp_weight_104;
    reg signed [22:0] mlp_weight_105;
    reg signed [22:0] mlp_weight_106;
    reg signed [22:0] mlp_weight_107;
    reg signed [22:0] mlp_weight_108;
    reg signed [22:0] mlp_weight_109;
    reg signed [22:0] mlp_weight_110;
    reg signed [22:0] mlp_weight_111;
    reg signed [22:0] mlp_weight_112;
    reg signed [22:0] mlp_weight_113;
    reg signed [22:0] mlp_weight_114;
    reg signed [22:0] mlp_weight_115;
    reg signed [22:0] mlp_weight_116;
    reg signed [22:0] mlp_weight_117;
    reg signed [22:0] mlp_weight_118;
    reg signed [22:0] mlp_weight_119;
    reg signed [22:0] mlp_weight_120;
    reg signed [22:0] mlp_weight_121;
    reg signed [22:0] mlp_weight_122;
    reg signed [22:0] mlp_weight_123;
    reg signed [22:0] mlp_weight_124;
    reg signed [22:0] mlp_weight_125;
    reg signed [22:0] mlp_weight_126;
    reg signed [22:0] mlp_weight_127;
    reg signed [22:0] mlp_weight_128;
    reg signed [22:0] mlp_weight_129;
    reg signed [22:0] mlp_weight_130;
    reg signed [22:0] mlp_weight_131;
    reg signed [22:0] mlp_weight_132;
    reg signed [22:0] mlp_weight_133;
    reg signed [22:0] mlp_weight_134;
    reg signed [22:0] mlp_weight_135;
    reg signed [22:0] mlp_weight_136;
    reg signed [22:0] mlp_weight_137;
    reg signed [22:0] mlp_weight_138;
    reg signed [22:0] mlp_weight_139;
    reg signed [22:0] mlp_weight_140;
    reg signed [22:0] mlp_weight_141;
    reg signed [22:0] mlp_weight_142;
    reg signed [22:0] mlp_weight_143;
    reg signed [22:0] mlp_weight_144;
    reg signed [22:0] mlp_weight_145;
    reg signed [22:0] mlp_weight_146;
    reg signed [22:0] mlp_weight_147;
    reg signed [22:0] mlp_weight_148;
    reg signed [22:0] mlp_weight_149;
    reg signed [22:0] mlp_weight_150;
    reg signed [22:0] mlp_weight_151;
    reg signed [22:0] mlp_weight_152;
    reg signed [22:0] mlp_weight_153;
    reg signed [22:0] mlp_weight_154;
    reg signed [22:0] mlp_weight_155;
    reg signed [22:0] mlp_weight_156;
    reg signed [22:0] mlp_weight_157;
    reg signed [22:0] mlp_weight_158;
    reg signed [22:0] mlp_weight_159;
    reg signed [22:0] mlp_weight_160;
    reg signed [22:0] mlp_weight_161;
    reg signed [22:0] mlp_weight_162;
    reg signed [22:0] mlp_weight_163;
    reg signed [22:0] mlp_weight_164;
    reg signed [22:0] mlp_weight_165;
    reg signed [22:0] mlp_weight_166;
    reg signed [22:0] mlp_weight_167;
    reg signed [22:0] mlp_weight_168;
    reg signed [22:0] mlp_weight_169;
    reg signed [22:0] mlp_weight_170;
    reg signed [22:0] mlp_weight_171;
    reg signed [22:0] mlp_weight_172;
    reg signed [22:0] mlp_weight_173;
    reg signed [22:0] mlp_weight_174;
    reg signed [22:0] mlp_weight_175;
    reg signed [22:0] mlp_weight_176;
    reg signed [22:0] mlp_weight_177;
    reg signed [22:0] mlp_weight_178;
    reg signed [22:0] mlp_weight_179;
    reg signed [22:0] mlp_weight_180;
    reg signed [22:0] mlp_weight_181;
    reg signed [22:0] mlp_weight_182;
    reg signed [22:0] mlp_weight_183;
    reg signed [22:0] mlp_weight_184;
    reg signed [22:0] mlp_weight_185;
    reg signed [22:0] mlp_weight_186;
    reg signed [22:0] mlp_weight_187;
    reg signed [22:0] mlp_weight_188;
    reg signed [22:0] mlp_weight_189;
    reg signed [22:0] mlp_weight_190;
    reg signed [22:0] mlp_weight_191;
    reg signed [22:0] mlp_weight_192;
    reg signed [22:0] mlp_weight_193;
    reg signed [22:0] mlp_weight_194;
    reg signed [22:0] mlp_weight_195;
    reg signed [22:0] mlp_weight_196;
    reg signed [22:0] mlp_weight_197;
    reg signed [22:0] mlp_weight_198;
    reg signed [22:0] mlp_weight_199;
    reg signed [22:0] mlp_weight_200;
    reg signed [22:0] mlp_weight_201;
    reg signed [22:0] mlp_weight_202;
    reg signed [22:0] mlp_weight_203;
    reg signed [22:0] mlp_weight_204;
    reg signed [22:0] mlp_weight_205;
    reg signed [22:0] mlp_weight_206;
    reg signed [22:0] mlp_weight_207;
    reg signed [22:0] mlp_weight_208;
    reg signed [22:0] mlp_weight_209;
    reg signed [22:0] mlp_weight_210;
    reg signed [22:0] mlp_weight_211;
    reg signed [22:0] mlp_weight_212;
    reg signed [22:0] mlp_weight_213;
    reg signed [22:0] mlp_weight_214;
    reg signed [22:0] mlp_weight_215;
    reg signed [22:0] mlp_weight_216;
    reg signed [22:0] mlp_weight_217;
    reg signed [22:0] mlp_weight_218;
    reg signed [22:0] mlp_weight_219;
    reg signed [22:0] mlp_weight_220;
    reg signed [22:0] mlp_weight_221;
    reg signed [22:0] mlp_weight_222;
    reg signed [22:0] mlp_weight_223;
    reg signed [22:0] mlp_weight_224;
    reg signed [22:0] mlp_weight_225;
    reg signed [22:0] mlp_weight_226;
    reg signed [22:0] mlp_weight_227;
    reg signed [22:0] mlp_weight_228;
    reg signed [22:0] mlp_weight_229;
    reg signed [22:0] mlp_weight_230;
    reg signed [22:0] mlp_weight_231;
    reg signed [22:0] mlp_weight_232;
    reg signed [22:0] mlp_weight_233;
    reg signed [22:0] mlp_weight_234;
    reg signed [22:0] mlp_weight_235;
    reg signed [22:0] mlp_weight_236;
    reg signed [22:0] mlp_weight_237;
    reg signed [22:0] mlp_weight_238;
    reg signed [22:0] mlp_weight_239;
    reg signed [22:0] mlp_weight_240;
    reg signed [22:0] mlp_weight_241;
    reg signed [22:0] mlp_weight_242;
    reg signed [22:0] mlp_weight_243;
    reg signed [22:0] mlp_weight_244;
    reg signed [22:0] mlp_weight_245;
    reg signed [22:0] mlp_weight_246;
    reg signed [22:0] mlp_weight_247;
    reg signed [22:0] mlp_weight_248;
    reg signed [22:0] mlp_weight_249;
    reg signed [22:0] mlp_weight_250;
    reg signed [22:0] mlp_weight_251;
    reg signed [22:0] mlp_weight_252;
    reg signed [22:0] mlp_weight_253;
    reg signed [22:0] mlp_weight_254;
    reg signed [22:0] mlp_weight_255;
    reg signed [22:0] mlp_weight_256;
    reg signed [22:0] mlp_weight_257;
    reg signed [22:0] mlp_weight_258;
    reg signed [22:0] mlp_weight_259;
    reg signed [22:0] mlp_weight_260;

    reg signed [0:15] saida_peso;
    always @ (negedge weight_enable)
	begin: weight_assign
		if(weight_enable == 0) begin	
			case(address)	
                0 : mlp_weight_0 = weight;
                1 : mlp_weight_1 = weight;
                2 : mlp_weight_2 = weight;
                3 : mlp_weight_3 = weight;
                4 : mlp_weight_4 = weight;
                5 : mlp_weight_5 = weight;
                6 : mlp_weight_6 = weight;
                7 : mlp_weight_7 = weight;
                8 : mlp_weight_8 = weight;
                9 : mlp_weight_9 = weight;
                10 : mlp_weight_10 = weight;
                11 : mlp_weight_11 = weight;
                12 : mlp_weight_12 = weight;
                13 : mlp_weight_13 = weight;
                14 : mlp_weight_14 = weight;
                15 : mlp_weight_15 = weight;
                16 : mlp_weight_16 = weight;
                17 : mlp_weight_17 = weight;
                18 : mlp_weight_18 = weight;
                19 : mlp_weight_19 = weight;
                20 : mlp_weight_20 = weight;
                21 : mlp_weight_21 = weight;
                22 : mlp_weight_22 = weight;
                23 : mlp_weight_23 = weight;
                24 : mlp_weight_24 = weight;
                25 : mlp_weight_25 = weight;
                26 : mlp_weight_26 = weight;
                27 : mlp_weight_27 = weight;
                28 : mlp_weight_28 = weight;
                29 : mlp_weight_29 = weight;
                30 : mlp_weight_30 = weight;
                31 : mlp_weight_31 = weight;
                32 : mlp_weight_32 = weight;
                33 : mlp_weight_33 = weight;
                34 : mlp_weight_34 = weight;
                35 : mlp_weight_35 = weight;
                36 : mlp_weight_36 = weight;
                37 : mlp_weight_37 = weight;
                38 : mlp_weight_38 = weight;
                39 : mlp_weight_39 = weight;
                40 : mlp_weight_40 = weight;
                41 : mlp_weight_41 = weight;
                42 : mlp_weight_42 = weight;
                43 : mlp_weight_43 = weight;
                44 : mlp_weight_44 = weight;
                45 : mlp_weight_45 = weight;
                46 : mlp_weight_46 = weight;
                47 : mlp_weight_47 = weight;
                48 : mlp_weight_48 = weight;
                49 : mlp_weight_49 = weight;
                50 : mlp_weight_50 = weight;
                51 : mlp_weight_51 = weight;
                52 : mlp_weight_52 = weight;
                53 : mlp_weight_53 = weight;
                54 : mlp_weight_54 = weight;
                55 : mlp_weight_55 = weight;
                56 : mlp_weight_56 = weight;
                57 : mlp_weight_57 = weight;
                58 : mlp_weight_58 = weight;
                59 : mlp_weight_59 = weight;
                60 : mlp_weight_60 = weight;
                61 : mlp_weight_61 = weight;
                62 : mlp_weight_62 = weight;
                63 : mlp_weight_63 = weight;
                64 : mlp_weight_64 = weight;
                65 : mlp_weight_65 = weight;
                66 : mlp_weight_66 = weight;
                67 : mlp_weight_67 = weight;
                68 : mlp_weight_68 = weight;
                69 : mlp_weight_69 = weight;
                70 : mlp_weight_70 = weight;
                71 : mlp_weight_71 = weight;
                72 : mlp_weight_72 = weight;
                73 : mlp_weight_73 = weight;
                74 : mlp_weight_74 = weight;
                75 : mlp_weight_75 = weight;
                76 : mlp_weight_76 = weight;
                77 : mlp_weight_77 = weight;
                78 : mlp_weight_78 = weight;
                79 : mlp_weight_79 = weight;
                80 : mlp_weight_80 = weight;
                81 : mlp_weight_81 = weight;
                82 : mlp_weight_82 = weight;
                83 : mlp_weight_83 = weight;
                84 : mlp_weight_84 = weight;
                85 : mlp_weight_85 = weight;
                86 : mlp_weight_86 = weight;
                87 : mlp_weight_87 = weight;
                88 : mlp_weight_88 = weight;
                89 : mlp_weight_89 = weight;
                90 : mlp_weight_90 = weight;
                91 : mlp_weight_91 = weight;
                92 : mlp_weight_92 = weight;
                93 : mlp_weight_93 = weight;
                94 : mlp_weight_94 = weight;
                95 : mlp_weight_95 = weight;
                96 : mlp_weight_96 = weight;
                97 : mlp_weight_97 = weight;
                98 : mlp_weight_98 = weight;
                99 : mlp_weight_99 = weight;
                100 : mlp_weight_100 = weight;
                101 : mlp_weight_101 = weight;
                102 : mlp_weight_102 = weight;
                103 : mlp_weight_103 = weight;
                104 : mlp_weight_104 = weight;
                105 : mlp_weight_105 = weight;
                106 : mlp_weight_106 = weight;
                107 : mlp_weight_107 = weight;
                108 : mlp_weight_108 = weight;
                109 : mlp_weight_109 = weight;
                110 : mlp_weight_110 = weight;
                111 : mlp_weight_111 = weight;
                112 : mlp_weight_112 = weight;
                113 : mlp_weight_113 = weight;
                114 : mlp_weight_114 = weight;
                115 : mlp_weight_115 = weight;
                116 : mlp_weight_116 = weight;
                117 : mlp_weight_117 = weight;
                118 : mlp_weight_118 = weight;
                119 : mlp_weight_119 = weight;
                120 : mlp_weight_120 = weight;
                121 : mlp_weight_121 = weight;
                122 : mlp_weight_122 = weight;
                123 : mlp_weight_123 = weight;
                124 : mlp_weight_124 = weight;
                125 : mlp_weight_125 = weight;
                126 : mlp_weight_126 = weight;
                127 : mlp_weight_127 = weight;
                128 : mlp_weight_128 = weight;
                129 : mlp_weight_129 = weight;
                130 : mlp_weight_130 = weight;
                131 : mlp_weight_131 = weight;
                132 : mlp_weight_132 = weight;
                133 : mlp_weight_133 = weight;
                134 : mlp_weight_134 = weight;
                135 : mlp_weight_135 = weight;
                136 : mlp_weight_136 = weight;
                137 : mlp_weight_137 = weight;
                138 : mlp_weight_138 = weight;
                139 : mlp_weight_139 = weight;
                140 : mlp_weight_140 = weight;
                141 : mlp_weight_141 = weight;
                142 : mlp_weight_142 = weight;
                143 : mlp_weight_143 = weight;
                144 : mlp_weight_144 = weight;
                145 : mlp_weight_145 = weight;
                146 : mlp_weight_146 = weight;
                147 : mlp_weight_147 = weight;
                148 : mlp_weight_148 = weight;
                149 : mlp_weight_149 = weight;
                150 : mlp_weight_150 = weight;
                151 : mlp_weight_151 = weight;
                152 : mlp_weight_152 = weight;
                153 : mlp_weight_153 = weight;
                154 : mlp_weight_154 = weight;
                155 : mlp_weight_155 = weight;
                156 : mlp_weight_156 = weight;
                157 : mlp_weight_157 = weight;
                158 : mlp_weight_158 = weight;
                159 : mlp_weight_159 = weight;
                160 : mlp_weight_160 = weight;
                161 : mlp_weight_161 = weight;
                162 : mlp_weight_162 = weight;
                163 : mlp_weight_163 = weight;
                164 : mlp_weight_164 = weight;
                165 : mlp_weight_165 = weight;
                166 : mlp_weight_166 = weight;
                167 : mlp_weight_167 = weight;
                168 : mlp_weight_168 = weight;
                169 : mlp_weight_169 = weight;
                170 : mlp_weight_170 = weight;
                171 : mlp_weight_171 = weight;
                172 : mlp_weight_172 = weight;
                173 : mlp_weight_173 = weight;
                174 : mlp_weight_174 = weight;
                175 : mlp_weight_175 = weight;
                176 : mlp_weight_176 = weight;
                177 : mlp_weight_177 = weight;
                178 : mlp_weight_178 = weight;
                179 : mlp_weight_179 = weight;
                180 : mlp_weight_180 = weight;
                181 : mlp_weight_181 = weight;
                182 : mlp_weight_182 = weight;
                183 : mlp_weight_183 = weight;
                184 : mlp_weight_184 = weight;
                185 : mlp_weight_185 = weight;
                186 : mlp_weight_186 = weight;
                187 : mlp_weight_187 = weight;
                188 : mlp_weight_188 = weight;
                189 : mlp_weight_189 = weight;
                190 : mlp_weight_190 = weight;
                191 : mlp_weight_191 = weight;
                192 : mlp_weight_192 = weight;
                193 : mlp_weight_193 = weight;
                194 : mlp_weight_194 = weight;
                195 : mlp_weight_195 = weight;
                196 : mlp_weight_196 = weight;
                197 : mlp_weight_197 = weight;
                198 : mlp_weight_198 = weight;
                199 : mlp_weight_199 = weight;
                200 : mlp_weight_200 = weight;
                201 : mlp_weight_201 = weight;
                202 : mlp_weight_202 = weight;
                203 : mlp_weight_203 = weight;
                204 : mlp_weight_204 = weight;
                205 : mlp_weight_205 = weight;
                206 : mlp_weight_206 = weight;
                207 : mlp_weight_207 = weight;
                208 : mlp_weight_208 = weight;
                209 : mlp_weight_209 = weight;
                210 : mlp_weight_210 = weight;
                211 : mlp_weight_211 = weight;
                212 : mlp_weight_212 = weight;
                213 : mlp_weight_213 = weight;
                214 : mlp_weight_214 = weight;
                215 : mlp_weight_215 = weight;
                216 : mlp_weight_216 = weight;
                217 : mlp_weight_217 = weight;
                218 : mlp_weight_218 = weight;
                219 : mlp_weight_219 = weight;
                220 : mlp_weight_220 = weight;
                221 : mlp_weight_221 = weight;
                222 : mlp_weight_222 = weight;
                223 : mlp_weight_223 = weight;
                224 : mlp_weight_224 = weight;
                225 : mlp_weight_225 = weight;
                226 : mlp_weight_226 = weight;
                227 : mlp_weight_227 = weight;
                228 : mlp_weight_228 = weight;
                229 : mlp_weight_229 = weight;
                230 : mlp_weight_230 = weight;
                231 : mlp_weight_231 = weight;
                232 : mlp_weight_232 = weight;
                233 : mlp_weight_233 = weight;
                234 : mlp_weight_234 = weight;
                235 : mlp_weight_235 = weight;
                236 : mlp_weight_236 = weight;
                237 : mlp_weight_237 = weight;
                238 : mlp_weight_238 = weight;
                239 : mlp_weight_239 = weight;
                240 : mlp_weight_240 = weight;
                241 : mlp_weight_241 = weight;
                242 : mlp_weight_242 = weight;
                243 : mlp_weight_243 = weight;
                244 : mlp_weight_244 = weight;
                245 : mlp_weight_245 = weight;
                246 : mlp_weight_246 = weight;
                247 : mlp_weight_247 = weight;
                248 : mlp_weight_248 = weight;
                249 : mlp_weight_249 = weight;
                250 : mlp_weight_250 = weight;
                251 : mlp_weight_251 = weight;
                252 : mlp_weight_252 = weight;
                253 : mlp_weight_253 = weight;
                254 : mlp_weight_254 = weight;
                255 : mlp_weight_255 = weight;
                256 : mlp_weight_256 = weight;
                257 : mlp_weight_257 = weight;
                258 : mlp_weight_258 = weight;
                259 : mlp_weight_259 = weight;
                
				default : mlp_weight_260 = weight;
			endcase
		end
	end

    // Instantiate neuron_50in_relu
    neuron_50in_relu U1 (
        .clock(clock),
        .reset(reset),

        .bias(mlp_weight_250), 

        .input_0(INPUT_WIRE_0),
        .input_1(INPUT_WIRE_1),
        .input_2(INPUT_WIRE_2),
        .input_3(INPUT_WIRE_3),
        .input_4(INPUT_WIRE_4),
        .input_5(INPUT_WIRE_5),
        .input_6(INPUT_WIRE_6),
        .input_7(INPUT_WIRE_7),
        .input_8(INPUT_WIRE_8),
        .input_9(INPUT_WIRE_9),
        .input_10(INPUT_WIRE_10),
        .input_11(INPUT_WIRE_11),
        .input_12(INPUT_WIRE_12),
        .input_13(INPUT_WIRE_13),
        .input_14(INPUT_WIRE_14),
        .input_15(INPUT_WIRE_15),
        .input_16(INPUT_WIRE_16),
        .input_17(INPUT_WIRE_17),
        .input_18(INPUT_WIRE_18),
        .input_19(INPUT_WIRE_19),
        .input_20(INPUT_WIRE_20),
        .input_21(INPUT_WIRE_21),
        .input_22(INPUT_WIRE_22),
        .input_23(INPUT_WIRE_23),
        .input_24(INPUT_WIRE_24),
        .input_25(INPUT_WIRE_25),
        .input_26(INPUT_WIRE_26),
        .input_27(INPUT_WIRE_27),
        .input_28(INPUT_WIRE_28),
        .input_29(INPUT_WIRE_29),
        .input_30(INPUT_WIRE_30),
        .input_31(INPUT_WIRE_31),
        .input_32(INPUT_WIRE_32),
        .input_33(INPUT_WIRE_33),
        .input_34(INPUT_WIRE_34),
        .input_35(INPUT_WIRE_35),
        .input_36(INPUT_WIRE_36),
        .input_37(INPUT_WIRE_37),
        .input_38(INPUT_WIRE_38),
        .input_39(INPUT_WIRE_39),
        .input_40(INPUT_WIRE_40),
        .input_41(INPUT_WIRE_41),
        .input_42(INPUT_WIRE_42),
        .input_43(INPUT_WIRE_43),
        .input_44(INPUT_WIRE_44),
        .input_45(INPUT_WIRE_45),
        .input_46(INPUT_WIRE_46),
        .input_47(INPUT_WIRE_47),
        .input_48(INPUT_WIRE_48),
        .input_49(INPUT_WIRE_49),

        .weight_0(mlp_weight_0),
        .weight_1(mlp_weight_5),
        .weight_2(mlp_weight_10),
        .weight_3(mlp_weight_15),
        .weight_4(mlp_weight_20),
        .weight_5(mlp_weight_25),
        .weight_6(mlp_weight_30),
        .weight_7(mlp_weight_35),
        .weight_8(mlp_weight_40),
        .weight_9(mlp_weight_45),
        .weight_10(mlp_weight_50),
        .weight_11(mlp_weight_55),
        .weight_12(mlp_weight_60),
        .weight_13(mlp_weight_65),
        .weight_14(mlp_weight_70),
        .weight_15(mlp_weight_75),
        .weight_16(mlp_weight_80),
        .weight_17(mlp_weight_85),
        .weight_18(mlp_weight_90),
        .weight_19(mlp_weight_95),
        .weight_20(mlp_weight_100),
        .weight_21(mlp_weight_105),
        .weight_22(mlp_weight_110),
        .weight_23(mlp_weight_115),
        .weight_24(mlp_weight_120),
        .weight_25(mlp_weight_125),
        .weight_26(mlp_weight_130),
        .weight_27(mlp_weight_135),
        .weight_28(mlp_weight_140),
        .weight_29(mlp_weight_145),
        .weight_30(mlp_weight_150),
        .weight_31(mlp_weight_155),
        .weight_32(mlp_weight_160),
        .weight_33(mlp_weight_165),
        .weight_34(mlp_weight_170),
        .weight_35(mlp_weight_175),
        .weight_36(mlp_weight_180),
        .weight_37(mlp_weight_185),
        .weight_38(mlp_weight_190),
        .weight_39(mlp_weight_195),
        .weight_40(mlp_weight_200),
        .weight_41(mlp_weight_205),
        .weight_42(mlp_weight_210),
        .weight_43(mlp_weight_215),
        .weight_44(mlp_weight_220),
        .weight_45(mlp_weight_225),
        .weight_46(mlp_weight_230),
        .weight_47(mlp_weight_235),
        .weight_48(mlp_weight_240),
        .weight_49(mlp_weight_245),        
        
        .out(HIDDEN_WIRE_0)
    );

    neuron_50in_relu U2 (
        .clock(clock),
        .reset(reset),

        .bias(mlp_weight_251), 

        .input_0(INPUT_WIRE_0),
        .input_1(INPUT_WIRE_1),
        .input_2(INPUT_WIRE_2),
        .input_3(INPUT_WIRE_3),
        .input_4(INPUT_WIRE_4),
        .input_5(INPUT_WIRE_5),
        .input_6(INPUT_WIRE_6),
        .input_7(INPUT_WIRE_7),
        .input_8(INPUT_WIRE_8),
        .input_9(INPUT_WIRE_9),
        .input_10(INPUT_WIRE_10),
        .input_11(INPUT_WIRE_11),
        .input_12(INPUT_WIRE_12),
        .input_13(INPUT_WIRE_13),
        .input_14(INPUT_WIRE_14),
        .input_15(INPUT_WIRE_15),
        .input_16(INPUT_WIRE_16),
        .input_17(INPUT_WIRE_17),
        .input_18(INPUT_WIRE_18),
        .input_19(INPUT_WIRE_19),
        .input_20(INPUT_WIRE_20),
        .input_21(INPUT_WIRE_21),
        .input_22(INPUT_WIRE_22),
        .input_23(INPUT_WIRE_23),
        .input_24(INPUT_WIRE_24),
        .input_25(INPUT_WIRE_25),
        .input_26(INPUT_WIRE_26),
        .input_27(INPUT_WIRE_27),
        .input_28(INPUT_WIRE_28),
        .input_29(INPUT_WIRE_29),
        .input_30(INPUT_WIRE_30),
        .input_31(INPUT_WIRE_31),
        .input_32(INPUT_WIRE_32),
        .input_33(INPUT_WIRE_33),
        .input_34(INPUT_WIRE_34),
        .input_35(INPUT_WIRE_35),
        .input_36(INPUT_WIRE_36),
        .input_37(INPUT_WIRE_37),
        .input_38(INPUT_WIRE_38),
        .input_39(INPUT_WIRE_39),
        .input_40(INPUT_WIRE_40),
        .input_41(INPUT_WIRE_41),
        .input_42(INPUT_WIRE_42),
        .input_43(INPUT_WIRE_43),
        .input_44(INPUT_WIRE_44),
        .input_45(INPUT_WIRE_45),
        .input_46(INPUT_WIRE_46),
        .input_47(INPUT_WIRE_47),
        .input_48(INPUT_WIRE_48),
        .input_49(INPUT_WIRE_49),

        .weight_0(mlp_weight_1),
        .weight_1(mlp_weight_6),
        .weight_2(mlp_weight_11),
        .weight_3(mlp_weight_16),
        .weight_4(mlp_weight_21),
        .weight_5(mlp_weight_26),
        .weight_6(mlp_weight_31),
        .weight_7(mlp_weight_36),
        .weight_8(mlp_weight_41),
        .weight_9(mlp_weight_46),
        .weight_10(mlp_weight_51),
        .weight_11(mlp_weight_56),
        .weight_12(mlp_weight_61),
        .weight_13(mlp_weight_66),
        .weight_14(mlp_weight_71),
        .weight_15(mlp_weight_76),
        .weight_16(mlp_weight_81),
        .weight_17(mlp_weight_86),
        .weight_18(mlp_weight_91),
        .weight_19(mlp_weight_96),
        .weight_20(mlp_weight_101),
        .weight_21(mlp_weight_106),
        .weight_22(mlp_weight_111),
        .weight_23(mlp_weight_116),
        .weight_24(mlp_weight_121),
        .weight_25(mlp_weight_126),
        .weight_26(mlp_weight_131),
        .weight_27(mlp_weight_136),
        .weight_28(mlp_weight_141),
        .weight_29(mlp_weight_146),
        .weight_30(mlp_weight_151),
        .weight_31(mlp_weight_156),
        .weight_32(mlp_weight_161),
        .weight_33(mlp_weight_166),
        .weight_34(mlp_weight_171),
        .weight_35(mlp_weight_176),
        .weight_36(mlp_weight_181),
        .weight_37(mlp_weight_186),
        .weight_38(mlp_weight_191),
        .weight_39(mlp_weight_196),
        .weight_40(mlp_weight_201),
        .weight_41(mlp_weight_206),
        .weight_42(mlp_weight_211),
        .weight_43(mlp_weight_216),
        .weight_44(mlp_weight_221),
        .weight_45(mlp_weight_226),
        .weight_46(mlp_weight_231),
        .weight_47(mlp_weight_236),
        .weight_48(mlp_weight_241),
        .weight_49(mlp_weight_246),

        .out(HIDDEN_WIRE_1)
    );

    neuron_50in_relu U3 (
        .clock(clock),
        .reset(reset),

        .bias(mlp_weight_252), 

        .input_0(INPUT_WIRE_0),
        .input_1(INPUT_WIRE_1),
        .input_2(INPUT_WIRE_2),
        .input_3(INPUT_WIRE_3),
        .input_4(INPUT_WIRE_4),
        .input_5(INPUT_WIRE_5),
        .input_6(INPUT_WIRE_6),
        .input_7(INPUT_WIRE_7),
        .input_8(INPUT_WIRE_8),
        .input_9(INPUT_WIRE_9),
        .input_10(INPUT_WIRE_10),
        .input_11(INPUT_WIRE_11),
        .input_12(INPUT_WIRE_12),
        .input_13(INPUT_WIRE_13),
        .input_14(INPUT_WIRE_14),
        .input_15(INPUT_WIRE_15),
        .input_16(INPUT_WIRE_16),
        .input_17(INPUT_WIRE_17),
        .input_18(INPUT_WIRE_18),
        .input_19(INPUT_WIRE_19),
        .input_20(INPUT_WIRE_20),
        .input_21(INPUT_WIRE_21),
        .input_22(INPUT_WIRE_22),
        .input_23(INPUT_WIRE_23),
        .input_24(INPUT_WIRE_24),
        .input_25(INPUT_WIRE_25),
        .input_26(INPUT_WIRE_26),
        .input_27(INPUT_WIRE_27),
        .input_28(INPUT_WIRE_28),
        .input_29(INPUT_WIRE_29),
        .input_30(INPUT_WIRE_30),
        .input_31(INPUT_WIRE_31),
        .input_32(INPUT_WIRE_32),
        .input_33(INPUT_WIRE_33),
        .input_34(INPUT_WIRE_34),
        .input_35(INPUT_WIRE_35),
        .input_36(INPUT_WIRE_36),
        .input_37(INPUT_WIRE_37),
        .input_38(INPUT_WIRE_38),
        .input_39(INPUT_WIRE_39),
        .input_40(INPUT_WIRE_40),
        .input_41(INPUT_WIRE_41),
        .input_42(INPUT_WIRE_42),
        .input_43(INPUT_WIRE_43),
        .input_44(INPUT_WIRE_44),
        .input_45(INPUT_WIRE_45),
        .input_46(INPUT_WIRE_46),
        .input_47(INPUT_WIRE_47),
        .input_48(INPUT_WIRE_48),
        .input_49(INPUT_WIRE_49),

        .weight_0(mlp_weight_2),
        .weight_1(mlp_weight_7),
        .weight_2(mlp_weight_12),
        .weight_3(mlp_weight_17),
        .weight_4(mlp_weight_22),
        .weight_5(mlp_weight_27),
        .weight_6(mlp_weight_32),
        .weight_7(mlp_weight_37),
        .weight_8(mlp_weight_42),
        .weight_9(mlp_weight_47),
        .weight_10(mlp_weight_52),
        .weight_11(mlp_weight_57),
        .weight_12(mlp_weight_62),
        .weight_13(mlp_weight_67),
        .weight_14(mlp_weight_72),
        .weight_15(mlp_weight_77),
        .weight_16(mlp_weight_82),
        .weight_17(mlp_weight_87),
        .weight_18(mlp_weight_92),
        .weight_19(mlp_weight_97),
        .weight_20(mlp_weight_102),
        .weight_21(mlp_weight_107),
        .weight_22(mlp_weight_112),
        .weight_23(mlp_weight_117),
        .weight_24(mlp_weight_122),
        .weight_25(mlp_weight_127),
        .weight_26(mlp_weight_132),
        .weight_27(mlp_weight_137),
        .weight_28(mlp_weight_142),
        .weight_29(mlp_weight_147),
        .weight_30(mlp_weight_152),
        .weight_31(mlp_weight_157),
        .weight_32(mlp_weight_162),
        .weight_33(mlp_weight_167),
        .weight_34(mlp_weight_172),
        .weight_35(mlp_weight_177),
        .weight_36(mlp_weight_182),
        .weight_37(mlp_weight_187),
        .weight_38(mlp_weight_192),
        .weight_39(mlp_weight_197),
        .weight_40(mlp_weight_202),
        .weight_41(mlp_weight_207),
        .weight_42(mlp_weight_212),
        .weight_43(mlp_weight_217),
        .weight_44(mlp_weight_222),
        .weight_45(mlp_weight_227),
        .weight_46(mlp_weight_232),
        .weight_47(mlp_weight_237),
        .weight_48(mlp_weight_242),
        .weight_49(mlp_weight_247),

        .out(HIDDEN_WIRE_2)
    );

    neuron_50in_relu U4 (
        .clock(clock),
        .reset(reset),

        .bias(mlp_weight_253),

        .input_0(INPUT_WIRE_0),
        .input_1(INPUT_WIRE_1),
        .input_2(INPUT_WIRE_2),
        .input_3(INPUT_WIRE_3),
        .input_4(INPUT_WIRE_4),
        .input_5(INPUT_WIRE_5),
        .input_6(INPUT_WIRE_6),
        .input_7(INPUT_WIRE_7),
        .input_8(INPUT_WIRE_8),
        .input_9(INPUT_WIRE_9),
        .input_10(INPUT_WIRE_10),
        .input_11(INPUT_WIRE_11),
        .input_12(INPUT_WIRE_12),
        .input_13(INPUT_WIRE_13),
        .input_14(INPUT_WIRE_14),
        .input_15(INPUT_WIRE_15),
        .input_16(INPUT_WIRE_16),
        .input_17(INPUT_WIRE_17),
        .input_18(INPUT_WIRE_18),
        .input_19(INPUT_WIRE_19),
        .input_20(INPUT_WIRE_20),
        .input_21(INPUT_WIRE_21),
        .input_22(INPUT_WIRE_22),
        .input_23(INPUT_WIRE_23),
        .input_24(INPUT_WIRE_24),
        .input_25(INPUT_WIRE_25),
        .input_26(INPUT_WIRE_26),
        .input_27(INPUT_WIRE_27),
        .input_28(INPUT_WIRE_28),
        .input_29(INPUT_WIRE_29),
        .input_30(INPUT_WIRE_30),
        .input_31(INPUT_WIRE_31),
        .input_32(INPUT_WIRE_32),
        .input_33(INPUT_WIRE_33),
        .input_34(INPUT_WIRE_34),
        .input_35(INPUT_WIRE_35),
        .input_36(INPUT_WIRE_36),
        .input_37(INPUT_WIRE_37),
        .input_38(INPUT_WIRE_38),
        .input_39(INPUT_WIRE_39),
        .input_40(INPUT_WIRE_40),
        .input_41(INPUT_WIRE_41),
        .input_42(INPUT_WIRE_42),
        .input_43(INPUT_WIRE_43),
        .input_44(INPUT_WIRE_44),
        .input_45(INPUT_WIRE_45),
        .input_46(INPUT_WIRE_46),
        .input_47(INPUT_WIRE_47),
        .input_48(INPUT_WIRE_48),
        .input_49(INPUT_WIRE_49),

        .weight_0(mlp_weight_3),
        .weight_1(mlp_weight_8),
        .weight_2(mlp_weight_13),
        .weight_3(mlp_weight_18),
        .weight_4(mlp_weight_23),
        .weight_5(mlp_weight_28),
        .weight_6(mlp_weight_33),
        .weight_7(mlp_weight_38),
        .weight_8(mlp_weight_43),
        .weight_9(mlp_weight_48),
        .weight_10(mlp_weight_53),
        .weight_11(mlp_weight_58),
        .weight_12(mlp_weight_63),
        .weight_13(mlp_weight_68),
        .weight_14(mlp_weight_73),
        .weight_15(mlp_weight_78),
        .weight_16(mlp_weight_83),
        .weight_17(mlp_weight_88),
        .weight_18(mlp_weight_93),
        .weight_19(mlp_weight_98),
        .weight_20(mlp_weight_103),
        .weight_21(mlp_weight_108),
        .weight_22(mlp_weight_113),
        .weight_23(mlp_weight_118),
        .weight_24(mlp_weight_123),
        .weight_25(mlp_weight_128),
        .weight_26(mlp_weight_133),
        .weight_27(mlp_weight_138),
        .weight_28(mlp_weight_143),
        .weight_29(mlp_weight_148),
        .weight_30(mlp_weight_153),
        .weight_31(mlp_weight_158),
        .weight_32(mlp_weight_163),
        .weight_33(mlp_weight_168),
        .weight_34(mlp_weight_173),
        .weight_35(mlp_weight_178),
        .weight_36(mlp_weight_183),
        .weight_37(mlp_weight_188),
        .weight_38(mlp_weight_193),
        .weight_39(mlp_weight_198),
        .weight_40(mlp_weight_203),
        .weight_41(mlp_weight_208),
        .weight_42(mlp_weight_213),
        .weight_43(mlp_weight_218),
        .weight_44(mlp_weight_223),
        .weight_45(mlp_weight_228),
        .weight_46(mlp_weight_233),
        .weight_47(mlp_weight_238),
        .weight_48(mlp_weight_243),
        .weight_49(mlp_weight_248),

        .out(HIDDEN_WIRE_3)
    );

    neuron_50in_relu U5 (
        .clock(clock),
        .reset(reset),

        .bias(mlp_weight_254), 

        .input_0(INPUT_WIRE_0),
        .input_1(INPUT_WIRE_1),
        .input_2(INPUT_WIRE_2),
        .input_3(INPUT_WIRE_3),
        .input_4(INPUT_WIRE_4),
        .input_5(INPUT_WIRE_5),
        .input_6(INPUT_WIRE_6),
        .input_7(INPUT_WIRE_7),
        .input_8(INPUT_WIRE_8),
        .input_9(INPUT_WIRE_9),
        .input_10(INPUT_WIRE_10),
        .input_11(INPUT_WIRE_11),
        .input_12(INPUT_WIRE_12),
        .input_13(INPUT_WIRE_13),
        .input_14(INPUT_WIRE_14),
        .input_15(INPUT_WIRE_15),
        .input_16(INPUT_WIRE_16),
        .input_17(INPUT_WIRE_17),
        .input_18(INPUT_WIRE_18),
        .input_19(INPUT_WIRE_19),
        .input_20(INPUT_WIRE_20),
        .input_21(INPUT_WIRE_21),
        .input_22(INPUT_WIRE_22),
        .input_23(INPUT_WIRE_23),
        .input_24(INPUT_WIRE_24),
        .input_25(INPUT_WIRE_25),
        .input_26(INPUT_WIRE_26),
        .input_27(INPUT_WIRE_27),
        .input_28(INPUT_WIRE_28),
        .input_29(INPUT_WIRE_29),
        .input_30(INPUT_WIRE_30),
        .input_31(INPUT_WIRE_31),
        .input_32(INPUT_WIRE_32),
        .input_33(INPUT_WIRE_33),
        .input_34(INPUT_WIRE_34),
        .input_35(INPUT_WIRE_35),
        .input_36(INPUT_WIRE_36),
        .input_37(INPUT_WIRE_37),
        .input_38(INPUT_WIRE_38),
        .input_39(INPUT_WIRE_39),
        .input_40(INPUT_WIRE_40),
        .input_41(INPUT_WIRE_41),
        .input_42(INPUT_WIRE_42),
        .input_43(INPUT_WIRE_43),
        .input_44(INPUT_WIRE_44),
        .input_45(INPUT_WIRE_45),
        .input_46(INPUT_WIRE_46),
        .input_47(INPUT_WIRE_47),
        .input_48(INPUT_WIRE_48),
        .input_49(INPUT_WIRE_49),

        .weight_0(mlp_weight_4),
        .weight_1(mlp_weight_9),
        .weight_2(mlp_weight_14),
        .weight_3(mlp_weight_19),
        .weight_4(mlp_weight_24),
        .weight_5(mlp_weight_29),
        .weight_6(mlp_weight_34),
        .weight_7(mlp_weight_39),
        .weight_8(mlp_weight_44),
        .weight_9(mlp_weight_49),
        .weight_10(mlp_weight_54),
        .weight_11(mlp_weight_59),
        .weight_12(mlp_weight_64),
        .weight_13(mlp_weight_69),
        .weight_14(mlp_weight_74),
        .weight_15(mlp_weight_79),
        .weight_16(mlp_weight_84),
        .weight_17(mlp_weight_89),
        .weight_18(mlp_weight_94),
        .weight_19(mlp_weight_99),
        .weight_20(mlp_weight_104),
        .weight_21(mlp_weight_109),
        .weight_22(mlp_weight_114),
        .weight_23(mlp_weight_119),
        .weight_24(mlp_weight_124),
        .weight_25(mlp_weight_129),
        .weight_26(mlp_weight_134),
        .weight_27(mlp_weight_139),
        .weight_28(mlp_weight_144),
        .weight_29(mlp_weight_149),
        .weight_30(mlp_weight_154),
        .weight_31(mlp_weight_159),
        .weight_32(mlp_weight_164),
        .weight_33(mlp_weight_169),
        .weight_34(mlp_weight_174),
        .weight_35(mlp_weight_179),
        .weight_36(mlp_weight_184),
        .weight_37(mlp_weight_189),
        .weight_38(mlp_weight_194),
        .weight_39(mlp_weight_199),
        .weight_40(mlp_weight_204),
        .weight_41(mlp_weight_209),
        .weight_42(mlp_weight_214),
        .weight_43(mlp_weight_219),
        .weight_44(mlp_weight_224),
        .weight_45(mlp_weight_229),
        .weight_46(mlp_weight_234),
        .weight_47(mlp_weight_239),
        .weight_48(mlp_weight_244),
        .weight_49(mlp_weight_249),
        

        .out(HIDDEN_WIRE_4)
    );

    neuron_5in_sigmoid U6 (
        .clock(clock),
        .reset(reset),

        .bias(mlp_weight_260),
        
        .input_0(HIDDEN_WIRE_0),
        .input_1(HIDDEN_WIRE_1),
        .input_2(HIDDEN_WIRE_2),
        .input_3(HIDDEN_WIRE_3),
        .input_4(HIDDEN_WIRE_4),

        .weight_0(mlp_weight_255),
        .weight_1(mlp_weight_256),
        .weight_2(mlp_weight_257),
        .weight_3(mlp_weight_258),
        .weight_4(mlp_weight_259),

        .out_1(out_1_sig),
        .out_2(out_2_sig),
        .out_3(out_3_sig),
        .out_4(out_4_sig),
        .out_5(out_5_sig),
        
        .out(out)
    );

    assign out_1 = out_1_sig;
    assign out_2 = HIDDEN_WIRE_1;
    assign out_3 = HIDDEN_WIRE_2;
    assign out_4 = HIDDEN_WIRE_3;
    assign out_5 = HIDDEN_WIRE_4;

endmodule
