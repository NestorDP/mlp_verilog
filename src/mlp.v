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
    
    output signed [22:0] out_neuron_1,
    output signed [22:0] out_neuron_2,
    output signed [22:0] out_neuron_3,
    output signed [22:0] out_neuron_4,
    output signed [22:0] out_neuron_5,

    output signed [22:0] out_linear,

    output signed [45:0] out_mult0,
    output signed [45:0] out_mult1,
    output signed [45:0] out_mult2,
    output signed [45:0] out_mult3,
    output signed [45:0] out_mult4,

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

    reg signed [22:0] mlp_weight[0:260];    
    integer i;
    always @(posedge clock or posedge reset) begin
        if (reset) begin
            for (i = 0; i <= 260; i = i + 1) begin
                mlp_weight[i] <= 0;
            end
        end
        else if (weight_enable) begin
            mlp_weight[address] <= weight;
        end
    end

    // Instantiate neuron_50in_relu
    neuron_50in_relu U1 (
        .clock(clock),
        .reset(reset),

        .bias(mlp_weight[250]), 

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

        .weight_0(mlp_weight[0]),
        .weight_1(mlp_weight[5]),
        .weight_2(mlp_weight[10]),
        .weight_3(mlp_weight[15]),
        .weight_4(mlp_weight[20]),
        .weight_5(mlp_weight[25]),
        .weight_6(mlp_weight[30]),
        .weight_7(mlp_weight[35]),
        .weight_8(mlp_weight[40]),
        .weight_9(mlp_weight[45]),
        .weight_10(mlp_weight[50]),
        .weight_11(mlp_weight[55]),
        .weight_12(mlp_weight[60]),
        .weight_13(mlp_weight[65]),
        .weight_14(mlp_weight[70]),
        .weight_15(mlp_weight[75]),
        .weight_16(mlp_weight[80]),
        .weight_17(mlp_weight[85]),
        .weight_18(mlp_weight[90]),
        .weight_19(mlp_weight[95]),
        .weight_20(mlp_weight[100]),
        .weight_21(mlp_weight[105]),
        .weight_22(mlp_weight[110]),
        .weight_23(mlp_weight[115]),
        .weight_24(mlp_weight[120]),
        .weight_25(mlp_weight[125]),
        .weight_26(mlp_weight[130]),
        .weight_27(mlp_weight[135]),
        .weight_28(mlp_weight[140]),
        .weight_29(mlp_weight[145]),
        .weight_30(mlp_weight[150]),
        .weight_31(mlp_weight[155]),
        .weight_32(mlp_weight[160]),
        .weight_33(mlp_weight[165]),
        .weight_34(mlp_weight[170]),
        .weight_35(mlp_weight[175]),
        .weight_36(mlp_weight[180]),
        .weight_37(mlp_weight[185]),
        .weight_38(mlp_weight[190]),
        .weight_39(mlp_weight[195]),
        .weight_40(mlp_weight[200]),
        .weight_41(mlp_weight[205]),
        .weight_42(mlp_weight[210]),
        .weight_43(mlp_weight[215]),
        .weight_44(mlp_weight[220]),
        .weight_45(mlp_weight[225]),
        .weight_46(mlp_weight[230]),
        .weight_47(mlp_weight[235]),
        .weight_48(mlp_weight[240]),
        .weight_49(mlp_weight[245]),        
        .out(HIDDEN_WIRE_0)
    );

    neuron_50in_relu U2 (
        .clock(clock),
        .reset(reset),

        .bias(mlp_weight[251]), 

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

        .weight_0(mlp_weight[1]),
        .weight_1(mlp_weight[6]),
        .weight_2(mlp_weight[11]),
        .weight_3(mlp_weight[16]),
        .weight_4(mlp_weight[21]),
        .weight_5(mlp_weight[26]),
        .weight_6(mlp_weight[31]),
        .weight_7(mlp_weight[36]),
        .weight_8(mlp_weight[41]),
        .weight_9(mlp_weight[46]),
        .weight_10(mlp_weight[51]),
        .weight_11(mlp_weight[56]),
        .weight_12(mlp_weight[61]),
        .weight_13(mlp_weight[66]),
        .weight_14(mlp_weight[71]),
        .weight_15(mlp_weight[76]),
        .weight_16(mlp_weight[81]),
        .weight_17(mlp_weight[86]),
        .weight_18(mlp_weight[91]),
        .weight_19(mlp_weight[96]),
        .weight_20(mlp_weight[101]),
        .weight_21(mlp_weight[106]),
        .weight_22(mlp_weight[111]),
        .weight_23(mlp_weight[116]),
        .weight_24(mlp_weight[121]),
        .weight_25(mlp_weight[126]),
        .weight_26(mlp_weight[131]),
        .weight_27(mlp_weight[136]),
        .weight_28(mlp_weight[141]),
        .weight_29(mlp_weight[146]),
        .weight_30(mlp_weight[151]),
        .weight_31(mlp_weight[156]),
        .weight_32(mlp_weight[161]),
        .weight_33(mlp_weight[166]),
        .weight_34(mlp_weight[171]),
        .weight_35(mlp_weight[176]),
        .weight_36(mlp_weight[181]),
        .weight_37(mlp_weight[186]),
        .weight_38(mlp_weight[191]),
        .weight_39(mlp_weight[196]),
        .weight_40(mlp_weight[201]),
        .weight_41(mlp_weight[206]),
        .weight_42(mlp_weight[211]),
        .weight_43(mlp_weight[216]),
        .weight_44(mlp_weight[221]),
        .weight_45(mlp_weight[226]),
        .weight_46(mlp_weight[231]),
        .weight_47(mlp_weight[236]),
        .weight_48(mlp_weight[241]),
        .weight_49(mlp_weight[246]),
        .out(HIDDEN_WIRE_1)
    );

    neuron_50in_relu U3 (
        .clock(clock),
        .reset(reset),

        .bias(mlp_weight[252]), 

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

        .weight_0(mlp_weight[2]),
        .weight_1(mlp_weight[7]),
        .weight_2(mlp_weight[12]),
        .weight_3(mlp_weight[17]),
        .weight_4(mlp_weight[22]),
        .weight_5(mlp_weight[27]),
        .weight_6(mlp_weight[32]),
        .weight_7(mlp_weight[37]),
        .weight_8(mlp_weight[42]),
        .weight_9(mlp_weight[47]),
        .weight_10(mlp_weight[52]),
        .weight_11(mlp_weight[57]),
        .weight_12(mlp_weight[62]),
        .weight_13(mlp_weight[67]),
        .weight_14(mlp_weight[72]),
        .weight_15(mlp_weight[77]),
        .weight_16(mlp_weight[82]),
        .weight_17(mlp_weight[87]),
        .weight_18(mlp_weight[92]),
        .weight_19(mlp_weight[97]),
        .weight_20(mlp_weight[102]),
        .weight_21(mlp_weight[107]),
        .weight_22(mlp_weight[112]),
        .weight_23(mlp_weight[117]),
        .weight_24(mlp_weight[122]),
        .weight_25(mlp_weight[127]),
        .weight_26(mlp_weight[132]),
        .weight_27(mlp_weight[137]),
        .weight_28(mlp_weight[142]),
        .weight_29(mlp_weight[147]),
        .weight_30(mlp_weight[152]),
        .weight_31(mlp_weight[157]),
        .weight_32(mlp_weight[162]),
        .weight_33(mlp_weight[167]),
        .weight_34(mlp_weight[172]),
        .weight_35(mlp_weight[177]),
        .weight_36(mlp_weight[182]),
        .weight_37(mlp_weight[187]),
        .weight_38(mlp_weight[192]),
        .weight_39(mlp_weight[197]),
        .weight_40(mlp_weight[202]),
        .weight_41(mlp_weight[207]),
        .weight_42(mlp_weight[212]),
        .weight_43(mlp_weight[217]),
        .weight_44(mlp_weight[222]),
        .weight_45(mlp_weight[227]),
        .weight_46(mlp_weight[232]),
        .weight_47(mlp_weight[237]),
        .weight_48(mlp_weight[242]),
        .weight_49(mlp_weight[247]),
        .out(HIDDEN_WIRE_2)
    );

    neuron_50in_relu U4 (
        .clock(clock),
        .reset(reset),

        .bias(mlp_weight[253]),

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

        .weight_0(mlp_weight[3]),
        .weight_1(mlp_weight[8]),
        .weight_2(mlp_weight[13]),
        .weight_3(mlp_weight[18]),
        .weight_4(mlp_weight[23]),
        .weight_5(mlp_weight[28]),
        .weight_6(mlp_weight[33]),
        .weight_7(mlp_weight[38]),
        .weight_8(mlp_weight[43]),
        .weight_9(mlp_weight[48]),
        .weight_10(mlp_weight[53]),
        .weight_11(mlp_weight[58]),
        .weight_12(mlp_weight[63]),
        .weight_13(mlp_weight[68]),
        .weight_14(mlp_weight[73]),
        .weight_15(mlp_weight[78]),
        .weight_16(mlp_weight[83]),
        .weight_17(mlp_weight[88]),
        .weight_18(mlp_weight[93]),
        .weight_19(mlp_weight[98]),
        .weight_20(mlp_weight[103]),
        .weight_21(mlp_weight[108]),
        .weight_22(mlp_weight[113]),
        .weight_23(mlp_weight[118]),
        .weight_24(mlp_weight[123]),
        .weight_25(mlp_weight[128]),
        .weight_26(mlp_weight[133]),
        .weight_27(mlp_weight[138]),
        .weight_28(mlp_weight[143]),
        .weight_29(mlp_weight[148]),
        .weight_30(mlp_weight[153]),
        .weight_31(mlp_weight[158]),
        .weight_32(mlp_weight[163]),
        .weight_33(mlp_weight[168]),
        .weight_34(mlp_weight[173]),
        .weight_35(mlp_weight[178]),
        .weight_36(mlp_weight[183]),
        .weight_37(mlp_weight[188]),
        .weight_38(mlp_weight[193]),
        .weight_39(mlp_weight[198]),
        .weight_40(mlp_weight[203]),
        .weight_41(mlp_weight[208]),
        .weight_42(mlp_weight[213]),
        .weight_43(mlp_weight[218]),
        .weight_44(mlp_weight[223]),
        .weight_45(mlp_weight[228]),
        .weight_46(mlp_weight[233]),
        .weight_47(mlp_weight[238]),
        .weight_48(mlp_weight[243]),
        .weight_49(mlp_weight[248]),
        .out(HIDDEN_WIRE_3)
    );

    neuron_50in_relu U5 (
        .clock(clock),
        .reset(reset),

        .bias(mlp_weight[254]), 

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

        .weight_0(mlp_weight[4]),
        .weight_1(mlp_weight[9]),
        .weight_2(mlp_weight[14]),
        .weight_3(mlp_weight[19]),
        .weight_4(mlp_weight[24]),
        .weight_5(mlp_weight[29]),
        .weight_6(mlp_weight[34]),
        .weight_7(mlp_weight[39]),
        .weight_8(mlp_weight[44]),
        .weight_9(mlp_weight[49]),
        .weight_10(mlp_weight[54]),
        .weight_11(mlp_weight[59]),
        .weight_12(mlp_weight[64]),
        .weight_13(mlp_weight[69]),
        .weight_14(mlp_weight[74]),
        .weight_15(mlp_weight[79]),
        .weight_16(mlp_weight[84]),
        .weight_17(mlp_weight[89]),
        .weight_18(mlp_weight[94]),
        .weight_19(mlp_weight[99]),
        .weight_20(mlp_weight[104]),
        .weight_21(mlp_weight[109]),
        .weight_22(mlp_weight[114]),
        .weight_23(mlp_weight[119]),
        .weight_24(mlp_weight[124]),
        .weight_25(mlp_weight[129]),
        .weight_26(mlp_weight[134]),
        .weight_27(mlp_weight[139]),
        .weight_28(mlp_weight[144]),
        .weight_29(mlp_weight[149]),
        .weight_30(mlp_weight[154]),
        .weight_31(mlp_weight[159]),
        .weight_32(mlp_weight[164]),
        .weight_33(mlp_weight[169]),
        .weight_34(mlp_weight[174]),
        .weight_35(mlp_weight[179]),
        .weight_36(mlp_weight[184]),
        .weight_37(mlp_weight[189]),
        .weight_38(mlp_weight[194]),
        .weight_39(mlp_weight[199]),
        .weight_40(mlp_weight[204]),
        .weight_41(mlp_weight[209]),
        .weight_42(mlp_weight[214]),
        .weight_43(mlp_weight[219]),
        .weight_44(mlp_weight[224]),
        .weight_45(mlp_weight[229]),
        .weight_46(mlp_weight[234]),
        .weight_47(mlp_weight[239]),
        .weight_48(mlp_weight[244]),
        .weight_49(mlp_weight[249]),
        .out(HIDDEN_WIRE_4)
    );

    neuron_5in_sigmoid U6 (
        .clock(clock),
        .reset(reset),

        .bias(mlp_weight[260]),
        
        .input_0(HIDDEN_WIRE_0),
        .input_1(HIDDEN_WIRE_1),
        .input_2(HIDDEN_WIRE_2),
        .input_3(HIDDEN_WIRE_3),
        .input_4(HIDDEN_WIRE_4),

        .weight_0(mlp_weight[255]),
        .weight_1(mlp_weight[256]),
        .weight_2(mlp_weight[257]),
        .weight_3(mlp_weight[258]),
        .weight_4(mlp_weight[259]),
        .out_linear(out_linear),

        .out_mult0(out_mult0),
        .out_mult1(out_mult1),
        .out_mult2(out_mult2),
        .out_mult3(out_mult3),
        .out_mult4(out_mult4),
        
        .out(out)
    );

    assign out_neuron_1 = HIDDEN_WIRE_0;
    assign out_neuron_2 = HIDDEN_WIRE_1;
    assign out_neuron_3 = HIDDEN_WIRE_2;
    assign out_neuron_4 = HIDDEN_WIRE_3;
    assign out_neuron_5 = HIDDEN_WIRE_4;
endmodule
