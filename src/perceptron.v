module perceptron (
    input enable,
    input reset,

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

    input signed [15:0] coeef_0,
    input signed [15:0] coeef_1,
    input signed [15:0] coeef_2,
    input signed [15:0] coeef_3,
    input signed [15:0] coeef_4,
    input signed [15:0] coeef_5,
    input signed [15:0] coeef_6,
    input signed [15:0] coeef_7,
    input signed [15:0] coeef_8,
    input signed [15:0] coeef_9,
    input signed [15:0] coeef_10,
    input signed [15:0] coeef_11,
    input signed [15:0] coeef_12,
    input signed [15:0] coeef_13,
    input signed [15:0] coeef_14,
    input signed [15:0] coeef_15,
    input signed [15:0] coeef_16,
    input signed [15:0] coeef_17,
    input signed [15:0] coeef_18,
    input signed [15:0] coeef_19,
    input signed [15:0] coeef_20,
    input signed [15:0] coeef_21,
    input signed [15:0] coeef_22,
    input signed [15:0] coeef_23,
    input signed [15:0] coeef_24,
    input signed [15:0] coeef_25,
    input signed [15:0] coeef_26,
    input signed [15:0] coeef_27,
    input signed [15:0] coeef_28,
    input signed [15:0] coeef_29,
    input signed [15:0] coeef_30,
    input signed [15:0] coeef_31,
    input signed [15:0] coeef_32,
    input signed [15:0] coeef_33,
    input signed [15:0] coeef_34,
    input signed [15:0] coeef_35,
    input signed [15:0] coeef_36,
    input signed [15:0] coeef_37,
    input signed [15:0] coeef_38,
    input signed [15:0] coeef_39,
    input signed [15:0] coeef_40,
    input signed [15:0] coeef_41,
    input signed [15:0] coeef_42,
    input signed [15:0] coeef_43,
    input signed [15:0] coeef_44,
    input signed [15:0] coeef_45,
    input signed [15:0] coeef_46,
    input signed [15:0] coeef_47,
    input signed [15:0] coeef_48,
    input signed [15:0] coeef_49,

    output signed [32:0] classification
);

    wire signed [32:0] sum;
    reg  signed [15:0] output_register;

    wire signed [31:0] multi_0;
    wire signed [31:0] multi_1;
    wire signed [31:0] multi_2;
    wire signed [31:0] multi_3;
    wire signed [31:0] multi_4;
    wire signed [31:0] multi_5;
    wire signed [31:0] multi_6;
    wire signed [31:0] multi_7;
    wire signed [31:0] multi_8;
    wire signed [31:0] multi_9;
    wire signed [31:0] multi_10;
    wire signed [31:0] multi_11;
    wire signed [31:0] multi_12;
    wire signed [31:0] multi_13;
    wire signed [31:0] multi_14;
    wire signed [31:0] multi_15;
    wire signed [31:0] multi_16;
    wire signed [31:0] multi_17;
    wire signed [31:0] multi_18;
    wire signed [31:0] multi_19;
    wire signed [31:0] multi_20;
    wire signed [31:0] multi_21;
    wire signed [31:0] multi_22;
    wire signed [31:0] multi_23;
    wire signed [31:0] multi_24;
    wire signed [31:0] multi_25;
    wire signed [31:0] multi_26;
    wire signed [31:0] multi_27;
    wire signed [31:0] multi_28;
    wire signed [31:0] multi_29;
    wire signed [31:0] multi_30;
    wire signed [31:0] multi_31;
    wire signed [31:0] multi_32;
    wire signed [31:0] multi_33;
    wire signed [31:0] multi_34;
    wire signed [31:0] multi_35;
    wire signed [31:0] multi_36;
    wire signed [31:0] multi_37;
    wire signed [31:0] multi_38;
    wire signed [31:0] multi_39;
    wire signed [31:0] multi_40;
    wire signed [31:0] multi_41;
    wire signed [31:0] multi_42;
    wire signed [31:0] multi_43;
    wire signed [31:0] multi_44;
    wire signed [31:0] multi_45;
    wire signed [31:0] multi_46;
    wire signed [31:0] multi_47;
    wire signed [31:0] multi_48;
    wire signed [31:0] multi_49;

    assign multi_0 = input_0 * coeef_0;
    assign multi_1 = input_1 * coeef_1;
    assign multi_2 = input_2 * coeef_2;
    assign multi_3 = input_3 * coeef_3;
    assign multi_4 = input_4 * coeef_4;
    assign multi_5 = input_5 * coeef_5;
    assign multi_6 = input_6 * coeef_6;
    assign multi_7 = input_7 * coeef_7;
    assign multi_8 = input_8 * coeef_8;
    assign multi_9 = input_9 * coeef_9;
    assign multi_10 = input_10 * coeef_10;
    assign multi_11 = input_11 * coeef_11;
    assign multi_12 = input_12 * coeef_12;
    assign multi_13 = input_13 * coeef_13;
    assign multi_14 = input_14 * coeef_14;
    assign multi_15 = input_15 * coeef_15;
    assign multi_16 = input_16 * coeef_16;
    assign multi_17 = input_17 * coeef_17;
    assign multi_18 = input_18 * coeef_18;
    assign multi_19 = input_19 * coeef_19;
    assign multi_20 = input_20 * coeef_20;
    assign multi_21 = input_21 * coeef_21;
    assign multi_22 = input_22 * coeef_22;
    assign multi_23 = input_23 * coeef_23;
    assign multi_24 = input_24 * coeef_24;
    assign multi_25 = input_25 * coeef_25;
    assign multi_26 = input_26 * coeef_26;
    assign multi_27 = input_27 * coeef_27;
    assign multi_28 = input_28 * coeef_28;
    assign multi_29 = input_29 * coeef_29;
    assign multi_30 = input_30 * coeef_30;
    assign multi_31 = input_31 * coeef_31;
    assign multi_32 = input_32 * coeef_32;
    assign multi_33 = input_33 * coeef_33;
    assign multi_34 = input_34 * coeef_34;
    assign multi_35 = input_35 * coeef_35;
    assign multi_36 = input_36 * coeef_36;
    assign multi_37 = input_37 * coeef_37;
    assign multi_38 = input_38 * coeef_38;
    assign multi_39 = input_39 * coeef_39;
    assign multi_40 = input_40 * coeef_40;
    assign multi_41 = input_41 * coeef_41;
    assign multi_42 = input_42 * coeef_42;
    assign multi_43 = input_43 * coeef_43;
    assign multi_44 = input_44 * coeef_44;
    assign multi_45 = input_45 * coeef_45;
    assign multi_46 = input_46 * coeef_46;
    assign multi_47 = input_47 * coeef_47;
    assign multi_48 = input_48 * coeef_48;
    assign multi_49 = input_49 * coeef_49;

    assign sum = multi_0 + multi_1 + multi_2 + multi_3 + multi_4 + multi_5 + multi_6 + multi_7 + multi_8 + multi_9 + multi_10 + multi_11 + multi_12 + multi_13 + multi_14 + multi_15 + multi_16 + multi_17 + multi_18 + multi_19 + multi_20 + multi_21 + multi_22 + multi_23 + multi_24 + multi_25 + multi_26 + multi_27 + multi_28 + multi_29 + multi_30 + multi_31 + multi_32 + multi_33 + multi_34 + multi_35 + multi_36 + multi_37 + multi_38 + multi_39 + multi_40 + multi_41 + multi_42 + multi_43 + multi_44 + multi_45 + multi_46 + multi_47 + multi_48 + multi_49;

    always @ (posedge enable or posedge reset)
    begin: Output_Register_process
        if (reset == 1'b1) begin
            output_register <= 0;
        end
        else begin
            if (sum > 0) begin
                output_register <= sum;
            end
            else begin
                output_register <= 0;
            end
        end
    end // Output_Register_process

    // Assignment Statements
    assign classification = output_register;
endmodule