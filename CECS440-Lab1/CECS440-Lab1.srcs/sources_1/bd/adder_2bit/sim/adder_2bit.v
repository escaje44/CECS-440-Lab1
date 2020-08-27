//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Thu Aug 27 12:53:28 2020
//Host        : DESKTOP-VJ5IPSS running 64-bit major release  (build 9200)
//Command     : generate_target adder_2bit.bd
//Design      : adder_2bit
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "adder_2bit,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=adder_2bit,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=8,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "adder_2bit.hwdef" *) 
module adder_2bit
   (A,
    B,
    Sum);
  input [1:0]A;
  input [1:0]B;
  output [2:0]Sum;

  wire [1:0]A_1;
  wire [1:0]B_1;
  wire FA_0_Cout;
  wire FA_0_S;
  wire FA_1_Cout;
  wire FA_1_S;
  wire [2:0]xlconcat_0_dout;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlslice_0_Dout;
  wire [0:0]xlslice_1_Dout;
  wire [0:0]xlslice_2_Dout;
  wire [0:0]xlslice_3_Dout;

  assign A_1 = A[1:0];
  assign B_1 = B[1:0];
  assign Sum[2:0] = xlconcat_0_dout;
  adder_2bit_FA_0_0 FA_0
       (.A(xlslice_0_Dout),
        .B(xlslice_3_Dout),
        .Cin(xlconstant_0_dout),
        .Cout(FA_0_Cout),
        .S(FA_0_S));
  adder_2bit_FA_1_0 FA_1
       (.A(xlslice_1_Dout),
        .B(xlslice_2_Dout),
        .Cin(FA_0_Cout),
        .Cout(FA_1_Cout),
        .S(FA_1_S));
  adder_2bit_xlconcat_0_0 xlconcat_0
       (.In0(FA_0_S),
        .In1(FA_1_S),
        .In2(FA_1_Cout),
        .dout(xlconcat_0_dout));
  adder_2bit_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  adder_2bit_xlslice_0_0 xlslice_0
       (.Din(A_1),
        .Dout(xlslice_0_Dout));
  adder_2bit_xlslice_1_0 xlslice_1
       (.Din(A_1),
        .Dout(xlslice_1_Dout));
  adder_2bit_xlslice_2_0 xlslice_2
       (.Din(B_1),
        .Dout(xlslice_2_Dout));
  adder_2bit_xlslice_3_0 xlslice_3
       (.Din(B_1),
        .Dout(xlslice_3_Dout));
endmodule
