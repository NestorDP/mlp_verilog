module neuron_5in_sigmoid #(
    parameter Q_FRACTIONAL = 15,
    parameter Q_INTEGER    = 7
)(
    input clock,
    input reset,

    // Bias input in Q7.15 format
    input signed [Q_INTEGER+Q_FRACTIONAL:0] bias,

    // 5 inputs in Q7.15 format
    input signed [Q_INTEGER+Q_FRACTIONAL:0] input_0,
    input signed [Q_INTEGER+Q_FRACTIONAL:0] input_1,
    input signed [Q_INTEGER+Q_FRACTIONAL:0] input_2,
    input signed [Q_INTEGER+Q_FRACTIONAL:0] input_3,
    input signed [Q_INTEGER+Q_FRACTIONAL:0] input_4,

    // 5 weights in Q7.15 format
    input signed [Q_INTEGER+Q_FRACTIONAL:0] weight_0,
    input signed [Q_INTEGER+Q_FRACTIONAL:0] weight_1,
    input signed [Q_INTEGER+Q_FRACTIONAL:0] weight_2,
    input signed [Q_INTEGER+Q_FRACTIONAL:0] weight_3,
    input signed [Q_INTEGER+Q_FRACTIONAL:0] weight_4,

    // Linear output in Q7.15 format
    output signed [Q_INTEGER+Q_FRACTIONAL:0] out_linear,

    // Multiplier outputs in Q30 format
    output signed [1+Q_INTEGER+Q_INTEGER+Q_FRACTIONAL+Q_FRACTIONAL:0] out_mult0,
    output signed [1+Q_INTEGER+Q_INTEGER+Q_FRACTIONAL+Q_FRACTIONAL:0] out_mult1,
    output signed [1+Q_INTEGER+Q_INTEGER+Q_FRACTIONAL+Q_FRACTIONAL:0] out_mult2,
    output signed [1+Q_INTEGER+Q_INTEGER+Q_FRACTIONAL+Q_FRACTIONAL:0] out_mult3,
    output signed [1+Q_INTEGER+Q_INTEGER+Q_FRACTIONAL+Q_FRACTIONAL:0] out_mult4,

    // Output in Q15 format
    output signed [Q_FRACTIONAL:0] out
);
    // 50 multipliers in Q30 format
    wire signed [1+Q_INTEGER+Q_INTEGER+Q_FRACTIONAL+Q_FRACTIONAL:0] multi0; 
    wire signed [1+Q_INTEGER+Q_INTEGER+Q_FRACTIONAL+Q_FRACTIONAL:0] multi1;
    wire signed [1+Q_INTEGER+Q_INTEGER+Q_FRACTIONAL+Q_FRACTIONAL:0] multi2;
    wire signed [1+Q_INTEGER+Q_INTEGER+Q_FRACTIONAL+Q_FRACTIONAL:0] multi3;
    wire signed [1+Q_INTEGER+Q_INTEGER+Q_FRACTIONAL+Q_FRACTIONAL:0] multi4;

    // Perform the multiplication of the inputs and coefficients
    assign multi0 = input_0 * weight_0;
    assign multi1 = input_1 * weight_1;
    assign multi2 = input_2 * weight_2;
    assign multi3 = input_3 * weight_3;
    assign multi4 = input_4 * weight_4;
   
    wire signed [Q_INTEGER+Q_FRACTIONAL:0] output_typeconvert;  //Q7.15 format
    wire signed [1+Q_INTEGER+Q_FRACTIONAL+Q_FRACTIONAL:0] sum;                 //Q7.30 format
    wire signed [1+Q_FRACTIONAL+Q_FRACTIONAL:0] bias_q15_to_q30;     //Q30 format

    // Shift the bias value left by 15 bits to convert it to Q30
    assign bias_q15_to_q30 = bias <<< Q_FRACTIONAL;
    // Sum all the multiplications and add the bias converted to Q30
    assign sum = multi0 + 
                 multi1 + 
                 multi2 + 
                 multi3 + 
                 multi4 + 
                 bias_q15_to_q30;

    // Convert the sum to Q15 format
    assign output_typeconvert = sum >>> Q_FRACTIONAL;
    assign out_linear = output_typeconvert;

    assign out_mult0 = multi0;
    assign out_mult1 = multi1;
    assign out_mult2 = multi2;
    assign out_mult3 = multi3;
    assign out_mult4 = multi4;

    // Instantiate the sigmoid module
    sigmoid U1 (
        .clock(clock),
        .reset(reset),
        .in(output_typeconvert),
        .out(out)
    );

endmodule