module perceptron (
    input enable,
    input reset,

    input signed [15:0] bias,

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

    // 50 coefficients in Q15 format
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

    output signed [37:0] sum_out, // Output in Q7.30 format;
    output signed [31:0] normalized_sum_out,


    // Output in Q15 format
    output signed [15:0] out
);
    // 50 multipliers in Q30 format
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
    assign multi1 = input_1 * coeff_1;
    assign multi2 = input_2 * coeff_2;
    assign multi3 = input_3 * coeff_3;
    assign multi4 = input_4 * coeff_4;
    assign multi5 = input_5 * coeff_5;
    assign multi6 = input_6 * coeff_6;
    assign multi7 = input_7 * coeff_7;
    assign multi8 = input_8 * coeff_8;
    assign multi9 = input_9 * coeff_9;
    assign multi10 = input_10 * coeff_10;
    assign multi11 = input_11 * coeff_11;
    assign multi12 = input_12 * coeff_12;
    assign multi13 = input_13 * coeff_13;
    assign multi14 = input_14 * coeff_14;
    assign multi15 = input_15 * coeff_15;
    assign multi16 = input_16 * coeff_16;
    assign multi17 = input_17 * coeff_17;
    assign multi18 = input_18 * coeff_18;
    assign multi19 = input_19 * coeff_19;
    assign multi20 = input_20 * coeff_20;
    assign multi21 = input_21 * coeff_21;
    assign multi22 = input_22 * coeff_22;
    assign multi23 = input_23 * coeff_23;
    assign multi24 = input_24 * coeff_24;
    assign multi25 = input_25 * coeff_25;
    assign multi26 = input_26 * coeff_26;
    assign multi27 = input_27 * coeff_27;
    assign multi28 = input_28 * coeff_28;
    assign multi29 = input_29 * coeff_29;
    assign multi30 = input_30 * coeff_30;
    assign multi31 = input_31 * coeff_31;
    assign multi32 = input_32 * coeff_32;
    assign multi33 = input_33 * coeff_33;
    assign multi34 = input_34 * coeff_34;
    assign multi35 = input_35 * coeff_35;
    assign multi36 = input_36 * coeff_36;
    assign multi37 = input_37 * coeff_37;
    assign multi38 = input_38 * coeff_38;
    assign multi39 = input_39 * coeff_39;
    assign multi40 = input_40 * coeff_40;
    assign multi41 = input_41 * coeff_41;
    assign multi42 = input_42 * coeff_42;
    assign multi43 = input_43 * coeff_43;
    assign multi44 = input_44 * coeff_44;
    assign multi45 = input_45 * coeff_45;
    assign multi46 = input_46 * coeff_46;
    assign multi47 = input_47 * coeff_47;
    assign multi48 = input_48 * coeff_48;
    assign multi49 = input_49 * coeff_49;
   

    reg  signed [15:0] output_register;
    wire signed [15:0] output_typeconvert;

    wire signed [37:0] sum;  //Q7.30 format
    localparam signed [15:0] reciprocal_50_q15 = 15'd655; // 1/50 in Q15 format
    wire signed [68:0] normalized_sum;

    assign sum = multi0 + multi1 + multi2 + multi3 + multi4 + multi5 + multi6 + multi7 + multi8 + multi9 + multi10 + multi11 + multi12 + multi13 + multi14 + multi15 + multi16 + multi17 + multi18 + multi19 + multi20 + multi21 + multi22 + multi23 + multi24 + multi25 + multi26 + multi27 + multi28 + multi29 + multi30 + multi31 + multi32 + multi33 + multi34 + multi35 + multi36 + multi37 + multi38 + multi39 + multi40 + multi41 + multi42 + multi43 + multi44 + multi45 + multi46 + multi47 + multi48 + multi49;
    assign sum_out = sum;

    assign normalized_sum = sum * reciprocal_50_q15;
    assign normalized_sum_out = normalized_sum >>> 15;

    assign output_typeconvert = normalized_sum >>> 30;

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