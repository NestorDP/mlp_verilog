module perceptron (
    input enable,
    input reset,

    input signed [15:0] bias,

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

    output signed [33:0] sum,

    output signed [15:0] out
);

    reg  signed [15:0] output_register;
    wire signed [15:0] output_typeconvert;
   
    wire signed [30:0] product0;
    wire signed [30:0] product1;
    wire signed [30:0] product2;
    wire signed [30:0] product3;
    wire signed [30:0] product4;
    wire signed [30:0] product5;
    wire signed [30:0] product6;
    wire signed [30:0] product7;
    wire signed [30:0] product8;
    wire signed [30:0] product9;
    wire signed [30:0] product10;
    wire signed [30:0] product11;
    wire signed [30:0] product12;
    wire signed [30:0] product13;
    wire signed [30:0] product14;
    wire signed [30:0] product15;
    wire signed [30:0] product16;
    wire signed [30:0] product17;
    wire signed [30:0] product18;
    wire signed [30:0] product19;
    wire signed [30:0] product20;
    wire signed [30:0] product21;
    wire signed [30:0] product22;
    wire signed [30:0] product23;
    wire signed [30:0] product24;
    wire signed [30:0] product25;
    wire signed [30:0] product26;
    wire signed [30:0] product27;
    wire signed [30:0] product28;
    wire signed [30:0] product29;
    wire signed [30:0] product30;
    wire signed [30:0] product31;
    wire signed [30:0] product32;
    wire signed [30:0] product33;
    wire signed [30:0] product34;
    wire signed [30:0] product35;
    wire signed [30:0] product36;
    wire signed [30:0] product37;
    wire signed [30:0] product38;
    wire signed [30:0] product39;
    wire signed [30:0] product40;
    wire signed [30:0] product41;
    wire signed [30:0] product42;
    wire signed [30:0] product43;
    wire signed [30:0] product44;
    wire signed [30:0] product45;
    wire signed [30:0] product46;
    wire signed [30:0] product47;
    wire signed [30:0] product48;
    wire signed [30:0] product49; 

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
    assign product0 = $signed({multi0[28:0], 2'b00});

    assign multi1 = input_1 * coeff_1;
    assign product1 = $signed({multi1[28:0], 2'b00});

    assign multi2 = input_2 * coeff_2;
    assign product2 = $signed({multi2[28:0], 2'b00});

    assign multi3 = input_3 * coeff_3;
    assign product3 = $signed({multi3[28:0], 2'b00});

    assign multi4 = input_4 * coeff_4;
    assign product4 = $signed({multi4[28:0], 2'b00});

    assign multi5 = input_5 * coeff_5;
    assign product5 = $signed({multi5[28:0], 2'b00});

    assign multi6 = input_6 * coeff_6;
    assign product6 = $signed({multi6[28:0], 2'b00});

    assign multi7 = input_7 * coeff_7;
    assign product7 = $signed({multi7[28:0], 2'b00});

    assign multi8 = input_8 * coeff_8;
    assign product8 = $signed({multi8[28:0], 2'b00});

    assign multi9 = input_9 * coeff_9;
    assign product9 = $signed({multi9[28:0], 2'b00});

    assign multi10 = input_10 * coeff_10;
    assign product10 = $signed({multi10[28:0], 2'b00});

    assign multi11 = input_11 * coeff_11;
    assign product11 = $signed({multi11[28:0], 2'b00});

    assign multi12 = input_12 * coeff_12;
    assign product12 = $signed({multi12[28:0], 2'b00});

    assign multi13 = input_13 * coeff_13;
    assign product13 = $signed({multi13[28:0], 2'b00});

    assign multi14 = input_14 * coeff_14;
    assign product14 = $signed({multi14[28:0], 2'b00});

    assign multi15 = input_15 * coeff_15;
    assign product15 = $signed({multi15[28:0], 2'b00});

    assign multi16 = input_16 * coeff_16;
    assign product16 = $signed({multi16[28:0], 2'b00});

    assign multi17 = input_17 * coeff_17;
    assign product17 = $signed({multi17[28:0], 2'b00});

    assign multi18 = input_18 * coeff_18;
    assign product18 = $signed({multi18[28:0], 2'b00});

    assign multi19 = input_19 * coeff_19;
    assign product19 = $signed({multi19[28:0], 2'b00});

    assign multi20 = input_20 * coeff_20;
    assign product20 = $signed({multi20[28:0], 2'b00});

    assign multi21 = input_21 * coeff_21;
    assign product21 = $signed({multi21[28:0], 2'b00});

    assign multi22 = input_22 * coeff_22;
    assign product22 = $signed({multi22[28:0], 2'b00});

    assign multi23 = input_23 * coeff_23;
    assign product23 = $signed({multi23[28:0], 2'b00});

    assign multi24 = input_24 * coeff_24;
    assign product24 = $signed({multi24[28:0], 2'b00});

    assign multi25 = input_25 * coeff_25;
    assign product25 = $signed({multi25[28:0], 2'b00});

    assign multi26 = input_26 * coeff_26;
    assign product26 = $signed({multi26[28:0], 2'b00});

    assign multi27 = input_27 * coeff_27;
    assign product27 = $signed({multi27[28:0], 2'b00});

    assign multi28 = input_28 * coeff_28;
    assign product28 = $signed({multi28[28:0], 2'b00});

    assign multi29 = input_29 * coeff_29;
    assign product29 = $signed({multi29[28:0], 2'b00});

    assign multi30 = input_30 * coeff_30;
    assign product30 = $signed({multi30[28:0], 2'b00});

    assign multi31 = input_31 * coeff_31;
    assign product31 = $signed({multi31[28:0], 2'b00});

    assign multi32 = input_32 * coeff_32;
    assign product32 = $signed({multi32[28:0], 2'b00});

    assign multi33 = input_33 * coeff_33;
    assign product33 = $signed({multi33[28:0], 2'b00});

    assign multi34 = input_34 * coeff_34;
    assign product34 = $signed({multi34[28:0], 2'b00});

    assign multi35 = input_35 * coeff_35;
    assign product35 = $signed({multi35[28:0], 2'b00});

    assign multi36 = input_36 * coeff_36;
    assign product36 = $signed({multi36[28:0], 2'b00});

    assign multi37 = input_37 * coeff_37;
    assign product37 = $signed({multi37[28:0], 2'b00});

    assign multi38 = input_38 * coeff_38;
    assign product38 = $signed({multi38[28:0], 2'b00});

    assign multi39 = input_39 * coeff_39;
    assign product39 = $signed({multi39[28:0], 2'b00});

    assign multi40 = input_40 * coeff_40;
    assign product40 = $signed({multi40[28:0], 2'b00});

    assign multi41 = input_41 * coeff_41;
    assign product41 = $signed({multi41[28:0], 2'b00});

    assign multi42 = input_42 * coeff_42;
    assign product42 = $signed({multi42[28:0], 2'b00});

    assign multi43 = input_43 * coeff_43;
    assign product43 = $signed({multi43[28:0], 2'b00});

    assign multi44 = input_44 * coeff_44;
    assign product44 = $signed({multi44[28:0], 2'b00});

    assign multi45 = input_45 * coeff_45;
    assign product45 = $signed({multi45[28:0], 2'b00});

    assign multi46 = input_46 * coeff_46;
    assign product46 = $signed({multi46[28:0], 2'b00});

    assign multi47 = input_47 * coeff_47;
    assign product47 = $signed({multi47[28:0], 2'b00});

    assign multi48 = input_48 * coeff_48;
    assign product48 = $signed({multi48[28:0], 2'b00});

    assign multi49 = input_49 * coeff_49;
    assign product49 = $signed({multi49[28:0], 2'b00});
  

    assign output_typeconvert = (sum[32:0] + {sum[17], {16{~sum[17]}}})>>>17;


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