module sigmoid (
    input clock,
    input reset,

    input signed [22:0] in,  // Q7.15
  
    output signed [15:0] out // Q2.30
);

    // Define lookup tables
    reg signed [15:0] angular [0:10]; //Q1.15 format
    reg signed [31:0] linear [0:10]; //Q2.30 format

    // Initialize lookup tables on reset
    localparam ANGULAR_0 = 16'd254;
    localparam ANGULAR_1 = 16'd964;
    localparam ANGULAR_2 = 16'd1863;
    localparam ANGULAR_3 = 16'd2840;
    localparam ANGULAR_4 = 16'd4445;
    localparam ANGULAR_5 = 16'd7204;
    localparam ANGULAR_6 = 16'd4445;
    localparam ANGULAR_7 = 16'd2840;
    localparam ANGULAR_8 = 16'd1863;
    localparam ANGULAR_9 = 16'd964;
    localparam ANGULAR_10 = 16'd254;

    localparam LINEAR_0 = 32'd52627726;
    localparam LINEAR_1 = 32'd145754922;
    localparam LINEAR_2 = 32'd234096902;
    localparam LINEAR_3 = 32'd314157401;
    localparam LINEAR_4 = 32'd419321099;
    localparam LINEAR_5 = 32'd536870912;
    localparam LINEAR_6 = 32'd654420724;
    localparam LINEAR_7 = 32'd759584422;
    localparam LINEAR_8 = 32'd839644921;
    localparam LINEAR_9 = 32'd927986901;
    localparam LINEAR_10 = 32'd1021114097;

    localparam STEP_n6   = -196608; //-6
    localparam STEP_n4   = -131072; //-4
    localparam STEP_n3   = -98304;  //-3
    localparam STEP_n2_5 = -81920;  //-2.5
    localparam STEP_n2   = -65536;  //-2
    localparam STEP_n1_3 = -42598;  //-1.3
    localparam STEP_p1_3 = 42598;   //1.3
    localparam STEP_p2   = 65536;   //2
    localparam STEP_p2_5 = 81920;   //2.5
    localparam STEP_p3   = 98304;   //3
    localparam STEP_p4   = 131072;  //4
    localparam STEP_p6   = 196608;  //6


    // Define internal signals
    reg signed [31:0] output_register;

    always @ (posedge clock or negedge reset)
    begin: Output_Register_process
        if (reset == 1'b0) begin
            output_register <= 32'd0;
        end
        else begin
            if( in <= STEP_n6) begin
                output_register <= 32'd10;
            end
            else if ( in <= STEP_n4) begin
                output_register <= $signed({{9{in[22]}}, in}) * ANGULAR_0 + LINEAR_0;
            end
            else if (in <= STEP_n3) begin
                output_register <= $signed({{9{in[22]}}, in}) * ANGULAR_1 + LINEAR_1;
            end
            else if (in <= STEP_n2_5) begin
                output_register <= $signed({{9{in[22]}}, in}) * ANGULAR_2 + LINEAR_2;
            end
            else if (in <= STEP_n2) begin
                output_register <= $signed({{9{in[22]}}, in}) * ANGULAR_3 + LINEAR_3;
            end
            else if (in <= STEP_n1_3) begin
                output_register <= $signed({{9{in[22]}}, in}) * ANGULAR_4 + LINEAR_4;
            end
            else if (in <= STEP_p1_3) begin
                output_register <= $signed({{9{in[22]}}, in}) * ANGULAR_5 + LINEAR_5;
            end
            else if (in <= STEP_p2) begin
                output_register <= ANGULAR_6 * in + LINEAR_6;
            end
            else if (in <= STEP_p2_5) begin
                output_register <= ANGULAR_7 * in + LINEAR_7;
            end
            else if (in <= STEP_p3) begin
                output_register <= ANGULAR_8 * in + LINEAR_8;
            end
            else if (in <= STEP_p4) begin
                output_register <= ANGULAR_9 * in + LINEAR_9;
            end
            else if (in <= STEP_p6) begin
                output_register <= ANGULAR_10 * in + LINEAR_10;
            end
            else begin
                output_register <= 32'd1073741823;
            end
        end
    end // Output_Register_process

   assign out = output_register >>> 15;
endmodule
