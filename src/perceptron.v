module perceptron (
    input enable,
    input reset,

    input signed [15:0] bias,

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

    input signed [15:0] coeff_0,
    input signed [15:0] coeff_1,
    input signed [15:0] coeff_2,
    input signed [15:0] coeff_3,
    input signed [15:0] coeff_4,
    input signed [15:0] coeff_5,
    input signed [15:0] coeff_6,
    input signed [15:0] coeff_7,
    input signed [15:0] coeff_8,
    input signed [15:0] coeff_9,
    input signed [15:0] coeff_10,
    input signed [15:0] coeff_11,
    input signed [15:0] coeff_12,
    input signed [15:0] coeff_13,
    input signed [15:0] coeff_14,
    input signed [15:0] coeff_15,
    input signed [15:0] coeff_16,
    input signed [15:0] coeff_17,
    input signed [15:0] coeff_18,
    input signed [15:0] coeff_19,
    input signed [15:0] coeff_20,
    input signed [15:0] coeff_21,
    input signed [15:0] coeff_22,
    input signed [15:0] coeff_23,
    input signed [15:0] coeff_24,
    input signed [15:0] coeff_25,
    input signed [15:0] coeff_26,
    input signed [15:0] coeff_27,
    input signed [15:0] coeff_28,
    input signed [15:0] coeff_29,
    input signed [15:0] coeff_30,
    input signed [15:0] coeff_31,
    input signed [15:0] coeff_32,
    input signed [15:0] coeff_33,
    input signed [15:0] coeff_34,
    input signed [15:0] coeff_35,
    input signed [15:0] coeff_36,
    input signed [15:0] coeff_37,
    input signed [15:0] coeff_38,
    input signed [15:0] coeff_39,
    input signed [15:0] coeff_40,
    input signed [15:0] coeff_41,
    input signed [15:0] coeff_42,
    input signed [15:0] coeff_43,
    input signed [15:0] coeff_44,
    input signed [15:0] coeff_45,
    input signed [15:0] coeff_46,
    input signed [15:0] coeff_47,
    input signed [15:0] coeff_48,
    input signed [15:0] coeff_49,

    output signed [33:0] sum,

    output signed [15:0] out
);

    reg  signed [15:0] output_register;
    wire signed [15:0] output_typeconvert;

    // wire signed [33:0] sum;

    wire signed [33:0] add_signext_0; // sfix34_En32
    wire signed [33:0] add_signext_1; // sfix34_En32
    wire signed [33:0] add_signext_2; // sfix34_En32
    wire signed [33:0] add_signext_3; // sfix34_En32
    wire signed [33:0] add_signext_4; // sfix34_En32
    wire signed [33:0] add_signext_5; // sfix34_En32
    wire signed [33:0] add_signext_6; // sfix34_En32
    wire signed [33:0] add_signext_7; // sfix34_En32
    wire signed [33:0] add_signext_8; // sfix34_En32
    wire signed [33:0] add_signext_9; // sfix34_En32
    wire signed [33:0] add_signext_10; // sfix34_En32
    wire signed [33:0] add_signext_11; // sfix34_En32
    wire signed [33:0] add_signext_12; // sfix34_En32
    wire signed [33:0] add_signext_13; // sfix34_En32
    wire signed [33:0] add_signext_14; // sfix34_En32
    wire signed [33:0] add_signext_15; // sfix34_En32
    wire signed [33:0] add_signext_16; // sfix34_En32
    wire signed [33:0] add_signext_17; // sfix34_En32
    wire signed [33:0] add_signext_18; // sfix34_En32
    wire signed [33:0] add_signext_19; // sfix34_En32
    wire signed [33:0] add_signext_20; // sfix34_En32
    wire signed [33:0] add_signext_21; // sfix34_En32
    wire signed [33:0] add_signext_22; // sfix34_En32
    wire signed [33:0] add_signext_23; // sfix34_En32
    wire signed [33:0] add_signext_24; // sfix34_En32
    wire signed [33:0] add_signext_25; // sfix34_En32
    wire signed [33:0] add_signext_26; // sfix34_En32
    wire signed [33:0] add_signext_27; // sfix34_En32
    wire signed [33:0] add_signext_28; // sfix34_En32
    wire signed [33:0] add_signext_29; // sfix34_En32
    wire signed [33:0] add_signext_30; // sfix34_En32
    wire signed [33:0] add_signext_31; // sfix34_En32
    wire signed [33:0] add_signext_32; // sfix34_En32
    wire signed [33:0] add_signext_33; // sfix34_En32
    wire signed [33:0] add_signext_34; // sfix34_En32
    wire signed [33:0] add_signext_35; // sfix34_En32
    wire signed [33:0] add_signext_36; // sfix34_En32
    wire signed [33:0] add_signext_37; // sfix34_En32
    wire signed [33:0] add_signext_38; // sfix34_En32
    wire signed [33:0] add_signext_39; // sfix34_En32
    wire signed [33:0] add_signext_40; // sfix34_En32
    wire signed [33:0] add_signext_41; // sfix34_En32
    wire signed [33:0] add_signext_42; // sfix34_En32
    wire signed [33:0] add_signext_43; // sfix34_En32
    wire signed [33:0] add_signext_44; // sfix34_En32
    wire signed [33:0] add_signext_45; // sfix34_En32
    wire signed [33:0] add_signext_46; // sfix34_En32
    wire signed [33:0] add_signext_47; // sfix34_En32
    wire signed [33:0] add_signext_48; // sfix34_En32
    wire signed [33:0] add_signext_49; // sfix34_En32
    wire signed [33:0] add_signext_50; // sfix34_En32
    wire signed [33:0] add_signext_51; // sfix34_En32
    wire signed [33:0] add_signext_52; // sfix34_En32
    wire signed [33:0] add_signext_53; // sfix34_En32
    wire signed [33:0] add_signext_54; // sfix34_En32
    wire signed [33:0] add_signext_55; // sfix34_En32
    wire signed [33:0] add_signext_56; // sfix34_En32
    wire signed [33:0] add_signext_57; // sfix34_En32
    wire signed [33:0] add_signext_58; // sfix34_En32
    wire signed [33:0] add_signext_59; // sfix34_En32
    wire signed [33:0] add_signext_60; // sfix34_En32
    wire signed [33:0] add_signext_61; // sfix34_En32
    wire signed [33:0] add_signext_62; // sfix34_En32
    wire signed [33:0] add_signext_63; // sfix34_En32
    wire signed [33:0] add_signext_64; // sfix34_En32
    wire signed [33:0] add_signext_65; // sfix34_En32
    wire signed [33:0] add_signext_66; // sfix34_En32
    wire signed [33:0] add_signext_67; // sfix34_En32
    wire signed [33:0] add_signext_68; // sfix34_En32
    wire signed [33:0] add_signext_69; // sfix34_En32
    wire signed [33:0] add_signext_70; // sfix34_En32
    wire signed [33:0] add_signext_71; // sfix34_En32
    wire signed [33:0] add_signext_72; // sfix34_En32
    wire signed [33:0] add_signext_73; // sfix34_En32
    wire signed [33:0] add_signext_74; // sfix34_En32
    wire signed [33:0] add_signext_75; // sfix34_En32
    wire signed [33:0] add_signext_76; // sfix34_En32
    wire signed [33:0] add_signext_77; // sfix34_En32
    wire signed [33:0] add_signext_78; // sfix34_En32
    wire signed [33:0] add_signext_79; // sfix34_En32
    wire signed [33:0] add_signext_80; // sfix34_En32
    wire signed [33:0] add_signext_81; // sfix34_En32
    wire signed [33:0] add_signext_82; // sfix34_En32
    wire signed [33:0] add_signext_83; // sfix34_En32
    wire signed [33:0] add_signext_84; // sfix34_En32
    wire signed [33:0] add_signext_85; // sfix34_En32
    wire signed [33:0] add_signext_86; // sfix34_En32
    wire signed [33:0] add_signext_87; // sfix34_En32
    wire signed [33:0] add_signext_88; // sfix34_En32
    wire signed [33:0] add_signext_89; // sfix34_En32
    wire signed [33:0] add_signext_90; // sfix34_En32
    wire signed [33:0] add_signext_91; // sfix34_En32
    wire signed [33:0] add_signext_92; // sfix34_En32
    wire signed [33:0] add_signext_93; // sfix34_En32
    wire signed [33:0] add_signext_94; // sfix34_En32
    wire signed [33:0] add_signext_95; // sfix34_En32
    wire signed [33:0] add_signext_96; // sfix34_En32
    wire signed [33:0] add_signext_97; // sfix34_En32

   
    wire signed [34:0] add_temp_0; // sfix35_En32
    wire signed [34:0] add_temp_1; // sfix35_En32
    wire signed [34:0] add_temp_2; // sfix35_En32
    wire signed [34:0] add_temp_3; // sfix35_En32
    wire signed [34:0] add_temp_4; // sfix35_En32
    wire signed [34:0] add_temp_5; // sfix35_En32
    wire signed [34:0] add_temp_6; // sfix35_En32
    wire signed [34:0] add_temp_7; // sfix35_En32
    wire signed [34:0] add_temp_8; // sfix35_En32
    wire signed [34:0] add_temp_9; // sfix35_En32
    wire signed [34:0] add_temp_10; // sfix35_En32
    wire signed [34:0] add_temp_11; // sfix35_En32
    wire signed [34:0] add_temp_12; // sfix35_En32
    wire signed [34:0] add_temp_13; // sfix35_En32
    wire signed [34:0] add_temp_14; // sfix35_En32
    wire signed [34:0] add_temp_15; // sfix35_En32
    wire signed [34:0] add_temp_16; // sfix35_En32
    wire signed [34:0] add_temp_17; // sfix35_En32
    wire signed [34:0] add_temp_18; // sfix35_En32
    wire signed [34:0] add_temp_19; // sfix35_En32
    wire signed [34:0] add_temp_20; // sfix35_En32
    wire signed [34:0] add_temp_21; // sfix35_En32
    wire signed [34:0] add_temp_22; // sfix35_En32
    wire signed [34:0] add_temp_23; // sfix35_En32
    wire signed [34:0] add_temp_24; // sfix35_En32
    wire signed [34:0] add_temp_25; // sfix35_En32
    wire signed [34:0] add_temp_26; // sfix35_En32
    wire signed [34:0] add_temp_27; // sfix35_En32
    wire signed [34:0] add_temp_28; // sfix35_En32
    wire signed [34:0] add_temp_29; // sfix35_En32
    wire signed [34:0] add_temp_30; // sfix35_En32
    wire signed [34:0] add_temp_31; // sfix35_En32
    wire signed [34:0] add_temp_32; // sfix35_En32
    wire signed [34:0] add_temp_33; // sfix35_En32
    wire signed [34:0] add_temp_34; // sfix35_En32
    wire signed [34:0] add_temp_35; // sfix35_En32
    wire signed [34:0] add_temp_36; // sfix35_En32
    wire signed [34:0] add_temp_37; // sfix35_En32
    wire signed [34:0] add_temp_38; // sfix35_En32
    wire signed [34:0] add_temp_39; // sfix35_En32
    wire signed [34:0] add_temp_40; // sfix35_En32
    wire signed [34:0] add_temp_41; // sfix35_En32
    wire signed [34:0] add_temp_42; // sfix35_En32
    wire signed [34:0] add_temp_43; // sfix35_En32
    wire signed [34:0] add_temp_44; // sfix35_En32
    wire signed [34:0] add_temp_45; // sfix35_En32
    wire signed [34:0] add_temp_46; // sfix35_En32
    wire signed [34:0] add_temp_47; // sfix35_En32
    wire signed [34:0] add_temp_48; // sfix35_En32

    wire signed [30:0] product0;
    wire signed [30:0] product1;
    wire signed [30:0] product2;
    wire signed [30:0] product3;
    wire signed [30:0] product4;
    wire signed [30:0] product5;
    wire signed [30:0] product6;
    wire signed [30:0] product7;
    wire signed [30:0] product8;
    wire signed [30:0] product9;
    wire signed [30:0] product10;
    wire signed [30:0] product11;
    wire signed [30:0] product12;
    wire signed [30:0] product13;
    wire signed [30:0] product14;
    wire signed [30:0] product15;
    wire signed [30:0] product16;
    wire signed [30:0] product17;
    wire signed [30:0] product18;
    wire signed [30:0] product19;
    wire signed [30:0] product20;
    wire signed [30:0] product21;
    wire signed [30:0] product22;
    wire signed [30:0] product23;
    wire signed [30:0] product24;
    wire signed [30:0] product25;
    wire signed [30:0] product26;
    wire signed [30:0] product27;
    wire signed [30:0] product28;
    wire signed [30:0] product29;
    wire signed [30:0] product30;
    wire signed [30:0] product31;
    wire signed [30:0] product32;
    wire signed [30:0] product33;
    wire signed [30:0] product34;
    wire signed [30:0] product35;
    wire signed [30:0] product36;
    wire signed [30:0] product37;
    wire signed [30:0] product38;
    wire signed [30:0] product39;
    wire signed [30:0] product40;
    wire signed [30:0] product41;
    wire signed [30:0] product42;
    wire signed [30:0] product43;
    wire signed [30:0] product44;
    wire signed [30:0] product45;
    wire signed [30:0] product46;
    wire signed [30:0] product47;
    wire signed [30:0] product48;
    wire signed [30:0] product49; 

    wire signed [31:0] multi0;
    wire signed [31:0] multi1;
    wire signed [31:0] multi2;
    wire signed [31:0] multi3;
    wire signed [31:0] multi4;
    wire signed [31:0] multi5;
    wire signed [31:0] multi6;
    wire signed [31:0] multi7;
    wire signed [31:0] multi8;
    wire signed [31:0] multi9;
    wire signed [31:0] multi10;
    wire signed [31:0] multi11;
    wire signed [31:0] multi12;
    wire signed [31:0] multi13;
    wire signed [31:0] multi14;
    wire signed [31:0] multi15;
    wire signed [31:0] multi16;
    wire signed [31:0] multi17;
    wire signed [31:0] multi18;
    wire signed [31:0] multi19;
    wire signed [31:0] multi20;
    wire signed [31:0] multi21;
    wire signed [31:0] multi22;
    wire signed [31:0] multi23;
    wire signed [31:0] multi24;
    wire signed [31:0] multi25;
    wire signed [31:0] multi26;
    wire signed [31:0] multi27;
    wire signed [31:0] multi28;
    wire signed [31:0] multi29;
    wire signed [31:0] multi30;
    wire signed [31:0] multi31;
    wire signed [31:0] multi32;
    wire signed [31:0] multi33;
    wire signed [31:0] multi34;
    wire signed [31:0] multi35;
    wire signed [31:0] multi36;
    wire signed [31:0] multi37;
    wire signed [31:0] multi38;
    wire signed [31:0] multi39;
    wire signed [31:0] multi40;
    wire signed [31:0] multi41;
    wire signed [31:0] multi42;
    wire signed [31:0] multi43;
    wire signed [31:0] multi44;
    wire signed [31:0] multi45;
    wire signed [31:0] multi46;
    wire signed [31:0] multi47;
    wire signed [31:0] multi48;
    wire signed [31:0] multi49;

    assign multi0 = input_0 * coeff_0;
    assign product0 = $signed({multi0[28:0], 2'b00});

    assign multi1 = input_1 * coeff_1;
    assign product1 = $signed({multi1[28:0], 2'b00});

    assign multi2 = input_2 * coeff_2;
    assign product2 = $signed({multi2[28:0], 2'b00});

    assign multi3 = input_3 * coeff_3;
    assign product3 = $signed({multi3[28:0], 2'b00});

    assign multi4 = input_4 * coeff_4;
    assign product4 = $signed({multi4[28:0], 2'b00});

    assign multi5 = input_5 * coeff_5;
    assign product5 = $signed({multi5[28:0], 2'b00});

    assign multi6 = input_6 * coeff_6;
    assign product6 = $signed({multi6[28:0], 2'b00});

    assign multi7 = input_7 * coeff_7;
    assign product7 = $signed({multi7[28:0], 2'b00});

    assign multi8 = input_8 * coeff_8;
    assign product8 = $signed({multi8[28:0], 2'b00});

    assign multi9 = input_9 * coeff_9;
    assign product9 = $signed({multi9[28:0], 2'b00});

    assign multi10 = input_10 * coeff_10;
    assign product10 = $signed({multi10[28:0], 2'b00});

    assign multi11 = input_11 * coeff_11;
    assign product11 = $signed({multi11[28:0], 2'b00});

    assign multi12 = input_12 * coeff_12;
    assign product12 = $signed({multi12[28:0], 2'b00});

    assign multi13 = input_13 * coeff_13;
    assign product13 = $signed({multi13[28:0], 2'b00});

    assign multi14 = input_14 * coeff_14;
    assign product14 = $signed({multi14[28:0], 2'b00});

    assign multi15 = input_15 * coeff_15;
    assign product15 = $signed({multi15[28:0], 2'b00});

    assign multi16 = input_16 * coeff_16;
    assign product16 = $signed({multi16[28:0], 2'b00});

    assign multi17 = input_17 * coeff_17;
    assign product17 = $signed({multi17[28:0], 2'b00});

    assign multi18 = input_18 * coeff_18;
    assign product18 = $signed({multi18[28:0], 2'b00});

    assign multi19 = input_19 * coeff_19;
    assign product19 = $signed({multi19[28:0], 2'b00});

    assign multi20 = input_20 * coeff_20;
    assign product20 = $signed({multi20[28:0], 2'b00});

    assign multi21 = input_21 * coeff_21;
    assign product21 = $signed({multi21[28:0], 2'b00});

    assign multi22 = input_22 * coeff_22;
    assign product22 = $signed({multi22[28:0], 2'b00});

    assign multi23 = input_23 * coeff_23;
    assign product23 = $signed({multi23[28:0], 2'b00});

    assign multi24 = input_24 * coeff_24;
    assign product24 = $signed({multi24[28:0], 2'b00});

    assign multi25 = input_25 * coeff_25;
    assign product25 = $signed({multi25[28:0], 2'b00});

    assign multi26 = input_26 * coeff_26;
    assign product26 = $signed({multi26[28:0], 2'b00});

    assign multi27 = input_27 * coeff_27;
    assign product27 = $signed({multi27[28:0], 2'b00});

    assign multi28 = input_28 * coeff_28;
    assign product28 = $signed({multi28[28:0], 2'b00});

    assign multi29 = input_29 * coeff_29;
    assign product29 = $signed({multi29[28:0], 2'b00});

    assign multi30 = input_30 * coeff_30;
    assign product30 = $signed({multi30[28:0], 2'b00});

    assign multi31 = input_31 * coeff_31;
    assign product31 = $signed({multi31[28:0], 2'b00});

    assign multi32 = input_32 * coeff_32;
    assign product32 = $signed({multi32[28:0], 2'b00});

    assign multi33 = input_33 * coeff_33;
    assign product33 = $signed({multi33[28:0], 2'b00});

    assign multi34 = input_34 * coeff_34;
    assign product34 = $signed({multi34[28:0], 2'b00});

    assign multi35 = input_35 * coeff_35;
    assign product35 = $signed({multi35[28:0], 2'b00});

    assign multi36 = input_36 * coeff_36;
    assign product36 = $signed({multi36[28:0], 2'b00});

    assign multi37 = input_37 * coeff_37;
    assign product37 = $signed({multi37[28:0], 2'b00});

    assign multi38 = input_38 * coeff_38;
    assign product38 = $signed({multi38[28:0], 2'b00});

    assign multi39 = input_39 * coeff_39;
    assign product39 = $signed({multi39[28:0], 2'b00});

    assign multi40 = input_40 * coeff_40;
    assign product40 = $signed({multi40[28:0], 2'b00});

    assign multi41 = input_41 * coeff_41;
    assign product41 = $signed({multi41[28:0], 2'b00});

    assign multi42 = input_42 * coeff_42;
    assign product42 = $signed({multi42[28:0], 2'b00});

    assign multi43 = input_43 * coeff_43;
    assign product43 = $signed({multi43[28:0], 2'b00});

    assign multi44 = input_44 * coeff_44;
    assign product44 = $signed({multi44[28:0], 2'b00});

    assign multi45 = input_45 * coeff_45;
    assign product45 = $signed({multi45[28:0], 2'b00});

    assign multi46 = input_46 * coeff_46;
    assign product46 = $signed({multi46[28:0], 2'b00});

    assign multi47 = input_47 * coeff_47;
    assign product47 = $signed({multi47[28:0], 2'b00});

    assign multi48 = input_48 * coeff_48;
    assign product48 = $signed({multi48[28:0], 2'b00});

    assign multi49 = input_49 * coeff_49;
    assign product49 = $signed({multi49[28:0], 2'b00});
  

    assign add_signext_0 = $signed({{3{product0[30]}}, product0});
    assign add_signext_1 = $signed({{3{product1[30]}}, product1});
    assign add_signext_3 = $signed({{3{product2[30]}}, product2});
    assign add_signext_5 = $signed({{3{product3[30]}}, product3});
    assign add_signext_7 = $signed({{3{product4[30]}}, product4});
    assign add_signext_9 = $signed({{3{product5[30]}}, product5});
    assign add_signext_11 = $signed({{3{product6[30]}}, product6});
    assign add_signext_13 = $signed({{3{product7[30]}}, product7});
    assign add_signext_15 = $signed({{3{product8[30]}}, product8});
    assign add_signext_17 = $signed({{3{product9[30]}}, product9});
    assign add_signext_19 = $signed({{3{product10[30]}}, product10});
    assign add_signext_21 = $signed({{3{product11[30]}}, product11});
    assign add_signext_23 = $signed({{3{product12[30]}}, product12});
    assign add_signext_25 = $signed({{3{product13[30]}}, product13});
    assign add_signext_27 = $signed({{3{product14[30]}}, product14});
    assign add_signext_29 = $signed({{3{product15[30]}}, product15});
    assign add_signext_31 = $signed({{3{product16[30]}}, product16});
    assign add_signext_33 = $signed({{3{product17[30]}}, product17});
    assign add_signext_35 = $signed({{3{product18[30]}}, product18});
    assign add_signext_37 = $signed({{3{product19[30]}}, product19});
    assign add_signext_39 = $signed({{3{product20[30]}}, product20});
    assign add_signext_41 = $signed({{3{product21[30]}}, product21});
    assign add_signext_43 = $signed({{3{product22[30]}}, product22});
    assign add_signext_45 = $signed({{3{product23[30]}}, product23});
    assign add_signext_47 = $signed({{3{product24[30]}}, product24});
    assign add_signext_49 = $signed({{3{product25[30]}}, product25});
    assign add_signext_51 = $signed({{3{product26[30]}}, product26});
    assign add_signext_53 = $signed({{3{product27[30]}}, product27});
    assign add_signext_55 = $signed({{3{product28[30]}}, product28});
    assign add_signext_57 = $signed({{3{product29[30]}}, product29});
    assign add_signext_59 = $signed({{3{product30[30]}}, product30});
    assign add_signext_61 = $signed({{3{product31[30]}}, product31});
    assign add_signext_63 = $signed({{3{product32[30]}}, product32});
    assign add_signext_65 = $signed({{3{product33[30]}}, product33});
    assign add_signext_67 = $signed({{3{product34[30]}}, product34});
    assign add_signext_69 = $signed({{3{product35[30]}}, product35});
    assign add_signext_71 = $signed({{3{product36[30]}}, product36});
    assign add_signext_73 = $signed({{3{product37[30]}}, product37});
    assign add_signext_75 = $signed({{3{product38[30]}}, product38});
    assign add_signext_77 = $signed({{3{product39[30]}}, product39});
    assign add_signext_79 = $signed({{3{product40[30]}}, product40});
    assign add_signext_81 = $signed({{3{product41[30]}}, product41});
    assign add_signext_83 = $signed({{3{product42[30]}}, product42});
    assign add_signext_85 = $signed({{3{product43[30]}}, product43});
    assign add_signext_87 = $signed({{3{product44[30]}}, product44});
    assign add_signext_89 = $signed({{3{product45[30]}}, product45});
    assign add_signext_91 = $signed({{3{product46[30]}}, product46});
    assign add_signext_93 = $signed({{3{product47[30]}}, product47});
    assign add_signext_95 = $signed({{3{product48[30]}}, product48});
    assign add_signext_97 = $signed({{3{product49[30]}}, product49});
    
    assign add_temp_0 = add_signext_0 + add_signext_1;
    assign add_signext_2 = add_temp_0[33:0];

    assign add_temp_1 = add_signext_2 + add_signext_3;
    assign add_signext_4 = add_temp_1[33:0];

    assign add_temp_2 = add_signext_4 + add_signext_5;
    assign add_signext_6 = add_temp_2[33:0];

    assign add_temp_3 = add_signext_6 + add_signext_7;
    assign add_signext_8 = add_temp_3[33:0];

    assign add_temp_4 = add_signext_8 + add_signext_9;
    assign add_signext_10 = add_temp_4[33:0];

    assign add_temp_5 = add_signext_10 + add_signext_11;
    assign add_signext_12 = add_temp_5[33:0];

    assign add_temp_6 = add_signext_12 + add_signext_13;
    assign add_signext_14 = add_temp_6[33:0];

    assign add_temp_7 = add_signext_14 + add_signext_15;
    assign add_signext_16 = add_temp_7[33:0];

    assign add_temp_8 = add_signext_16 + add_signext_17;
    assign add_signext_18 = add_temp_8[33:0];

    assign add_temp_9 = add_signext_18 + add_signext_19;
    assign add_signext_20 = add_temp_9[33:0];

    assign add_temp_10 = add_signext_20 + add_signext_21;
    assign add_signext_22 = add_temp_10[33:0];

    assign add_temp_11 = add_signext_22 + add_signext_23;
    assign add_signext_24 = add_temp_11[33:0];

    assign add_temp_12 = add_signext_24 + add_signext_25;
    assign add_signext_26 = add_temp_12[33:0];

    assign add_temp_13 = add_signext_26 + add_signext_27;
    assign add_signext_28 = add_temp_13[33:0];

    assign add_temp_14 = add_signext_28 + add_signext_29;
    assign add_signext_30 = add_temp_14[33:0];

    assign add_temp_15 = add_signext_30 + add_signext_31;
    assign add_signext_32 = add_temp_15[33:0];

    assign add_temp_16 = add_signext_32 + add_signext_33;
    assign add_signext_34 = add_temp_16[33:0];

    assign add_temp_17 = add_signext_34 + add_signext_35;
    assign add_signext_36 = add_temp_17[33:0];

    assign add_temp_18 = add_signext_36 + add_signext_37;
    assign add_signext_38 = add_temp_18[33:0];

    assign add_temp_19 = add_signext_38 + add_signext_39;
    assign add_signext_40 = add_temp_19[33:0];

    assign add_temp_20 = add_signext_40 + add_signext_41;
    assign add_signext_42 = add_temp_20[33:0];

    assign add_temp_21 = add_signext_42 + add_signext_43;
    assign add_signext_44 = add_temp_21[33:0];

    assign add_temp_22 = add_signext_44 + add_signext_45;
    assign add_signext_46 = add_temp_22[33:0];

    assign add_temp_23 = add_signext_46 + add_signext_47;
    assign add_signext_48 = add_temp_23[33:0];

    assign add_temp_24 = add_signext_48 + add_signext_49;
    assign add_signext_50 = add_temp_24[33:0];

    assign add_temp_25 = add_signext_50 + add_signext_51;
    assign add_signext_52 = add_temp_25[33:0];

    assign add_temp_26 = add_signext_52 + add_signext_53;
    assign add_signext_54 = add_temp_26[33:0];

    assign add_temp_27 = add_signext_54 + add_signext_55;
    assign add_signext_56 = add_temp_27[33:0];

    assign add_temp_28 = add_signext_56 + add_signext_57;
    assign add_signext_58 = add_temp_28[33:0];

    assign add_temp_29 = add_signext_58 + add_signext_59;
    assign add_signext_60 = add_temp_29[33:0];

    assign add_temp_30 = add_signext_60 + add_signext_61;
    assign add_signext_62 = add_temp_30[33:0];

    assign add_temp_31 = add_signext_62 + add_signext_63;
    assign add_signext_64 = add_temp_31[33:0];

    assign add_temp_32 = add_signext_64 + add_signext_65;
    assign add_signext_66 = add_temp_32[33:0];

    assign add_temp_33 = add_signext_66 + add_signext_67;
    assign add_signext_68 = add_temp_33[33:0];

    assign add_temp_34 = add_signext_68 + add_signext_69;
    assign add_signext_70 = add_temp_34[33:0];

    assign add_temp_35 = add_signext_70 + add_signext_71;
    assign add_signext_72 = add_temp_35[33:0];

    assign add_temp_36 = add_signext_72 + add_signext_73;
    assign add_signext_74 = add_temp_36[33:0];

    assign add_temp_37 = add_signext_74 + add_signext_75;
    assign add_signext_76 = add_temp_37[33:0];

    assign add_temp_38 = add_signext_76 + add_signext_77;
    assign add_signext_78 = add_temp_38[33:0];

    assign add_temp_39 = add_signext_78 + add_signext_79;
    assign add_signext_80 = add_temp_39[33:0];

    assign add_temp_40 = add_signext_80 + add_signext_81;
    assign add_signext_82 = add_temp_40[33:0];

    assign add_temp_41 = add_signext_82 + add_signext_83;
    assign add_signext_84 = add_temp_41[33:0];

    assign add_temp_42 = add_signext_84 + add_signext_85;
    assign add_signext_86 = add_temp_42[33:0];

    assign add_temp_43 = add_signext_86 + add_signext_87;
    assign add_signext_88 = add_temp_43[33:0];

    assign add_temp_44 = add_signext_88 + add_signext_89;
    assign add_signext_90 = add_temp_44[33:0];

    assign add_temp_45 = add_signext_90 + add_signext_91;
    assign add_signext_92 = add_temp_45[33:0];

    assign add_temp_46 = add_signext_92 + add_signext_93;
    assign add_signext_94 = add_temp_46[33:0];

    assign add_temp_47 = add_signext_94 + add_signext_95;
    assign add_signext_96 = add_temp_47[33:0];

    assign add_temp_48 = add_signext_96 + add_signext_97;
    assign sum = add_temp_48[33:0];


    assign output_typeconvert = (sum[32:0] + {sum[17], {16{~sum[17]}}})>>>17;

    always @ (posedge enable or posedge reset)
    begin: Output_Register_process
        if (reset == 1'b1) begin
            output_register <= 0;
        end
        else begin
            output_register <= output_typeconvert;
        end
    end // Output_Register_process

    assign out = output_register;
endmodule