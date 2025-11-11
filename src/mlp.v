module mlp (
    input wire          clock_i,
    input wire          reset_neg_i,
    input wire          write_enable_i,

    input        [9:0]  address_i,
    input signed [22:0] parameters_i,
        
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

    reg signed [22:0] mlp_parameters[0:260];    
    integer i;
    always @(posedge clock or negedge reset_neg_i) begin
        if (!reset_neg_i) begin
            for (i = 0; i <= 260; i = i + 1) begin
                mlp_parameters[i] <= 0;
            end
        end
        else if (write_enable_i) begin
            mlp_parameters[address_i] <= parameters_i;
        end
    end

    // Instantiate neuron_50in_relu
    neuron_50in_relu U1 (
        .clock(clock),
        .reset(reset),

        .bias(mlp_parameters[250]), 

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

        .parameters_i_0(mlp_parameters[0]),
        .parameters_i_1(mlp_parameters[5]),
        .parameters_i_2(mlp_parameters[10]),
        .parameters_i_3(mlp_parameters[15]),
        .parameters_i_4(mlp_parameters[20]),
        .parameters_i_5(mlp_parameters[25]),
        .parameters_i_6(mlp_parameters[30]),
        .parameters_i_7(mlp_parameters[35]),
        .parameters_i_8(mlp_parameters[40]),
        .parameters_i_9(mlp_parameters[45]),
        .parameters_i_10(mlp_parameters[50]),
        .parameters_i_11(mlp_parameters[55]),
        .parameters_i_12(mlp_parameters[60]),
        .parameters_i_13(mlp_parameters[65]),
        .parameters_i_14(mlp_parameters[70]),
        .parameters_i_15(mlp_parameters[75]),
        .parameters_i_16(mlp_parameters[80]),
        .parameters_i_17(mlp_parameters[85]),
        .parameters_i_18(mlp_parameters[90]),
        .parameters_i_19(mlp_parameters[95]),
        .parameters_i_20(mlp_parameters[100]),
        .parameters_i_21(mlp_parameters[105]),
        .parameters_i_22(mlp_parameters[110]),
        .parameters_i_23(mlp_parameters[115]),
        .parameters_i_24(mlp_parameters[120]),
        .parameters_i_25(mlp_parameters[125]),
        .parameters_i_26(mlp_parameters[130]),
        .parameters_i_27(mlp_parameters[135]),
        .parameters_i_28(mlp_parameters[140]),
        .parameters_i_29(mlp_parameters[145]),
        .parameters_i_30(mlp_parameters[150]),
        .parameters_i_31(mlp_parameters[155]),
        .parameters_i_32(mlp_parameters[160]),
        .parameters_i_33(mlp_parameters[165]),
        .parameters_i_34(mlp_parameters[170]),
        .parameters_i_35(mlp_parameters[175]),
        .parameters_i_36(mlp_parameters[180]),
        .parameters_i_37(mlp_parameters[185]),
        .parameters_i_38(mlp_parameters[190]),
        .parameters_i_39(mlp_parameters[195]),
        .parameters_i_40(mlp_parameters[200]),
        .parameters_i_41(mlp_parameters[205]),
        .parameters_i_42(mlp_parameters[210]),
        .parameters_i_43(mlp_parameters[215]),
        .parameters_i_44(mlp_parameters[220]),
        .parameters_i_45(mlp_parameters[225]),
        .parameters_i_46(mlp_parameters[230]),
        .parameters_i_47(mlp_parameters[235]),
        .parameters_i_48(mlp_parameters[240]),
        .parameters_i_49(mlp_parameters[245]),        
        .out(HIDDEN_WIRE_0)
    );

    neuron_50in_relu U2 (
        .clock(clock),
        .reset(reset),

        .bias(mlp_parameters[251]), 

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

        .parameters_i_0(mlp_parameters[1]),
        .parameters_i_1(mlp_parameters[6]),
        .parameters_i_2(mlp_parameters[11]),
        .parameters_i_3(mlp_parameters[16]),
        .parameters_i_4(mlp_parameters[21]),
        .parameters_i_5(mlp_parameters[26]),
        .parameters_i_6(mlp_parameters[31]),
        .parameters_i_7(mlp_parameters[36]),
        .parameters_i_8(mlp_parameters[41]),
        .parameters_i_9(mlp_parameters[46]),
        .parameters_i_10(mlp_parameters[51]),
        .parameters_i_11(mlp_parameters[56]),
        .parameters_i_12(mlp_parameters[61]),
        .parameters_i_13(mlp_parameters[66]),
        .parameters_i_14(mlp_parameters[71]),
        .parameters_i_15(mlp_parameters[76]),
        .parameters_i_16(mlp_parameters[81]),
        .parameters_i_17(mlp_parameters[86]),
        .parameters_i_18(mlp_parameters[91]),
        .parameters_i_19(mlp_parameters[96]),
        .parameters_i_20(mlp_parameters[101]),
        .parameters_i_21(mlp_parameters[106]),
        .parameters_i_22(mlp_parameters[111]),
        .parameters_i_23(mlp_parameters[116]),
        .parameters_i_24(mlp_parameters[121]),
        .parameters_i_25(mlp_parameters[126]),
        .parameters_i_26(mlp_parameters[131]),
        .parameters_i_27(mlp_parameters[136]),
        .parameters_i_28(mlp_parameters[141]),
        .parameters_i_29(mlp_parameters[146]),
        .parameters_i_30(mlp_parameters[151]),
        .parameters_i_31(mlp_parameters[156]),
        .parameters_i_32(mlp_parameters[161]),
        .parameters_i_33(mlp_parameters[166]),
        .parameters_i_34(mlp_parameters[171]),
        .parameters_i_35(mlp_parameters[176]),
        .parameters_i_36(mlp_parameters[181]),
        .parameters_i_37(mlp_parameters[186]),
        .parameters_i_38(mlp_parameters[191]),
        .parameters_i_39(mlp_parameters[196]),
        .parameters_i_40(mlp_parameters[201]),
        .parameters_i_41(mlp_parameters[206]),
        .parameters_i_42(mlp_parameters[211]),
        .parameters_i_43(mlp_parameters[216]),
        .parameters_i_44(mlp_parameters[221]),
        .parameters_i_45(mlp_parameters[226]),
        .parameters_i_46(mlp_parameters[231]),
        .parameters_i_47(mlp_parameters[236]),
        .parameters_i_48(mlp_parameters[241]),
        .parameters_i_49(mlp_parameters[246]),
        .out(HIDDEN_WIRE_1)
    );

    neuron_50in_relu U3 (
        .clock(clock),
        .reset(reset),

        .bias(mlp_parameters[252]), 

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

        .parameters_i_0(mlp_parameters[2]),
        .parameters_i_1(mlp_parameters[7]),
        .parameters_i_2(mlp_parameters[12]),
        .parameters_i_3(mlp_parameters[17]),
        .parameters_i_4(mlp_parameters[22]),
        .parameters_i_5(mlp_parameters[27]),
        .parameters_i_6(mlp_parameters[32]),
        .parameters_i_7(mlp_parameters[37]),
        .parameters_i_8(mlp_parameters[42]),
        .parameters_i_9(mlp_parameters[47]),
        .parameters_i_10(mlp_parameters[52]),
        .parameters_i_11(mlp_parameters[57]),
        .parameters_i_12(mlp_parameters[62]),
        .parameters_i_13(mlp_parameters[67]),
        .parameters_i_14(mlp_parameters[72]),
        .parameters_i_15(mlp_parameters[77]),
        .parameters_i_16(mlp_parameters[82]),
        .parameters_i_17(mlp_parameters[87]),
        .parameters_i_18(mlp_parameters[92]),
        .parameters_i_19(mlp_parameters[97]),
        .parameters_i_20(mlp_parameters[102]),
        .parameters_i_21(mlp_parameters[107]),
        .parameters_i_22(mlp_parameters[112]),
        .parameters_i_23(mlp_parameters[117]),
        .parameters_i_24(mlp_parameters[122]),
        .parameters_i_25(mlp_parameters[127]),
        .parameters_i_26(mlp_parameters[132]),
        .parameters_i_27(mlp_parameters[137]),
        .parameters_i_28(mlp_parameters[142]),
        .parameters_i_29(mlp_parameters[147]),
        .parameters_i_30(mlp_parameters[152]),
        .parameters_i_31(mlp_parameters[157]),
        .parameters_i_32(mlp_parameters[162]),
        .parameters_i_33(mlp_parameters[167]),
        .parameters_i_34(mlp_parameters[172]),
        .parameters_i_35(mlp_parameters[177]),
        .parameters_i_36(mlp_parameters[182]),
        .parameters_i_37(mlp_parameters[187]),
        .parameters_i_38(mlp_parameters[192]),
        .parameters_i_39(mlp_parameters[197]),
        .parameters_i_40(mlp_parameters[202]),
        .parameters_i_41(mlp_parameters[207]),
        .parameters_i_42(mlp_parameters[212]),
        .parameters_i_43(mlp_parameters[217]),
        .parameters_i_44(mlp_parameters[222]),
        .parameters_i_45(mlp_parameters[227]),
        .parameters_i_46(mlp_parameters[232]),
        .parameters_i_47(mlp_parameters[237]),
        .parameters_i_48(mlp_parameters[242]),
        .parameters_i_49(mlp_parameters[247]),
        .out(HIDDEN_WIRE_2)
    );

    neuron_50in_relu U4 (
        .clock(clock),
        .reset(reset),

        .bias(mlp_parameters[253]),

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

        .parameters_i_0(mlp_parameters[3]),
        .parameters_i_1(mlp_parameters[8]),
        .parameters_i_2(mlp_parameters[13]),
        .parameters_i_3(mlp_parameters[18]),
        .parameters_i_4(mlp_parameters[23]),
        .parameters_i_5(mlp_parameters[28]),
        .parameters_i_6(mlp_parameters[33]),
        .parameters_i_7(mlp_parameters[38]),
        .parameters_i_8(mlp_parameters[43]),
        .parameters_i_9(mlp_parameters[48]),
        .parameters_i_10(mlp_parameters[53]),
        .parameters_i_11(mlp_parameters[58]),
        .parameters_i_12(mlp_parameters[63]),
        .parameters_i_13(mlp_parameters[68]),
        .parameters_i_14(mlp_parameters[73]),
        .parameters_i_15(mlp_parameters[78]),
        .parameters_i_16(mlp_parameters[83]),
        .parameters_i_17(mlp_parameters[88]),
        .parameters_i_18(mlp_parameters[93]),
        .parameters_i_19(mlp_parameters[98]),
        .parameters_i_20(mlp_parameters[103]),
        .parameters_i_21(mlp_parameters[108]),
        .parameters_i_22(mlp_parameters[113]),
        .parameters_i_23(mlp_parameters[118]),
        .parameters_i_24(mlp_parameters[123]),
        .parameters_i_25(mlp_parameters[128]),
        .parameters_i_26(mlp_parameters[133]),
        .parameters_i_27(mlp_parameters[138]),
        .parameters_i_28(mlp_parameters[143]),
        .parameters_i_29(mlp_parameters[148]),
        .parameters_i_30(mlp_parameters[153]),
        .parameters_i_31(mlp_parameters[158]),
        .parameters_i_32(mlp_parameters[163]),
        .parameters_i_33(mlp_parameters[168]),
        .parameters_i_34(mlp_parameters[173]),
        .parameters_i_35(mlp_parameters[178]),
        .parameters_i_36(mlp_parameters[183]),
        .parameters_i_37(mlp_parameters[188]),
        .parameters_i_38(mlp_parameters[193]),
        .parameters_i_39(mlp_parameters[198]),
        .parameters_i_40(mlp_parameters[203]),
        .parameters_i_41(mlp_parameters[208]),
        .parameters_i_42(mlp_parameters[213]),
        .parameters_i_43(mlp_parameters[218]),
        .parameters_i_44(mlp_parameters[223]),
        .parameters_i_45(mlp_parameters[228]),
        .parameters_i_46(mlp_parameters[233]),
        .parameters_i_47(mlp_parameters[238]),
        .parameters_i_48(mlp_parameters[243]),
        .parameters_i_49(mlp_parameters[248]),
        .out(HIDDEN_WIRE_3)
    );

    neuron_50in_relu U5 (
        .clock(clock),
        .reset(reset),

        .bias(mlp_parameters[254]), 

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

        .parameters_i_0(mlp_parameters[4]),
        .parameters_i_1(mlp_parameters[9]),
        .parameters_i_2(mlp_parameters[14]),
        .parameters_i_3(mlp_parameters[19]),
        .parameters_i_4(mlp_parameters[24]),
        .parameters_i_5(mlp_parameters[29]),
        .parameters_i_6(mlp_parameters[34]),
        .parameters_i_7(mlp_parameters[39]),
        .parameters_i_8(mlp_parameters[44]),
        .parameters_i_9(mlp_parameters[49]),
        .parameters_i_10(mlp_parameters[54]),
        .parameters_i_11(mlp_parameters[59]),
        .parameters_i_12(mlp_parameters[64]),
        .parameters_i_13(mlp_parameters[69]),
        .parameters_i_14(mlp_parameters[74]),
        .parameters_i_15(mlp_parameters[79]),
        .parameters_i_16(mlp_parameters[84]),
        .parameters_i_17(mlp_parameters[89]),
        .parameters_i_18(mlp_parameters[94]),
        .parameters_i_19(mlp_parameters[99]),
        .parameters_i_20(mlp_parameters[104]),
        .parameters_i_21(mlp_parameters[109]),
        .parameters_i_22(mlp_parameters[114]),
        .parameters_i_23(mlp_parameters[119]),
        .parameters_i_24(mlp_parameters[124]),
        .parameters_i_25(mlp_parameters[129]),
        .parameters_i_26(mlp_parameters[134]),
        .parameters_i_27(mlp_parameters[139]),
        .parameters_i_28(mlp_parameters[144]),
        .parameters_i_29(mlp_parameters[149]),
        .parameters_i_30(mlp_parameters[154]),
        .parameters_i_31(mlp_parameters[159]),
        .parameters_i_32(mlp_parameters[164]),
        .parameters_i_33(mlp_parameters[169]),
        .parameters_i_34(mlp_parameters[174]),
        .parameters_i_35(mlp_parameters[179]),
        .parameters_i_36(mlp_parameters[184]),
        .parameters_i_37(mlp_parameters[189]),
        .parameters_i_38(mlp_parameters[194]),
        .parameters_i_39(mlp_parameters[199]),
        .parameters_i_40(mlp_parameters[204]),
        .parameters_i_41(mlp_parameters[209]),
        .parameters_i_42(mlp_parameters[214]),
        .parameters_i_43(mlp_parameters[219]),
        .parameters_i_44(mlp_parameters[224]),
        .parameters_i_45(mlp_parameters[229]),
        .parameters_i_46(mlp_parameters[234]),
        .parameters_i_47(mlp_parameters[239]),
        .parameters_i_48(mlp_parameters[244]),
        .parameters_i_49(mlp_parameters[249]),
        .out(HIDDEN_WIRE_4)
    );

    neuron_5in_sigmoid U6 (
        .clock(clock),
        .reset(reset),

        .bias(mlp_parameters[260]),
        
        .input_0(HIDDEN_WIRE_0),
        .input_1(HIDDEN_WIRE_1),
        .input_2(HIDDEN_WIRE_2),
        .input_3(HIDDEN_WIRE_3),
        .input_4(HIDDEN_WIRE_4),

        .parameters_i_0(mlp_parameters[255]),
        .parameters_i_1(mlp_parameters[256]),
        .parameters_i_2(mlp_parameters[257]),
        .parameters_i_3(mlp_parameters[258]),
        .parameters_i_4(mlp_parameters[259]),
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
