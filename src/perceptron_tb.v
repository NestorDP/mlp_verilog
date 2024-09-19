module perceptron_tb;

    // Inputs
    reg signed [15:0] input_0;
    reg signed [15:0] input_1;
    reg signed [15:0] input_2;
    reg signed [15:0] input_3;
    reg signed [15:0] input_4;
    reg signed [15:0] input_5;
    reg signed [15:0] input_6;
    reg signed [15:0] input_7;
    reg signed [15:0] input_8;
    reg signed [15:0] input_9;
    reg signed [15:0] input_10;
    reg signed [15:0] input_11;
    reg signed [15:0] input_12;
    reg signed [15:0] input_13;
    reg signed [15:0] input_14;
    reg signed [15:0] input_15;
    reg signed [15:0] input_16;
    reg signed [15:0] input_17;
    reg signed [15:0] input_18;
    reg signed [15:0] input_19;
    reg signed [15:0] input_20;
    reg signed [15:0] input_21;
    reg signed [15:0] input_22;
    reg signed [15:0] input_23;
    reg signed [15:0] input_24;
    reg signed [15:0] input_25;
    reg signed [15:0] input_26;
    reg signed [15:0] input_27;
    reg signed [15:0] input_28;
    reg signed [15:0] input_29;
    reg signed [15:0] input_30;
    reg signed [15:0] input_31;
    reg signed [15:0] input_32;
    reg signed [15:0] input_33;
    reg signed [15:0] input_34;
    reg signed [15:0] input_35;
    reg signed [15:0] input_36;
    reg signed [15:0] input_37;
    reg signed [15:0] input_38;
    reg signed [15:0] input_39;
    reg signed [15:0] input_40;
    reg signed [15:0] input_41;
    reg signed [15:0] input_42;
    reg signed [15:0] input_43;
    reg signed [15:0] input_44;
    reg signed [15:0] input_45;
    reg signed [15:0] input_46;
    reg signed [15:0] input_47;
    reg signed [15:0] input_48;
    reg signed [15:0] input_49;

    reg signed [15:0] coeef_0;
    reg signed [15:0] coeef_1;
    reg signed [15:0] coeef_2;
    reg signed [15:0] coeef_3;
    reg signed [15:0] coeef_4;
    reg signed [15:0] coeef_5;
    reg signed [15:0] coeef_6;
    reg signed [15:0] coeef_7;
    reg signed [15:0] coeef_8;
    reg signed [15:0] coeef_9;
    reg signed [15:0] coeef_10;
    reg signed [15:0] coeef_11;
    reg signed [15:0] coeef_12;
    reg signed [15:0] coeef_13;
    reg signed [15:0] coeef_14;
    reg signed [15:0] coeef_15;
    reg signed [15:0] coeef_16;
    reg signed [15:0] coeef_17;
    reg signed [15:0] coeef_18;
    reg signed [15:0] coeef_19;
    reg signed [15:0] coeef_20;
    reg signed [15:0] coeef_21;
    reg signed [15:0] coeef_22;
    reg signed [15:0] coeef_23;
    reg signed [15:0] coeef_24;
    reg signed [15:0] coeef_25;
    reg signed [15:0] coeef_26;
    reg signed [15:0] coeef_27;
    reg signed [15:0] coeef_28;
    reg signed [15:0] coeef_29;
    reg signed [15:0] coeef_30;
    reg signed [15:0] coeef_31;
    reg signed [15:0] coeef_32;
    reg signed [15:0] coeef_33;
    reg signed [15:0] coeef_34;
    reg signed [15:0] coeef_35;
    reg signed [15:0] coeef_36;
    reg signed [15:0] coeef_37;
    reg signed [15:0] coeef_38;
    reg signed [15:0] coeef_39;
    reg signed [15:0] coeef_40;
    reg signed [15:0] coeef_41;
    reg signed [15:0] coeef_42;
    reg signed [15:0] coeef_43;
    reg signed [15:0] coeef_44;
    reg signed [15:0] coeef_45;
    reg signed [15:0] coeef_46;
    reg signed [15:0] coeef_47;
    reg signed [15:0] coeef_48;
    reg signed [15:0] coeef_49;

    // Output
    wire signed [32:0] classification;

    // Instantiate the Perceptron module
    perceptron uut (
        .input_0(input_0),
        .input_1(input_1),
        .input_2(input_2),
        .input_3(input_3),
        .input_4(input_4),
        .input_5(input_5),
        .input_6(input_6),
        .input_7(input_7),
        .input_8(input_8),
        .input_9(input_9),
        .input_10(input_10),
        .input_11(input_11),
        .input_12(input_12),
        .input_13(input_13),
        .input_14(input_14),
        .input_15(input_15),
        .input_16(input_16),
        .input_17(input_17),
        .input_18(input_18),
        .input_19(input_19),
        .input_20(input_20),
        .input_21(input_21),
        .input_22(input_22),
        .input_23(input_23),
        .input_24(input_24),
        .input_25(input_25),
        .input_26(input_26),
        .input_27(input_27),
        .input_28(input_28),
        .input_29(input_29),
        .input_30(input_30),
        .input_31(input_31),
        .input_32(input_32),
        .input_33(input_33),
        .input_34(input_34),
        .input_35(input_35),
        .input_36(input_36),
        .input_37(input_37),
        .input_38(input_38),
        .input_39(input_39),
        .input_40(input_40),
        .input_41(input_41),
        .input_42(input_42),
        .input_43(input_43),
        .input_44(input_44),
        .input_45(input_45),
        .input_46(input_46),
        .input_47(input_47),
        .input_48(input_48),
        .input_49(input_49),

        .coeef_0(coeef_0),
        .coeef_1(coeef_1),
        .coeef_2(coeef_2),
        .coeef_3(coeef_3),
        .coeef_4(coeef_4),
        .coeef_5(coeef_5),
        .coeef_6(coeef_6),
        .coeef_7(coeef_7),
        .coeef_8(coeef_8),
        .coeef_9(coeef_9),
        .coeef_10(coeef_10),
        .coeef_11(coeef_11),
        .coeef_12(coeef_12),
        .coeef_13(coeef_13),
        .coeef_14(coeef_14),
        .coeef_15(coeef_15),
        .coeef_16(coeef_16),
        .coeef_17(coeef_17),
        .coeef_18(coeef_18),
        .coeef_19(coeef_19),
        .coeef_20(coeef_20),
        .coeef_21(coeef_21),
        .coeef_22(coeef_22),
        .coeef_23(coeef_23),
        .coeef_24(coeef_24),
        .coeef_25(coeef_25),
        .coeef_26(coeef_26),
        .coeef_27(coeef_27),
        .coeef_28(coeef_28),
        .coeef_29(coeef_29),
        .coeef_30(coeef_30),
        .coeef_31(coeef_31),
        .coeef_32(coeef_32),
        .coeef_33(coeef_33),
        .coeef_34(coeef_34),
        .coeef_35(coeef_35),
        .coeef_36(coeef_36),
        .coeef_37(coeef_37),
        .coeef_38(coeef_38),
        .coeef_39(coeef_39),
        .coeef_40(coeef_40),
        .coeef_41(coeef_41),
        .coeef_42(coeef_42),
        .coeef_43(coeef_43),
        .coeef_44(coeef_44),
        .coeef_45(coeef_45),
        .coeef_46(coeef_46),
        .coeef_47(coeef_47),
        .coeef_48(coeef_48),
        .coeef_49(coeef_49),

        .classification(classification)
    );

    initial begin
        // Initialize Inputs
        input_0 = 3;
        input_1 = 1;
        input_2 = 1;
        input_3 = 1;
        input_4 = 1;
        input_5 = 1;
        input_6 = 1;
        input_7 = 1;
        input_8 = 1;
        input_9 = 1;
        input_10 = 1;
        input_11 = 1;
        input_12 = 1;
        input_13 = 1;
        input_14 = 1;
        input_15 = 1;
        input_16 = 1;
        input_17 = 1;
        input_18 = 1;
        input_19 = 1;
        input_20 = 1;
        input_21 = 1;
        input_22 = 1;
        input_23 = 1;
        input_24 = 1;
        input_25 = 1;
        input_26 = 1;
        input_27 = 1;
        input_28 = 1;
        input_29 = 1;
        input_30 = 1;
        input_31 = 1;
        input_32 = 1;
        input_33 = 1;
        input_34 = 1;
        input_35 = 1;
        input_36 = 1;
        input_37 = 1;
        input_38 = 1;
        input_39 = 1;
        input_40 = 1;
        input_41 = 1;
        input_42 = 1;
        input_43 = 1;
        input_44 = 1;
        input_45 = 1;
        input_46 = 1;
        input_47 = 1;
        input_48 = 1;
        input_49 = 1;

        coeef_0 = 2;
        coeef_1 = 1;
        coeef_2 = 1;
        coeef_3 = 1;
        coeef_4 = 1;
        coeef_5 = 1;
        coeef_6 = 1;
        coeef_7 = 1;
        coeef_8 = 1;
        coeef_9 = 1;
        coeef_10 = 1;
        coeef_11 = 1;
        coeef_12 = 1;
        coeef_13 = 1;
        coeef_14 = 1;
        coeef_15 = 1;
        coeef_16 = 1;
        coeef_17 = 1;
        coeef_18 = 1;
        coeef_19 = 1;
        coeef_20 = 1;
        coeef_21 = 1;
        coeef_22 = 1;
        coeef_23 = 1;
        coeef_24 = 1;
        coeef_25 = 1;
        coeef_26 = 1;
        coeef_27 = 1;
        coeef_28 = 1;
        coeef_29 = 1;
        coeef_30 = 1;
        coeef_31 = 1;
        coeef_32 = 1;
        coeef_33 = 1;
        coeef_34 = 1;
        coeef_35 = 1;
        coeef_36 = 1;
        coeef_37 = 1;
        coeef_38 = 1;
        coeef_39 = 1;
        coeef_40 = 1;
        coeef_41 = 1;
        coeef_42 = 1;
        coeef_43 = 1;
        coeef_44 = 1;
        coeef_45 = 1;
        coeef_46 = 1;
        coeef_47 = 1;
        coeef_48 = 1;
        coeef_49 = 1;

        // Wait for global reset
        #100;

        // Display the output
        $display("Output: %d", classification);

        // Finish the simulation
        $finish;
    end

endmodule