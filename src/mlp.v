module mlp (
    input wire clk,
    input wire reset,
    input wire weight_enable,

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
    output signed out
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
			case(addr,)	
                0 : weight_0 = weights;
                1 : weight_1 = weights;
                2 : weight_2 = weights;
                3 : weight_3 = weights;
                4 : weight_4 = weights;
                5 : weight_5 = weights;
                6 : weight_6 = weights;
                7 : weight_7 = weights;
                8 : weight_8 = weights;
                9 : weight_9 = weights;
                10 : weight_10 = weights;
                11 : weight_11 = weights;
                12 : weight_12 = weights;
                13 : weight_13 = weights;
                14 : weight_14 = weights;
                15 : weight_15 = weights;
                16 : weight_16 = weights;
                17 : weight_17 = weights;
                18 : weight_18 = weights;
                19 : weight_19 = weights;
                20 : weight_20 = weights;
                21 : weight_21 = weights;
                22 : weight_22 = weights;
                23 : weight_23 = weights;
                24 : weight_24 = weights;
                25 : weight_25 = weights;
                26 : weight_26 = weights;
                27 : weight_27 = weights;
                28 : weight_28 = weights;
                29 : weight_29 = weights;
                30 : weight_30 = weights;
                31 : weight_31 = weights;
                32 : weight_32 = weights;
                33 : weight_33 = weights;
                34 : weight_34 = weights;
                35 : weight_35 = weights;
                36 : weight_36 = weights;
                37 : weight_37 = weights;
                38 : weight_38 = weights;
                39 : weight_39 = weights;
                40 : weight_40 = weights;
                41 : weight_41 = weights;
                42 : weight_42 = weights;
                43 : weight_43 = weights;
                44 : weight_44 = weights;
                45 : weight_45 = weights;
                46 : weight_46 = weights;
                47 : weight_47 = weights;
                48 : weight_48 = weights;
				default : weight_49 = weights;
			endcase
		end
	end

    // Instantiate neuron_50in_relu
    neuron_50in_relu U1 (
        .clk(clk),
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
        .weight_49(mlp_weight_49)
        .bias(16'h0000), 
        .output(out)
    );

endmodule