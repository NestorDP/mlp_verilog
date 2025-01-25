module neuron_5in_sigmoid (
    input clock,
    input reset,

    // Bias input in Q15 format
    input signed [18:0] bias,

    // 5 inputs in Q7.15 format
    input signed [22:0] input_0,
    input signed [22:0] input_1,
    input signed [22:0] input_2,
    input signed [22:0] input_3,
    input signed [22:0] input_4,

    // 50 coefficients in Q15 format
    input signed [18:0] weight_0,
    input signed [18:0] weight_1,
    input signed [18:0] weight_2,
    input signed [18:0] weight_3,
    input signed [18:0] weight_4,

    // Output in Q15 format
    output signed [15:0] out
);
    // 50 multipliers in Q30 format
    wire signed [31:0] multi0; 
    wire signed [31:0] multi1;
    wire signed [31:0] multi2;
    wire signed [31:0] multi3;
    wire signed [31:0] multi4;

    // Perform the multiplication of the inputs and coefficients
    assign multi0 = input_0 * weight_0;
    assign multi1 = input_1 * weight_1;
    assign multi2 = input_2 * weight_2;
    assign multi3 = input_3 * weight_3;
    assign multi4 = input_4 * weight_4;
   
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
                 bias_q15_to_q30;

    // Convert the sum to Q15 format
    assign output_typeconvert = sum >>> 15;

    sigmoid U1 (
        .clock(clock),
        .reset(reset),
        .in(output_typeconvert),
        .out(out)
    );

endmodule


