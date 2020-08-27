//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Thu Aug 27 12:53:28 2020
//Host        : DESKTOP-VJ5IPSS running 64-bit major release  (build 9200)
//Command     : generate_target adder_2bit_wrapper.bd
//Design      : adder_2bit_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module adder_2bit_wrapper
   (A,
    B,
    Sum);
  input [1:0]A;
  input [1:0]B;
  output [2:0]Sum;

  wire [1:0]A;
  wire [1:0]B;
  wire [2:0]Sum;

  adder_2bit adder_2bit_i
       (.A(A),
        .B(B),
        .Sum(Sum));
endmodule
