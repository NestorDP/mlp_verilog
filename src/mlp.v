module mlp #(
    parameter Q_FRACTIONAL = 15,
    parameter Q_INTEGER    = 7
)(
    input wire clock,
    input wire reset,

    input wire   write_parameters,
    input        [4:0] select_region,
    input        [9:0] address,
    input signed [Q_INTEGER+Q_FRACTIONAL:0] parameters,
        
    // 50 inputs in Q15 format
    input signed [Q_FRACTIONAL:0] input_0,
    input signed [Q_FRACTIONAL:0] input_1,
    input signed [Q_FRACTIONAL:0] input_2,
    input signed [Q_FRACTIONAL:0] input_3,
    input signed [Q_FRACTIONAL:0] input_4,
    input signed [Q_FRACTIONAL:0] input_5,
    input signed [Q_FRACTIONAL:0] input_6,
    input signed [Q_FRACTIONAL:0] input_7,
    input signed [Q_FRACTIONAL:0] input_8,
    input signed [Q_FRACTIONAL:0] input_9,
    input signed [Q_FRACTIONAL:0] input_10,
    input signed [Q_FRACTIONAL:0] input_11,
    input signed [Q_FRACTIONAL:0] input_12,
    input signed [Q_FRACTIONAL:0] input_13,
    input signed [Q_FRACTIONAL:0] input_14,
    input signed [Q_FRACTIONAL:0] input_15,
    input signed [Q_FRACTIONAL:0] input_16,
    input signed [Q_FRACTIONAL:0] input_17,
    input signed [Q_FRACTIONAL:0] input_18,
    input signed [Q_FRACTIONAL:0] input_19,
    input signed [Q_FRACTIONAL:0] input_20,
    input signed [Q_FRACTIONAL:0] input_21,
    input signed [Q_FRACTIONAL:0] input_22,
    input signed [Q_FRACTIONAL:0] input_23,
    input signed [Q_FRACTIONAL:0] input_24,
    input signed [Q_FRACTIONAL:0] input_25,
    input signed [Q_FRACTIONAL:0] input_26,
    input signed [Q_FRACTIONAL:0] input_27,
    input signed [Q_FRACTIONAL:0] input_28,
    input signed [Q_FRACTIONAL:0] input_29,
    input signed [Q_FRACTIONAL:0] input_30,
    input signed [Q_FRACTIONAL:0] input_31,
    input signed [Q_FRACTIONAL:0] input_32,
    input signed [Q_FRACTIONAL:0] input_33,
    input signed [Q_FRACTIONAL:0] input_34,
    input signed [Q_FRACTIONAL:0] input_35,
    input signed [Q_FRACTIONAL:0] input_36,
    input signed [Q_FRACTIONAL:0] input_37,
    input signed [Q_FRACTIONAL:0] input_38,
    input signed [Q_FRACTIONAL:0] input_39,
    input signed [Q_FRACTIONAL:0] input_40,
    input signed [Q_FRACTIONAL:0] input_41,
    input signed [Q_FRACTIONAL:0] input_42,
    input signed [Q_FRACTIONAL:0] input_43,
    input signed [Q_FRACTIONAL:0] input_44,
    input signed [Q_FRACTIONAL:0] input_45,
    input signed [Q_FRACTIONAL:0] input_46,
    input signed [Q_FRACTIONAL:0] input_47,
    input signed [Q_FRACTIONAL:0] input_48,
    input signed [Q_FRACTIONAL:0] input_49,
    
    output signed [Q_INTEGER+Q_FRACTIONAL:0] out_neuron_1,
    output signed [Q_INTEGER+Q_FRACTIONAL:0] out_neuron_2,
    output signed [Q_INTEGER+Q_FRACTIONAL:0] out_neuron_3,
    output signed [Q_INTEGER+Q_FRACTIONAL:0] out_neuron_4,
    output signed [Q_INTEGER+Q_FRACTIONAL:0] out_neuron_5,

    output signed [Q_INTEGER+Q_FRACTIONAL:0] out_linear,

    output signed [45:0] out_mult0,
    output signed [45:0] out_mult1,
    output signed [45:0] out_mult2,
    output signed [45:0] out_mult3,
    output signed [45:0] out_mult4,

    output signed [Q_FRACTIONAL:0] out
);

    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_0;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_1;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_2;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_3;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_4;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_5;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_6;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_7;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_8;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_9;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_10;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_11;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_12;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_13;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_14;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_15;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_16;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_17;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_18;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_19;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_20;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_21;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_22;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_23;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_24;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_25;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_26;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_27;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_28;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_29;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_30;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_31;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_32;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_33;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_34;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_35;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_36;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_37;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_38;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_39;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_40;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_41;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_42;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_43;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_44;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_45;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_46;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_47;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_48;
    wire signed [Q_FRACTIONAL:0] INPUT_WIRE_49;

    wire signed [Q_INTEGER+Q_FRACTIONAL:0] HIDDEN_WIRE_0;
    wire signed [Q_INTEGER+Q_FRACTIONAL:0] HIDDEN_WIRE_1;
    wire signed [Q_INTEGER+Q_FRACTIONAL:0] HIDDEN_WIRE_2;
    wire signed [Q_INTEGER+Q_FRACTIONAL:0] HIDDEN_WIRE_3;
    wire signed [Q_INTEGER+Q_FRACTIONAL:0] HIDDEN_WIRE_4;

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

    // MLP parameters memory
    //  attribute hints the synthesizer to implement this as block RAM
    (* ram_style = "block" *)
    // 25(parameters network) * 261(parameters per network) = 6525
    reg signed [Q_INTEGER+Q_FRACTIONAL:0] parameter_registers [1:6525];
    // select_region * 261 + address
    wire [12:0] write_addr = (select_region << 8) + (select_region << 2) + 1 + address;
        
    always @(posedge clock) begin
        if (write_parameters) begin
            parameter_registers[write_addr] <= parameters;
        end
    end

    // Instantiate neuron_50in_relu
    neuron_50in_relu # (
        .Q_FRACTIONAL(Q_FRACTIONAL),
        .Q_INTEGER(Q_INTEGER)
    ) U1 (
        .clock(clock),
        .reset(reset),

        .bias(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 250]), 

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

        .weight_0(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 0]),
        .weight_1(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 5]),
        .weight_2(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 10]),
        .weight_3(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 15]),
        .weight_4(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 20]),
        .weight_5(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 25]),
        .weight_6(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 30]),
        .weight_7(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 35]),
        .weight_8(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 40]),
        .weight_9(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 45]),
        .weight_10(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 50]),
        .weight_11(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 55]),
        .weight_12(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 60]),
        .weight_13(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 65]),
        .weight_14(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 70]),
        .weight_15(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 75]),
        .weight_16(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 80]),
        .weight_17(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 85]),
        .weight_18(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 90]),
        .weight_19(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 95]),
        .weight_20(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 100]),
        .weight_21(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 105]),
        .weight_22(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 110]),
        .weight_23(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 115]),
        .weight_24(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 120]),
        .weight_25(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 125]),
        .weight_26(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 130]),
        .weight_27(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 135]),
        .weight_28(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 140]),
        .weight_29(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 145]),
        .weight_30(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 150]),
        .weight_31(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 155]),
        .weight_32(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 160]),
        .weight_33(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 165]),
        .weight_34(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 170]),
        .weight_35(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 175]),
        .weight_36(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 180]),
        .weight_37(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 185]),
        .weight_38(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 190]),
        .weight_39(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 195]),
        .weight_40(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 200]),
        .weight_41(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 205]),
        .weight_42(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 210]),
        .weight_43(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 215]),
        .weight_44(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 220]),
        .weight_45(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 225]),
        .weight_46(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 230]),
        .weight_47(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 235]),
        .weight_48(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 240]),
        .weight_49(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 245]),        
        .out(HIDDEN_WIRE_0)
    );

    neuron_50in_relu # (
        .Q_FRACTIONAL(Q_FRACTIONAL),
        .Q_INTEGER(Q_INTEGER)
    ) U2 (
        .clock(clock),
        .reset(reset),

        .bias(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 251]), 

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

        .weight_0(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 1]),
        .weight_1(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 6]),
        .weight_2(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 11]),
        .weight_3(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 16]),
        .weight_4(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 21]),
        .weight_5(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 26]),
        .weight_6(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 31]),
        .weight_7(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 36]),
        .weight_8(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 41]),
        .weight_9(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 46]),
        .weight_10(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 51]),
        .weight_11(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 56]),
        .weight_12(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 61]),
        .weight_13(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 66]),
        .weight_14(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 71]),
        .weight_15(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 76]),
        .weight_16(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 81]),
        .weight_17(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 86]),
        .weight_18(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 91]),
        .weight_19(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 96]),
        .weight_20(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 101]),
        .weight_21(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 106]),
        .weight_22(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 111]),
        .weight_23(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 116]),
        .weight_24(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 121]),
        .weight_25(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 126]),
        .weight_26(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 131]),
        .weight_27(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 136]),
        .weight_28(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 141]),
        .weight_29(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 146]),
        .weight_30(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 151]),
        .weight_31(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 156]),
        .weight_32(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 161]),
        .weight_33(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 166]),
        .weight_34(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 171]),
        .weight_35(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 176]),
        .weight_36(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 181]),
        .weight_37(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 186]),
        .weight_38(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 191]),
        .weight_39(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 196]),
        .weight_40(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 201]),
        .weight_41(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 206]),
        .weight_42(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 211]),
        .weight_43(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 216]),
        .weight_44(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 221]),
        .weight_45(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 226]),
        .weight_46(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 231]),
        .weight_47(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 236]),
        .weight_48(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 241]),
        .weight_49(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 246]),
        .out(HIDDEN_WIRE_1)
    );

    neuron_50in_relu # (
        .Q_FRACTIONAL(Q_FRACTIONAL),
        .Q_INTEGER(Q_INTEGER)
    ) U3 (
        .clock(clock),
        .reset(reset),

        .bias(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 252]), 

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

        .weight_0(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 2]),
        .weight_1(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 7]),
        .weight_2(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 12]),
        .weight_3(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 17]),
        .weight_4(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 22]),
        .weight_5(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 27]),
        .weight_6(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 32]),
        .weight_7(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 37]),
        .weight_8(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 42]),
        .weight_9(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 47]),
        .weight_10(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 52]),
        .weight_11(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 57]),
        .weight_12(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 62]),
        .weight_13(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 67]),
        .weight_14(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 72]),
        .weight_15(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 77]),
        .weight_16(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 82]),
        .weight_17(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 87]),
        .weight_18(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 92]),
        .weight_19(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 97]),
        .weight_20(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 102]),
        .weight_21(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 107]),
        .weight_22(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 112]),
        .weight_23(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 117]),
        .weight_24(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 122]),
        .weight_25(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 127]),
        .weight_26(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 132]),
        .weight_27(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 137]),
        .weight_28(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 142]),
        .weight_29(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 147]),
        .weight_30(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 152]),
        .weight_31(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 157]),
        .weight_32(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 162]),
        .weight_33(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 167]),
        .weight_34(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 172]),
        .weight_35(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 177]),
        .weight_36(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 182]),
        .weight_37(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 187]),
        .weight_38(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 192]),
        .weight_39(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 197]),
        .weight_40(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 202]),
        .weight_41(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 207]),
        .weight_42(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 212]),
        .weight_43(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 217]),
        .weight_44(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 222]),
        .weight_45(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 227]),
        .weight_46(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 232]),
        .weight_47(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 237]),
        .weight_48(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 242]),
        .weight_49(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 247]),
        .out(HIDDEN_WIRE_2)
    );

    neuron_50in_relu # (
        .Q_FRACTIONAL(Q_FRACTIONAL),
        .Q_INTEGER(Q_INTEGER)
    ) U4 (
        .clock(clock),
        .reset(reset),

        .bias(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 253]),

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

        .weight_0(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 3]),
        .weight_1(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 8]),
        .weight_2(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 13]),
        .weight_3(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 18]),
        .weight_4(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 23]),
        .weight_5(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 28]),
        .weight_6(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 33]),
        .weight_7(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 38]),
        .weight_8(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 43]),
        .weight_9(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 48]),
        .weight_10(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 53]),
        .weight_11(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 58]),
        .weight_12(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 63]),
        .weight_13(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 68]),
        .weight_14(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 73]),
        .weight_15(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 78]),
        .weight_16(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 83]),
        .weight_17(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 88]),
        .weight_18(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 93]),
        .weight_19(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 98]),
        .weight_20(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 103]),
        .weight_21(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 108]),
        .weight_22(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 113]),
        .weight_23(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 118]),
        .weight_24(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 123]),
        .weight_25(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 128]),
        .weight_26(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 133]),
        .weight_27(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 138]),
        .weight_28(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 143]),
        .weight_29(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 148]),
        .weight_30(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 153]),
        .weight_31(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 158]),
        .weight_32(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 163]),
        .weight_33(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 168]),
        .weight_34(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 173]),
        .weight_35(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 178]),
        .weight_36(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 183]),
        .weight_37(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 188]),
        .weight_38(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 193]),
        .weight_39(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 198]),
        .weight_40(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 203]),
        .weight_41(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 208]),
        .weight_42(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 213]),
        .weight_43(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 218]),
        .weight_44(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 223]),
        .weight_45(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 228]),
        .weight_46(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 233]),
        .weight_47(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 238]),
        .weight_48(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 243]),
        .weight_49(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 248]),
        .out(HIDDEN_WIRE_3)
    );

    neuron_50in_relu # (
        .Q_FRACTIONAL(Q_FRACTIONAL),
        .Q_INTEGER(Q_INTEGER)
    ) U5 (
        .clock(clock),
        .reset(reset),

        .bias(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 254]), 

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

        .weight_0(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 4]),
        .weight_1(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 9]),
        .weight_2(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 14]),
        .weight_3(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 19]),
        .weight_4(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 24]),
        .weight_5(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 29]),
        .weight_6(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 34]),
        .weight_7(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 39]),
        .weight_8(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 44]),
        .weight_9(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 49]),
        .weight_10(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 54]),
        .weight_11(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 59]),
        .weight_12(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 64]),
        .weight_13(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 69]),
        .weight_14(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 74]),
        .weight_15(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 79]),
        .weight_16(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 84]),
        .weight_17(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 89]),
        .weight_18(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 94]),
        .weight_19(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 99]),
        .weight_20(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 104]),
        .weight_21(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 109]),
        .weight_22(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 114]),
        .weight_23(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 119]),
        .weight_24(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 124]),
        .weight_25(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 129]),
        .weight_26(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 134]),
        .weight_27(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 139]),
        .weight_28(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 144]),
        .weight_29(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 149]),
        .weight_30(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 154]),
        .weight_31(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 159]),
        .weight_32(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 164]),
        .weight_33(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 169]),
        .weight_34(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 174]),
        .weight_35(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 179]),
        .weight_36(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 184]),
        .weight_37(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 189]),
        .weight_38(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 194]),
        .weight_39(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 199]),
        .weight_40(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 204]),
        .weight_41(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 209]),
        .weight_42(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 214]),
        .weight_43(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 219]),
        .weight_44(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 224]),
        .weight_45(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 229]),
        .weight_46(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 234]),
        .weight_47(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 239]),
        .weight_48(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 244]),
        .weight_49(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 249]),
        .out(HIDDEN_WIRE_4)
    );

    neuron_5in_sigmoid # (
        .Q_FRACTIONAL(Q_FRACTIONAL),
        .Q_INTEGER(Q_INTEGER)
    ) U6 (
        .clock(clock),
        .reset(reset),

        .bias(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 260]),
        
        .input_0(HIDDEN_WIRE_0),
        .input_1(HIDDEN_WIRE_1),
        .input_2(HIDDEN_WIRE_2),
        .input_3(HIDDEN_WIRE_3),
        .input_4(HIDDEN_WIRE_4),

        .weight_0(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 255]),
        .weight_1(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 256]),
        .weight_2(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 257]),
        .weight_3(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 258]),
        .weight_4(parameter_registers[((select_region << 8) + (select_region << 2) + 1) + 259]),
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
