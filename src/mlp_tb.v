module mlp_tb;

    // Inputs
    reg clock;
    reg reset;
    reg weight_enable;

    reg signed [7:0] address;
    reg signed [15:0] inputs [0:49];
    reg signed [15:0] weight;

    // Output
    wire signed [22:0] out;

    // Instantiate the Perceptron module
    mlp uut (
        .reset(reset),
        .clock(clock),
        .weight_enable(weight_enable),

        .address(address),
        .weight(weight),

        .input_0(inputs[0]),
        .input_1(inputs[1]),
        .input_2(inputs[2]),
        .input_3(inputs[3]),
        .input_4(inputs[4]),
        .input_5(inputs[5]),
        .input_6(inputs[6]),
        .input_7(inputs[7]),
        .input_8(inputs[8]),
        .input_9(inputs[9]),
        .input_10(inputs[10]),
        .input_11(inputs[11]),
        .input_12(inputs[12]),
        .input_13(inputs[13]),
        .input_14(inputs[14]),
        .input_15(inputs[15]),
        .input_16(inputs[16]),
        .input_17(inputs[17]),
        .input_18(inputs[18]),
        .input_19(inputs[19]),
        .input_20(inputs[20]),
        .input_21(inputs[21]),
        .input_22(inputs[22]),
        .input_23(inputs[23]),
        .input_24(inputs[24]),
        .input_25(inputs[25]),
        .input_26(inputs[26]),
        .input_27(inputs[27]),
        .input_28(inputs[28]),
        .input_29(inputs[29]),
        .input_30(inputs[30]),
        .input_31(inputs[31]),
        .input_32(inputs[32]),
        .input_33(inputs[33]),
        .input_34(inputs[34]),
        .input_35(inputs[35]),
        .input_36(inputs[36]),
        .input_37(inputs[37]),
        .input_38(inputs[38]),
        .input_39(inputs[39]),
        .input_40(inputs[40]),
        .input_41(inputs[41]),
        .input_42(inputs[42]),
        .input_43(inputs[43]),
        .input_44(inputs[44]),
        .input_45(inputs[45]),
        .input_46(inputs[46]),
        .input_47(inputs[47]),
        .input_48(inputs[48]),
        .input_49(inputs[49]),

        .out(out)
    );

    integer i;
    reg signed [15:0] parameters [0:260];

    initial begin
        // Initialize Inputs

        weight_enable = 1;
        clock = 0;
        reset = 0;
        #10;

        $readmemb("rings_data.mem", inputs);
        $readmemb("q15_params.mem", parameters);

        // Generate a positive impulse on reset
        reset = 1;
        #5; 
        reset = 0;
        #10; 

        // Display the inputs
        for (i = 0; i <= 260; i = i + 1) begin
            $display("%d -> Weights %h %d %f \tInputs: %h %d %f", i, parameters[i], parameters[i], parameters[i]/32768.0, inputs[i], inputs[i], inputs[i]/32768.0);
        end

        // Initialize weights
        
        // for (i = 0; i <= 51; i = i + 1) begin
        //     weight_enable = 0;
        //     address = i;
        //     weight = weights[i];
        //     #5;
        //     weight_enable = 1;
        //     #10;
        // end

        // Wait for the perceptron to process the inputs
        #500;

        // Generate a positive impulse on clock
        clock = 1; 
        #10; 
        clock = 0;

        // Display the output
        $display("Output: %h %d %f", out, out, out/32768.0);

        // Finish the simulation
        $finish;
    end

endmodule
