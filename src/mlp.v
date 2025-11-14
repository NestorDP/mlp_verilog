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
    // note: To accommodate for address calculation, we allocate 6600
    // memory positions in total (25 * 264) = 6600. In this way, we can
    // calculate the base address of each region as select_region * 264.
    // Each region uses 261 parameters, so there will be some unused addresses.
    reg signed [Q_INTEGER+Q_FRACTIONAL:0] parameter_registers [0:6599];
    // select_region * 264 + address
    wire [13:0] write_addr = (select_region << 8) + (select_region << 3) + address;
       
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

        .bias(parameter_registers[((select_region << 8) + (select_region << 3)) + 250]), 

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

        .weight_0(parameter_registers[((select_region << 8) + (select_region << 3)) + 0]),
        .weight_1(parameter_registers[((select_region << 8) + (select_region << 3)) + 5]),
        .weight_2(parameter_registers[((select_region << 8) + (select_region << 3)) + 10]),
        .weight_3(parameter_registers[((select_region << 8) + (select_region << 3)) + 15]),
        .weight_4(parameter_registers[((select_region << 8) + (select_region << 3)) + 20]),
        .weight_5(parameter_registers[((select_region << 8) + (select_region << 3)) + 25]),
        .weight_6(parameter_registers[((select_region << 8) + (select_region << 3)) + 30]),
        .weight_7(parameter_registers[((select_region << 8) + (select_region << 3)) + 35]),
        .weight_8(parameter_registers[((select_region << 8) + (select_region << 3)) + 40]),
        .weight_9(parameter_registers[((select_region << 8) + (select_region << 3)) + 45]),
        .weight_10(parameter_registers[((select_region << 8) + (select_region << 3)) + 50]),
        .weight_11(parameter_registers[((select_region << 8) + (select_region << 3)) + 55]),
        .weight_12(parameter_registers[((select_region << 8) + (select_region << 3)) + 60]),
        .weight_13(parameter_registers[((select_region << 8) + (select_region << 3)) + 65]),
        .weight_14(parameter_registers[((select_region << 8) + (select_region << 3)) + 70]),
        .weight_15(parameter_registers[((select_region << 8) + (select_region << 3)) + 75]),
        .weight_16(parameter_registers[((select_region << 8) + (select_region << 3)) + 80]),
        .weight_17(parameter_registers[((select_region << 8) + (select_region << 3)) + 85]),
        .weight_18(parameter_registers[((select_region << 8) + (select_region << 3)) + 90]),
        .weight_19(parameter_registers[((select_region << 8) + (select_region << 3)) + 95]),
        .weight_20(parameter_registers[((select_region << 8) + (select_region << 3)) + 100]),
        .weight_21(parameter_registers[((select_region << 8) + (select_region << 3)) + 105]),
        .weight_22(parameter_registers[((select_region << 8) + (select_region << 3)) + 110]),
        .weight_23(parameter_registers[((select_region << 8) + (select_region << 3)) + 115]),
        .weight_24(parameter_registers[((select_region << 8) + (select_region << 3)) + 120]),
        .weight_25(parameter_registers[((select_region << 8) + (select_region << 3)) + 125]),
        .weight_26(parameter_registers[((select_region << 8) + (select_region << 3)) + 130]),
        .weight_27(parameter_registers[((select_region << 8) + (select_region << 3)) + 135]),
        .weight_28(parameter_registers[((select_region << 8) + (select_region << 3)) + 140]),
        .weight_29(parameter_registers[((select_region << 8) + (select_region << 3)) + 145]),
        .weight_30(parameter_registers[((select_region << 8) + (select_region << 3)) + 150]),
        .weight_31(parameter_registers[((select_region << 8) + (select_region << 3)) + 155]),
        .weight_32(parameter_registers[((select_region << 8) + (select_region << 3)) + 160]),
        .weight_33(parameter_registers[((select_region << 8) + (select_region << 3)) + 165]),
        .weight_34(parameter_registers[((select_region << 8) + (select_region << 3)) + 170]),
        .weight_35(parameter_registers[((select_region << 8) + (select_region << 3)) + 175]),
        .weight_36(parameter_registers[((select_region << 8) + (select_region << 3)) + 180]),
        .weight_37(parameter_registers[((select_region << 8) + (select_region << 3)) + 185]),
        .weight_38(parameter_registers[((select_region << 8) + (select_region << 3)) + 190]),
        .weight_39(parameter_registers[((select_region << 8) + (select_region << 3)) + 195]),
        .weight_40(parameter_registers[((select_region << 8) + (select_region << 3)) + 200]),
        .weight_41(parameter_registers[((select_region << 8) + (select_region << 3)) + 205]),
        .weight_42(parameter_registers[((select_region << 8) + (select_region << 3)) + 210]),
        .weight_43(parameter_registers[((select_region << 8) + (select_region << 3)) + 215]),
        .weight_44(parameter_registers[((select_region << 8) + (select_region << 3)) + 220]),
        .weight_45(parameter_registers[((select_region << 8) + (select_region << 3)) + 225]),
        .weight_46(parameter_registers[((select_region << 8) + (select_region << 3)) + 230]),
        .weight_47(parameter_registers[((select_region << 8) + (select_region << 3)) + 235]),
        .weight_48(parameter_registers[((select_region << 8) + (select_region << 3)) + 240]),
        .weight_49(parameter_registers[((select_region << 8) + (select_region << 3)) + 245]),        
        .out(HIDDEN_WIRE_0)
    );

    neuron_50in_relu # (
        .Q_FRACTIONAL(Q_FRACTIONAL),
        .Q_INTEGER(Q_INTEGER)
    ) U2 (
        .clock(clock),
        .reset(reset),

        .bias(parameter_registers[((select_region << 8) + (select_region << 3)) + 251]), 

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

        .weight_0(parameter_registers[((select_region << 8) + (select_region << 3)) + 1]),
        .weight_1(parameter_registers[((select_region << 8) + (select_region << 3)) + 6]),
        .weight_2(parameter_registers[((select_region << 8) + (select_region << 3)) + 11]),
        .weight_3(parameter_registers[((select_region << 8) + (select_region << 3)) + 16]),
        .weight_4(parameter_registers[((select_region << 8) + (select_region << 3)) + 21]),
        .weight_5(parameter_registers[((select_region << 8) + (select_region << 3)) + 26]),
        .weight_6(parameter_registers[((select_region << 8) + (select_region << 3)) + 31]),
        .weight_7(parameter_registers[((select_region << 8) + (select_region << 3)) + 36]),
        .weight_8(parameter_registers[((select_region << 8) + (select_region << 3)) + 41]),
        .weight_9(parameter_registers[((select_region << 8) + (select_region << 3)) + 46]),
        .weight_10(parameter_registers[((select_region << 8) + (select_region << 3)) + 51]),
        .weight_11(parameter_registers[((select_region << 8) + (select_region << 3)) + 56]),
        .weight_12(parameter_registers[((select_region << 8) + (select_region << 3)) + 61]),
        .weight_13(parameter_registers[((select_region << 8) + (select_region << 3)) + 66]),
        .weight_14(parameter_registers[((select_region << 8) + (select_region << 3)) + 71]),
        .weight_15(parameter_registers[((select_region << 8) + (select_region << 3)) + 76]),
        .weight_16(parameter_registers[((select_region << 8) + (select_region << 3)) + 81]),
        .weight_17(parameter_registers[((select_region << 8) + (select_region << 3)) + 86]),
        .weight_18(parameter_registers[((select_region << 8) + (select_region << 3)) + 91]),
        .weight_19(parameter_registers[((select_region << 8) + (select_region << 3)) + 96]),
        .weight_20(parameter_registers[((select_region << 8) + (select_region << 3)) + 101]),
        .weight_21(parameter_registers[((select_region << 8) + (select_region << 3)) + 106]),
        .weight_22(parameter_registers[((select_region << 8) + (select_region << 3)) + 111]),
        .weight_23(parameter_registers[((select_region << 8) + (select_region << 3)) + 116]),
        .weight_24(parameter_registers[((select_region << 8) + (select_region << 3)) + 121]),
        .weight_25(parameter_registers[((select_region << 8) + (select_region << 3)) + 126]),
        .weight_26(parameter_registers[((select_region << 8) + (select_region << 3)) + 131]),
        .weight_27(parameter_registers[((select_region << 8) + (select_region << 3)) + 136]),
        .weight_28(parameter_registers[((select_region << 8) + (select_region << 3)) + 141]),
        .weight_29(parameter_registers[((select_region << 8) + (select_region << 3)) + 146]),
        .weight_30(parameter_registers[((select_region << 8) + (select_region << 3)) + 151]),
        .weight_31(parameter_registers[((select_region << 8) + (select_region << 3)) + 156]),
        .weight_32(parameter_registers[((select_region << 8) + (select_region << 3)) + 161]),
        .weight_33(parameter_registers[((select_region << 8) + (select_region << 3)) + 166]),
        .weight_34(parameter_registers[((select_region << 8) + (select_region << 3)) + 171]),
        .weight_35(parameter_registers[((select_region << 8) + (select_region << 3)) + 176]),
        .weight_36(parameter_registers[((select_region << 8) + (select_region << 3)) + 181]),
        .weight_37(parameter_registers[((select_region << 8) + (select_region << 3)) + 186]),
        .weight_38(parameter_registers[((select_region << 8) + (select_region << 3)) + 191]),
        .weight_39(parameter_registers[((select_region << 8) + (select_region << 3)) + 196]),
        .weight_40(parameter_registers[((select_region << 8) + (select_region << 3)) + 201]),
        .weight_41(parameter_registers[((select_region << 8) + (select_region << 3)) + 206]),
        .weight_42(parameter_registers[((select_region << 8) + (select_region << 3)) + 211]),
        .weight_43(parameter_registers[((select_region << 8) + (select_region << 3)) + 216]),
        .weight_44(parameter_registers[((select_region << 8) + (select_region << 3)) + 221]),
        .weight_45(parameter_registers[((select_region << 8) + (select_region << 3)) + 226]),
        .weight_46(parameter_registers[((select_region << 8) + (select_region << 3)) + 231]),
        .weight_47(parameter_registers[((select_region << 8) + (select_region << 3)) + 236]),
        .weight_48(parameter_registers[((select_region << 8) + (select_region << 3)) + 241]),
        .weight_49(parameter_registers[((select_region << 8) + (select_region << 3)) + 246]),
        .out(HIDDEN_WIRE_1)
    );

    neuron_50in_relu # (
        .Q_FRACTIONAL(Q_FRACTIONAL),
        .Q_INTEGER(Q_INTEGER)
    ) U3 (
        .clock(clock),
        .reset(reset),

        .bias(parameter_registers[((select_region << 8) + (select_region << 3)) + 252]), 

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

        .weight_0(parameter_registers[((select_region << 8) + (select_region << 3)) + 2]),
        .weight_1(parameter_registers[((select_region << 8) + (select_region << 3)) + 7]),
        .weight_2(parameter_registers[((select_region << 8) + (select_region << 3)) + 12]),
        .weight_3(parameter_registers[((select_region << 8) + (select_region << 3)) + 17]),
        .weight_4(parameter_registers[((select_region << 8) + (select_region << 3)) + 22]),
        .weight_5(parameter_registers[((select_region << 8) + (select_region << 3)) + 27]),
        .weight_6(parameter_registers[((select_region << 8) + (select_region << 3)) + 32]),
        .weight_7(parameter_registers[((select_region << 8) + (select_region << 3)) + 37]),
        .weight_8(parameter_registers[((select_region << 8) + (select_region << 3)) + 42]),
        .weight_9(parameter_registers[((select_region << 8) + (select_region << 3)) + 47]),
        .weight_10(parameter_registers[((select_region << 8) + (select_region << 3)) + 52]),
        .weight_11(parameter_registers[((select_region << 8) + (select_region << 3)) + 57]),
        .weight_12(parameter_registers[((select_region << 8) + (select_region << 3)) + 62]),
        .weight_13(parameter_registers[((select_region << 8) + (select_region << 3)) + 67]),
        .weight_14(parameter_registers[((select_region << 8) + (select_region << 3)) + 72]),
        .weight_15(parameter_registers[((select_region << 8) + (select_region << 3)) + 77]),
        .weight_16(parameter_registers[((select_region << 8) + (select_region << 3)) + 82]),
        .weight_17(parameter_registers[((select_region << 8) + (select_region << 3)) + 87]),
        .weight_18(parameter_registers[((select_region << 8) + (select_region << 3)) + 92]),
        .weight_19(parameter_registers[((select_region << 8) + (select_region << 3)) + 97]),
        .weight_20(parameter_registers[((select_region << 8) + (select_region << 3)) + 102]),
        .weight_21(parameter_registers[((select_region << 8) + (select_region << 3)) + 107]),
        .weight_22(parameter_registers[((select_region << 8) + (select_region << 3)) + 112]),
        .weight_23(parameter_registers[((select_region << 8) + (select_region << 3)) + 117]),
        .weight_24(parameter_registers[((select_region << 8) + (select_region << 3)) + 122]),
        .weight_25(parameter_registers[((select_region << 8) + (select_region << 3)) + 127]),
        .weight_26(parameter_registers[((select_region << 8) + (select_region << 3)) + 132]),
        .weight_27(parameter_registers[((select_region << 8) + (select_region << 3)) + 137]),
        .weight_28(parameter_registers[((select_region << 8) + (select_region << 3)) + 142]),
        .weight_29(parameter_registers[((select_region << 8) + (select_region << 3)) + 147]),
        .weight_30(parameter_registers[((select_region << 8) + (select_region << 3)) + 152]),
        .weight_31(parameter_registers[((select_region << 8) + (select_region << 3)) + 157]),
        .weight_32(parameter_registers[((select_region << 8) + (select_region << 3)) + 162]),
        .weight_33(parameter_registers[((select_region << 8) + (select_region << 3)) + 167]),
        .weight_34(parameter_registers[((select_region << 8) + (select_region << 3)) + 172]),
        .weight_35(parameter_registers[((select_region << 8) + (select_region << 3)) + 177]),
        .weight_36(parameter_registers[((select_region << 8) + (select_region << 3)) + 182]),
        .weight_37(parameter_registers[((select_region << 8) + (select_region << 3)) + 187]),
        .weight_38(parameter_registers[((select_region << 8) + (select_region << 3)) + 192]),
        .weight_39(parameter_registers[((select_region << 8) + (select_region << 3)) + 197]),
        .weight_40(parameter_registers[((select_region << 8) + (select_region << 3)) + 202]),
        .weight_41(parameter_registers[((select_region << 8) + (select_region << 3)) + 207]),
        .weight_42(parameter_registers[((select_region << 8) + (select_region << 3)) + 212]),
        .weight_43(parameter_registers[((select_region << 8) + (select_region << 3)) + 217]),
        .weight_44(parameter_registers[((select_region << 8) + (select_region << 3)) + 222]),
        .weight_45(parameter_registers[((select_region << 8) + (select_region << 3)) + 227]),
        .weight_46(parameter_registers[((select_region << 8) + (select_region << 3)) + 232]),
        .weight_47(parameter_registers[((select_region << 8) + (select_region << 3)) + 237]),
        .weight_48(parameter_registers[((select_region << 8) + (select_region << 3)) + 242]),
        .weight_49(parameter_registers[((select_region << 8) + (select_region << 3)) + 247]),
        .out(HIDDEN_WIRE_2)
    );

    neuron_50in_relu # (
        .Q_FRACTIONAL(Q_FRACTIONAL),
        .Q_INTEGER(Q_INTEGER)
    ) U4 (
        .clock(clock),
        .reset(reset),

        .bias(parameter_registers[((select_region << 8) + (select_region << 3)) + 253]),

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

        .weight_0(parameter_registers[((select_region << 8) + (select_region << 3)) + 3]),
        .weight_1(parameter_registers[((select_region << 8) + (select_region << 3)) + 8]),
        .weight_2(parameter_registers[((select_region << 8) + (select_region << 3)) + 13]),
        .weight_3(parameter_registers[((select_region << 8) + (select_region << 3)) + 18]),
        .weight_4(parameter_registers[((select_region << 8) + (select_region << 3)) + 23]),
        .weight_5(parameter_registers[((select_region << 8) + (select_region << 3)) + 28]),
        .weight_6(parameter_registers[((select_region << 8) + (select_region << 3)) + 33]),
        .weight_7(parameter_registers[((select_region << 8) + (select_region << 3)) + 38]),
        .weight_8(parameter_registers[((select_region << 8) + (select_region << 3)) + 43]),
        .weight_9(parameter_registers[((select_region << 8) + (select_region << 3)) + 48]),
        .weight_10(parameter_registers[((select_region << 8) + (select_region << 3)) + 53]),
        .weight_11(parameter_registers[((select_region << 8) + (select_region << 3)) + 58]),
        .weight_12(parameter_registers[((select_region << 8) + (select_region << 3)) + 63]),
        .weight_13(parameter_registers[((select_region << 8) + (select_region << 3)) + 68]),
        .weight_14(parameter_registers[((select_region << 8) + (select_region << 3)) + 73]),
        .weight_15(parameter_registers[((select_region << 8) + (select_region << 3)) + 78]),
        .weight_16(parameter_registers[((select_region << 8) + (select_region << 3)) + 83]),
        .weight_17(parameter_registers[((select_region << 8) + (select_region << 3)) + 88]),
        .weight_18(parameter_registers[((select_region << 8) + (select_region << 3)) + 93]),
        .weight_19(parameter_registers[((select_region << 8) + (select_region << 3)) + 98]),
        .weight_20(parameter_registers[((select_region << 8) + (select_region << 3)) + 103]),
        .weight_21(parameter_registers[((select_region << 8) + (select_region << 3)) + 108]),
        .weight_22(parameter_registers[((select_region << 8) + (select_region << 3)) + 113]),
        .weight_23(parameter_registers[((select_region << 8) + (select_region << 3)) + 118]),
        .weight_24(parameter_registers[((select_region << 8) + (select_region << 3)) + 123]),
        .weight_25(parameter_registers[((select_region << 8) + (select_region << 3)) + 128]),
        .weight_26(parameter_registers[((select_region << 8) + (select_region << 3)) + 133]),
        .weight_27(parameter_registers[((select_region << 8) + (select_region << 3)) + 138]),
        .weight_28(parameter_registers[((select_region << 8) + (select_region << 3)) + 143]),
        .weight_29(parameter_registers[((select_region << 8) + (select_region << 3)) + 148]),
        .weight_30(parameter_registers[((select_region << 8) + (select_region << 3)) + 153]),
        .weight_31(parameter_registers[((select_region << 8) + (select_region << 3)) + 158]),
        .weight_32(parameter_registers[((select_region << 8) + (select_region << 3)) + 163]),
        .weight_33(parameter_registers[((select_region << 8) + (select_region << 3)) + 168]),
        .weight_34(parameter_registers[((select_region << 8) + (select_region << 3)) + 173]),
        .weight_35(parameter_registers[((select_region << 8) + (select_region << 3)) + 178]),
        .weight_36(parameter_registers[((select_region << 8) + (select_region << 3)) + 183]),
        .weight_37(parameter_registers[((select_region << 8) + (select_region << 3)) + 188]),
        .weight_38(parameter_registers[((select_region << 8) + (select_region << 3)) + 193]),
        .weight_39(parameter_registers[((select_region << 8) + (select_region << 3)) + 198]),
        .weight_40(parameter_registers[((select_region << 8) + (select_region << 3)) + 203]),
        .weight_41(parameter_registers[((select_region << 8) + (select_region << 3)) + 208]),
        .weight_42(parameter_registers[((select_region << 8) + (select_region << 3)) + 213]),
        .weight_43(parameter_registers[((select_region << 8) + (select_region << 3)) + 218]),
        .weight_44(parameter_registers[((select_region << 8) + (select_region << 3)) + 223]),
        .weight_45(parameter_registers[((select_region << 8) + (select_region << 3)) + 228]),
        .weight_46(parameter_registers[((select_region << 8) + (select_region << 3)) + 233]),
        .weight_47(parameter_registers[((select_region << 8) + (select_region << 3)) + 238]),
        .weight_48(parameter_registers[((select_region << 8) + (select_region << 3)) + 243]),
        .weight_49(parameter_registers[((select_region << 8) + (select_region << 3)) + 248]),
        .out(HIDDEN_WIRE_3)
    );

    neuron_50in_relu # (
        .Q_FRACTIONAL(Q_FRACTIONAL),
        .Q_INTEGER(Q_INTEGER)
    ) U5 (
        .clock(clock),
        .reset(reset),

        .bias(parameter_registers[((select_region << 8) + (select_region << 3)) + 254]), 

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

        .weight_0(parameter_registers[((select_region << 8) + (select_region << 3)) + 4]),
        .weight_1(parameter_registers[((select_region << 8) + (select_region << 3)) + 9]),
        .weight_2(parameter_registers[((select_region << 8) + (select_region << 3)) + 14]),
        .weight_3(parameter_registers[((select_region << 8) + (select_region << 3)) + 19]),
        .weight_4(parameter_registers[((select_region << 8) + (select_region << 3)) + 24]),
        .weight_5(parameter_registers[((select_region << 8) + (select_region << 3)) + 29]),
        .weight_6(parameter_registers[((select_region << 8) + (select_region << 3)) + 34]),
        .weight_7(parameter_registers[((select_region << 8) + (select_region << 3)) + 39]),
        .weight_8(parameter_registers[((select_region << 8) + (select_region << 3)) + 44]),
        .weight_9(parameter_registers[((select_region << 8) + (select_region << 3)) + 49]),
        .weight_10(parameter_registers[((select_region << 8) + (select_region << 3)) + 54]),
        .weight_11(parameter_registers[((select_region << 8) + (select_region << 3)) + 59]),
        .weight_12(parameter_registers[((select_region << 8) + (select_region << 3)) + 64]),
        .weight_13(parameter_registers[((select_region << 8) + (select_region << 3)) + 69]),
        .weight_14(parameter_registers[((select_region << 8) + (select_region << 3)) + 74]),
        .weight_15(parameter_registers[((select_region << 8) + (select_region << 3)) + 79]),
        .weight_16(parameter_registers[((select_region << 8) + (select_region << 3)) + 84]),
        .weight_17(parameter_registers[((select_region << 8) + (select_region << 3)) + 89]),
        .weight_18(parameter_registers[((select_region << 8) + (select_region << 3)) + 94]),
        .weight_19(parameter_registers[((select_region << 8) + (select_region << 3)) + 99]),
        .weight_20(parameter_registers[((select_region << 8) + (select_region << 3)) + 104]),
        .weight_21(parameter_registers[((select_region << 8) + (select_region << 3)) + 109]),
        .weight_22(parameter_registers[((select_region << 8) + (select_region << 3)) + 114]),
        .weight_23(parameter_registers[((select_region << 8) + (select_region << 3)) + 119]),
        .weight_24(parameter_registers[((select_region << 8) + (select_region << 3)) + 124]),
        .weight_25(parameter_registers[((select_region << 8) + (select_region << 3)) + 129]),
        .weight_26(parameter_registers[((select_region << 8) + (select_region << 3)) + 134]),
        .weight_27(parameter_registers[((select_region << 8) + (select_region << 3)) + 139]),
        .weight_28(parameter_registers[((select_region << 8) + (select_region << 3)) + 144]),
        .weight_29(parameter_registers[((select_region << 8) + (select_region << 3)) + 149]),
        .weight_30(parameter_registers[((select_region << 8) + (select_region << 3)) + 154]),
        .weight_31(parameter_registers[((select_region << 8) + (select_region << 3)) + 159]),
        .weight_32(parameter_registers[((select_region << 8) + (select_region << 3)) + 164]),
        .weight_33(parameter_registers[((select_region << 8) + (select_region << 3)) + 169]),
        .weight_34(parameter_registers[((select_region << 8) + (select_region << 3)) + 174]),
        .weight_35(parameter_registers[((select_region << 8) + (select_region << 3)) + 179]),
        .weight_36(parameter_registers[((select_region << 8) + (select_region << 3)) + 184]),
        .weight_37(parameter_registers[((select_region << 8) + (select_region << 3)) + 189]),
        .weight_38(parameter_registers[((select_region << 8) + (select_region << 3)) + 194]),
        .weight_39(parameter_registers[((select_region << 8) + (select_region << 3)) + 199]),
        .weight_40(parameter_registers[((select_region << 8) + (select_region << 3)) + 204]),
        .weight_41(parameter_registers[((select_region << 8) + (select_region << 3)) + 209]),
        .weight_42(parameter_registers[((select_region << 8) + (select_region << 3)) + 214]),
        .weight_43(parameter_registers[((select_region << 8) + (select_region << 3)) + 219]),
        .weight_44(parameter_registers[((select_region << 8) + (select_region << 3)) + 224]),
        .weight_45(parameter_registers[((select_region << 8) + (select_region << 3)) + 229]),
        .weight_46(parameter_registers[((select_region << 8) + (select_region << 3)) + 234]),
        .weight_47(parameter_registers[((select_region << 8) + (select_region << 3)) + 239]),
        .weight_48(parameter_registers[((select_region << 8) + (select_region << 3)) + 244]),
        .weight_49(parameter_registers[((select_region << 8) + (select_region << 3)) + 249]),
        .out(HIDDEN_WIRE_4)
    );

    neuron_5in_sigmoid # (
        .Q_FRACTIONAL(Q_FRACTIONAL),
        .Q_INTEGER(Q_INTEGER)
    ) U6 (
        .clock(clock),
        .reset(reset),

        .bias(parameter_registers[((select_region << 8) + (select_region << 3)) + 260]),
        
        .input_0(HIDDEN_WIRE_0),
        .input_1(HIDDEN_WIRE_1),
        .input_2(HIDDEN_WIRE_2),
        .input_3(HIDDEN_WIRE_3),
        .input_4(HIDDEN_WIRE_4),

        .weight_0(parameter_registers[((select_region << 8) + (select_region << 3)) + 255]),
        .weight_1(parameter_registers[((select_region << 8) + (select_region << 3)) + 256]),
        .weight_2(parameter_registers[((select_region << 8) + (select_region << 3)) + 257]),
        .weight_3(parameter_registers[((select_region << 8) + (select_region << 3)) + 258]),
        .weight_4(parameter_registers[((select_region << 8) + (select_region << 3)) + 259]),
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
