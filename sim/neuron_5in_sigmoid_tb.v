module neuron_5in_sigmoid_tb;

    // Inputs
    reg clock;
    reg reset;
    
    reg signed [22:0] inputs[0:4];
    reg signed [15:0] weights[0:4];
    reg signed [15:0] bias;

    // Output
    wire signed [15:0] out;

    // Instantiate the Perceptron module
    neuron_5in_sigmoid uut (
        .reset(reset),
        .clock(clock),

        .bias(bias),

        .weight_0(weights[0]),
        .weight_1(weights[1]),
        .weight_2(weights[2]),
        .weight_3(weights[3]),
        .weight_4(weights[4]),

        .input_0(inputs[0]),
        .input_1(inputs[1]),
        .input_2(inputs[2]),
        .input_3(inputs[3]),
        .input_4(inputs[4]),

        .out(out)
    );

    integer i;
    reg signed [15:0] weights [0:50];

    initial begin
        clock = 0;
        reset = 0;
        #10;

        // Generate a positive impulse on reset 
        reset = 1;
        
        // Initialize bias
        bias = 24576;

        // Initialize weights
        weights[0] = 3276;
        weights[1] = 19333;
        weights[2] = 30474;
        weights[3] = 3276;
        weights[4] = 25559;

        // Initialize inputs
        inputs[0] = -6554;
        inputs[1] = 29491;
        inputs[2] = 6554;
        inputs[3] = 27853;
        inputs[4] = 19661;

        // Display the inputs
        for (i = 0; i < 5; i = i + 1) begin
            $display("%d -> Weights %h %d %f \tInputs: %h %d %f", i, weights[i], weights[i], weights[i]/32768.0, inputs[i], inputs[i], inputs[i]/32768.0);
        end

        // Generate a positive impulse on clock
        #10;
        clock = 1; 
        #10; 
        clock = 0;
        
        // Wait for the perceptron to process the inputs
        #500;

        // Display the output
        $display("Output: %h %d %f", out, out, out/32768.0);

        // Finish the simulation
        $finish;
    end

endmodule
