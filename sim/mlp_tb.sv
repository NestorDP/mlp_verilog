`timescale 1ns/1ps

module mlp_tb;

    // Define Parameters
    parameter ADDR_WIDTH        = 5;  // select_region width (actually 5 bits uses [4:0])
    parameter ADDR_SIGNED_WIDTH = 10; // address width
    parameter MULT_WIDTH        = 46; // Width for 'out_mult' signals
    parameter INPUT_DEPTH       = 50; // Size of the 'inputs' array
    parameter Q_FRACTIONAL      = 15;
    parameter Q_INTEGER         = 7;
    parameter INPUT_WIDTH       = Q_FRACTIONAL + 1; // Width for 'inputs' and 'out'
    parameter PARAM_WIDTH       = 23; // Width for 'parameters' and intermediate 'out_neuron' signals

    // Inputs
    logic clock;
    logic reset;

    logic write_parameters;
    logic [ADDR_WIDTH-1:0] select_region;
    logic signed [ADDR_SIGNED_WIDTH-1:0] address;
    logic signed [INPUT_WIDTH-1:0] inputs [0:INPUT_DEPTH-1];
    logic signed [PARAM_WIDTH-1:0] parameters;

    // Outputs
    logic signed [INPUT_WIDTH-1:0] out;

    logic signed [PARAM_WIDTH-1:0] out_neuron_1;
    logic signed [PARAM_WIDTH-1:0] out_neuron_2;
    logic signed [PARAM_WIDTH-1:0] out_neuron_3;
    logic signed [PARAM_WIDTH-1:0] out_neuron_4;
    logic signed [PARAM_WIDTH-1:0] out_neuron_5;
    
    logic signed [PARAM_WIDTH-1:0] out_linear;

    logic signed [MULT_WIDTH-1:0] out_mult0;
    logic signed [MULT_WIDTH-1:0] out_mult1;
    logic signed [MULT_WIDTH-1:0] out_mult2;
    logic signed [MULT_WIDTH-1:0] out_mult3;
    logic signed [MULT_WIDTH-1:0] out_mult4;

    // Instantiate the Perceptron module
    mlp  # (
        .Q_FRACTIONAL(15),
        .Q_INTEGER(7)
    ) uut (
        .reset(reset),
        .clock(clock),

        .write_parameters(write_parameters),
        .select_region(select_region),
        .address(address),
        .parameters(parameters),

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

        .out_neuron_1(out_neuron_1),
        .out_neuron_2(out_neuron_2),
        .out_neuron_3(out_neuron_3),
        .out_neuron_4(out_neuron_4),
        .out_neuron_5(out_neuron_5),

        .out_linear(out_linear),
      
        .out_mult0(out_mult0),
        .out_mult1(out_mult1),
        .out_mult2(out_mult2),
        .out_mult3(out_mult3),
        .out_mult4(out_mult4),

        .out(out)
    );

    int i;
    int output_file;
    int software_linear_results_file;
    logic signed [22:0] parameters_input [0:260];
    logic signed [15:0] targets [0:19];
    real software_linear_results [0:19];
    string fname;
    string output_file_name;

    real error;


    // Arrays for eta and et values
    string eta_list [0:1] = '{"eta0", "eta1"};
    string et_list  [0:4] = '{"et3", "et4", "et5", "et6", "et7"};

    always #10 clock = ~clock;

    initial begin
        // Loop over all eta and et combinations
        foreach (eta_list[eta_idx]) begin

            foreach (et_list[et_idx]) begin
                string eta, et;
                eta = eta_list[eta_idx];
                et  = et_list[et_idx];
                $display("----------------------------------------------------------------------");
                $display("     Output Comparison: Hardware vs. Software for Region [%s] [%s]", eta, et);
                $display("----------------------------------------------------------------------");
                $display("            Hardware    Software     Error (%%) ");
                // Initialize Inputs
                write_parameters = 1;
                select_region = 0;
                clock = 0;

                // Generate a positive impulse on reset                
                reset = 1;
                #10;
                reset = 0;

                // Load the targets data from memory files
                fname = $sformatf("../mem/central_barrel/%s/%s/targets_%s_%s.mem", eta, et, et, eta);
                $readmemb(fname, targets);

                // Load the parameters (weights and bias) data from memory files
                fname = $sformatf("../mem/central_barrel/%s/%s/q15_params_%s_%s.mem", eta, et, et, eta);
                $readmemb(fname, parameters_input);

                // Load the software linear results for comparison
                software_linear_results_file = $fopen($sformatf("../resultados_software/%s/%s/saida_linear_%s_%s.txt", eta, et, et, eta), "r");
                for (i = 0; i < 20; i++) begin
                    $fscanf(software_linear_results_file, "%f", software_linear_results[i]);
                end
                $fclose(software_linear_results_file);

                #30; 

                // Initialize parameters loading process
                // Load parameters into the MLP module
                for (i = 0; i <= 260; i++) begin
                    write_parameters = 1;
                    address = i;
                    parameters = parameters_input[i];
                    #25;
                end
                write_parameters = 0;


                // Open output file
                output_file_name  = $sformatf("../mem/central_barrel/%s/%s/%s_%s_output.txt", eta, et, et, eta);
                output_file  = $fopen(output_file_name, "w");

                // Process each input set
                for (i = 0; i < 20; i++) begin
                    fname = $sformatf("../mem/central_barrel/%s/%s/rings_data_%0d_%s_%s.mem", eta, et, i, et, eta);
                    $readmemb(fname, inputs);

                    #250;
                    error = ((out_linear/32768.0 - software_linear_results[i])/software_linear_results[i])*100.0;
                    if (error < 0) error = -error; // Take absolute value of error
                    // Display the output
                    $display("    [%2d]  %10.6f | %10.6f | %10.6f ", 
                            i, out_linear/32768.0, software_linear_results[i], error);
                    $fwrite(output_file,  "%f\n", out_linear/32768.0);
                end

                $fclose(output_file);

            end // et_list
        end // eta_list

        // Finish the simulation
        $finish;
    end
endmodule
