module neuron_50in_relu (
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
    input signed [15:0] weight_0,
    input signed [15:0] weight_1,
    input signed [15:0] weight_2,
    input signed [15:0] weight_3,
    input signed [15:0] weight_4,
    input signed [15:0] weight_5,
    input signed [15:0] weight_6,
    input signed [15:0] weight_7,
    input signed [15:0] weight_8,
    input signed [15:0] weight_9,
    input signed [15:0] weight_10,
    input signed [15:0] weight_11,
    input signed [15:0] weight_12,
    input signed [15:0] weight_13,
    input signed [15:0] weight_14,
    input signed [15:0] weight_15,
    input signed [15:0] weight_16,
    input signed [15:0] weight_17,
    input signed [15:0] weight_18,
    input signed [15:0] weight_19,
    input signed [15:0] weight_20,
    input signed [15:0] weight_21,
    input signed [15:0] weight_22,
    input signed [15:0] weight_23,
    input signed [15:0] weight_24,
    input signed [15:0] weight_25,
    input signed [15:0] weight_26,
    input signed [15:0] weight_27,
    input signed [15:0] weight_28,
    input signed [15:0] weight_29,
    input signed [15:0] weight_30,
    input signed [15:0] weight_31,
    input signed [15:0] weight_32,
    input signed [15:0] weight_33,
    input signed [15:0] weight_34,
    input signed [15:0] weight_35,
    input signed [15:0] weight_36,
    input signed [15:0] weight_37,
    input signed [15:0] weight_38,
    input signed [15:0] weight_39,
    input signed [15:0] weight_40,
    input signed [15:0] weight_41,
    input signed [15:0] weight_42,
    input signed [15:0] weight_43,
    input signed [15:0] weight_44,
    input signed [15:0] weight_45,
    input signed [15:0] weight_46,
    input signed [15:0] weight_47,
    input signed [15:0] weight_48,
    input signed [15:0] weight_49,

    // Output in Q15 format
    output signed [22:0] out
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

    // Perform the multiplication of the inputs and coefficients
    assign multi0 = input_0 * weight_0;
    assign multi1 = input_1 * weight_1;
    assign multi2 = input_2 * weight_2;
    assign multi3 = input_3 * weight_3;
    assign multi4 = input_4 * weight_4;
    assign multi5 = input_5 * weight_5;
    assign multi6 = input_6 * weight_6;
    assign multi7 = input_7 * weight_7;
    assign multi8 = input_8 * weight_8;
    assign multi9 = input_9 * weight_9;
    assign multi10 = input_10 * weight_10;
    assign multi11 = input_11 * weight_11;
    assign multi12 = input_12 * weight_12;
    assign multi13 = input_13 * weight_13;
    assign multi14 = input_14 * weight_14;
    assign multi15 = input_15 * weight_15;
    assign multi16 = input_16 * weight_16;
    assign multi17 = input_17 * weight_17;
    assign multi18 = input_18 * weight_18;
    assign multi19 = input_19 * weight_19;
    assign multi20 = input_20 * weight_20;
    assign multi21 = input_21 * weight_21;
    assign multi22 = input_22 * weight_22;
    assign multi23 = input_23 * weight_23;
    assign multi24 = input_24 * weight_24;
    assign multi25 = input_25 * weight_25;
    assign multi26 = input_26 * weight_26;
    assign multi27 = input_27 * weight_27;
    assign multi28 = input_28 * weight_28;
    assign multi29 = input_29 * weight_29;
    assign multi30 = input_30 * weight_30;
    assign multi31 = input_31 * weight_31;
    assign multi32 = input_32 * weight_32;
    assign multi33 = input_33 * weight_33;
    assign multi34 = input_34 * weight_34;
    assign multi35 = input_35 * weight_35;
    assign multi36 = input_36 * weight_36;
    assign multi37 = input_37 * weight_37;
    assign multi38 = input_38 * weight_38;
    assign multi39 = input_39 * weight_39;
    assign multi40 = input_40 * weight_40;
    assign multi41 = input_41 * weight_41;
    assign multi42 = input_42 * weight_42;
    assign multi43 = input_43 * weight_43;
    assign multi44 = input_44 * weight_44;
    assign multi45 = input_45 * weight_45;
    assign multi46 = input_46 * weight_46;
    assign multi47 = input_47 * weight_47;
    assign multi48 = input_48 * weight_48;
    assign multi49 = input_49 * weight_49;

    reg  signed [22:0] output_register;     //Q7.15 format
    wire signed [22:0] output_typeconvert;  //Q7.15 format
    wire signed [37:0] sum;                 //Q8.30 format
    wire signed [31:0] bias_q15_to_q30;     //Q30 format

    // Shift the bias value left by 15 bits to convert it to Q30
    assign bias_q15_to_q30 = bias <<< 15;

    // Sum all the multiplications and add the bias converted to Q30
    assign sum = multi0 + 
                 multi1 + 
                 multi2 + 
                 multi3 + 
                 multi4 + 
                 multi5 + 
                 multi6 + 
                 multi7 + 
                 multi8 + 
                 multi9 + 
                 multi10 + 
                 multi11 + 
                 multi12 + 
                 multi13 + 
                 multi14 + 
                 multi15 + 
                 multi16 + 
                 multi17 + 
                 multi18 + 
                 multi19 + 
                 multi20 + 
                 multi21 + 
                 multi22 + 
                 multi23 + 
                 multi24 + 
                 multi25 + 
                 multi26 + 
                 multi27 + 
                 multi28 + 
                 multi29 + 
                 multi30 + 
                 multi31 + 
                 multi32 + 
                 multi33 + 
                 multi34 + 
                 multi35 + 
                 multi36 + 
                 multi37 + 
                 multi38 + 
                 multi39 + 
                 multi40 + 
                 multi41 + 
                 multi42 + 
                 multi43 + 
                 multi44 + 
                 multi45 + 
                 multi46 + 
                 multi47 + 
                 multi48 + 
                 multi49 + 
                 bias_q15_to_q30;

    // Convert the sum to Q15 format
    assign output_typeconvert = sum >>> 15;

    always @ (posedge enable or posedge reset)
    begin: Output_Register_process
        if (reset == 1'b1) begin
            output_register <= 0;
        end
        else begin
            if (output_typeconvert < 0) begin
                output_register <= 0;
            end
            else begin
                output_register <= output_typeconvert;
            end
        end
    end // Output_Register_process

    assign out = output_register;
endmodule


