module perceptron_tb;

    // Inputs
    reg enable;
    reg reset;
    reg signed [15:0] inputs [0:49];
    reg signed [15:0] coeef [0:50];

    // Output
    wire signed [15:0] out;
    wire signed [33:0] sum;


    integer i;

    // Instantiate the Perceptron module
    perceptron uut (
        .reset(reset),
        .enable(enable),

        .bias(coeef[50]),
        
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

        .coeff_0(coeef[0]),
        .coeff_1(coeef[1]),
        .coeff_2(coeef[2]),
        .coeff_3(coeef[3]),
        .coeff_4(coeef[4]),
        .coeff_5(coeef[5]),
        .coeff_6(coeef[6]),
        .coeff_7(coeef[7]),
        .coeff_8(coeef[8]),
        .coeff_9(coeef[9]),
        .coeff_10(coeef[10]),
        .coeff_11(coeef[11]),
        .coeff_12(coeef[12]),
        .coeff_13(coeef[13]),
        .coeff_14(coeef[14]),
        .coeff_15(coeef[15]),
        .coeff_16(coeef[16]),
        .coeff_17(coeef[17]),
        .coeff_18(coeef[18]),
        .coeff_19(coeef[19]),
        .coeff_20(coeef[20]),
        .coeff_21(coeef[21]),
        .coeff_22(coeef[22]),
        .coeff_23(coeef[23]),
        .coeff_24(coeef[24]),
        .coeff_25(coeef[25]),
        .coeff_26(coeef[26]),
        .coeff_27(coeef[27]),
        .coeff_28(coeef[28]),
        .coeff_29(coeef[29]),
        .coeff_30(coeef[30]),
        .coeff_31(coeef[31]),
        .coeff_32(coeef[32]),
        .coeff_33(coeef[33]),
        .coeff_34(coeef[34]),
        .coeff_35(coeef[35]),
        .coeff_36(coeef[36]),
        .coeff_37(coeef[37]),
        .coeff_38(coeef[38]),
        .coeff_39(coeef[39]),
        .coeff_40(coeef[40]),
        .coeff_41(coeef[41]),
        .coeff_42(coeef[42]),
        .coeff_43(coeef[43]),
        .coeff_44(coeef[44]),
        .coeff_45(coeef[45]),
        .coeff_46(coeef[46]),
        .coeff_47(coeef[47]),
        .coeff_48(coeef[48]),
        .coeff_49(coeef[49]),

        .sum(sum),

        .out(out)
    );

    initial begin
        // Initialize Inputs

        enable = 0;
        reset = 0;
        #10;

        $readmemb("input_values.mem", inputs);
        $readmemb("weights_values.mem", coeef);

        // Display the inputs
        for (i = 0; i < 51; i = i + 1) begin
            $display("%d -> coeef %h %d %f \tInputs: %h %d %f", i, coeef[i], coeef[i], coeef[i]/32768.0, inputs[i], inputs[i], inputs[i]/32768.0);
            // $display("%f \t%f",coeef[i]/32768.0, inputs[i]/32768.0);
        end

        // Generate a positive impulse on reset
        reset = 1;
        #5; 
        reset = 0;
        #10; 

        // Wait for the perceptron to process the inputs
        #200;

        // Generate a positive impulse on enable
        enable = 1;
        #10; 
        enable = 0;

        // Display the output
        $display("Output: %h %d %f", out, out, out/32768.0);

        // Finish the simulation
        $finish;
    end

endmodule
