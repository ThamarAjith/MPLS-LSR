////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: K.39
//  \   \         Application: netgen
//  /   /         Filename: div_gen_v1_0.v
// /___/   /\     Timestamp: Mon May  9 14:44:18 2011
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -w -sim -ofmt verilog /home/ajith/netfpga/projects/mpls_switch/cores/divider/tmp/_cg/div_gen_v1_0.ngc /home/ajith/netfpga/projects/mpls_switch/cores/divider/tmp/_cg/div_gen_v1_0.v 
// Device	: 2vp50ff1152-7
// Input file	: /home/ajith/netfpga/projects/mpls_switch/cores/divider/tmp/_cg/div_gen_v1_0.ngc
// Output file	: /home/ajith/netfpga/projects/mpls_switch/cores/divider/tmp/_cg/div_gen_v1_0.v
// # of Modules	: 1
// Design Name	: div_gen_v1_0
// Xilinx        : /opt/Xilinx/10.1/ISE
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Development System Reference Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module div_gen_v1_0 (
  rfd, clk, dividend, quotient, divisor, remainder
);
  output rfd;
  input clk;
  input [7 : 0] dividend;
  output [7 : 0] quotient;
  input [3 : 0] divisor;
  output [3 : 0] remainder;
  
  // synthesis translate_off
  
  wire NlwRenamedSig_OI_rfd;
  wire \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].num_stages.numerator_gen.del_numer/bb_reg/fd/Mshreg_output_6_275 ;
  wire \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].num_stages.numerator_gen.del_numer/bb_reg/fd/Mshreg_output_5_274 ;
  wire \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].num_stages.numerator_gen.del_numer/bb_reg/fd/Mshreg_output_7_273 ;
  wire \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].num_stages.numerator_gen.del_numer/bb_reg/fd/Mshreg_output_3_272 ;
  wire \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].num_stages.numerator_gen.del_numer/bb_reg/fd/Mshreg_output_2_271 ;
  wire \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].num_stages.numerator_gen.del_numer/bb_reg/fd/Mshreg_output_4_270 ;
  wire \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].quot_gen.quot_reg.quot_out/bb_reg/fd/Mshreg_output_7_269 ;
  wire \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].quot_gen.quot_reg.quot_out/bb_reg/fd/Mshreg_output_6_268 ;
  wire \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].num_stages.numerator_gen.del_numer/bb_reg/fd/Mshreg_output_1_267 ;
  wire \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].quot_gen.quot_reg.quot_out/bb_reg/fd/Mshreg_output_5_266 ;
  wire \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].quot_gen.quot_reg.quot_out/bb_reg/fd/Mshreg_output_4_265 ;
  wire \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].quot_gen.quot_reg.quot_out/bb_reg/fd/Mshreg_output_3_264 ;
  wire \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].quot_gen.quot_reg.quot_out/bb_reg/fd/Mshreg_output_2_263 ;
  wire NLW_VCC_P_UNCONNECTED;
  wire NLW_GND_G_UNCONNECTED;
  wire \NLW_BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/qo.lut/lut/i_4lut_O_UNCONNECTED ;
  wire \NLW_BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/qo.lut/lut/i_4lut_O_UNCONNECTED ;
  wire \NLW_BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.muxtop.carrymuxtop_O_UNCONNECTED ;
  wire \NLW_BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.muxtop.carrymuxtop_O_UNCONNECTED ;
  wire \NLW_BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.muxtop.carrymuxtop_O_UNCONNECTED ;
  wire \NLW_BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.muxtop.carrymuxtop_O_UNCONNECTED ;
  wire \NLW_BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.muxtop.carrymuxtop_O_UNCONNECTED ;
  wire \NLW_BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.muxtop.carrymuxtop_O_UNCONNECTED ;
  wire \NLW_BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.muxtop.carrymuxtop_O_UNCONNECTED ;
  wire \NLW_BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.muxtop.carrymuxtop_O_UNCONNECTED ;
  wire \NLW_BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/i_simple_model.muxtop.carrymuxtop_O_UNCONNECTED ;
  wire [7 : 0] dividend_2;
  wire [3 : 0] divisor_3;
  wire [7 : 0] quotient_4;
  wire [3 : 0] remainder_5;
  wire [4 : 1] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output ;
  wire [4 : 1] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output ;
  wire [4 : 1] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output ;
  wire [4 : 1] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output ;
  wire [4 : 1] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output ;
  wire [4 : 1] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output ;
  wire [4 : 1] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output ;
  wire [4 : 1] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output ;
  wire [7 : 0] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/qpi ;
  wire [7 : 1] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].quot_gen.quot_reg.quot_out/bb_reg/fd/output ;
  wire [3 : 0] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum ;
  wire [3 : 0] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple ;
  wire [8 : 8] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].num_stages.numerator_gen.del_numer/bb_reg/fd/output ;
  wire [5 : 1] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output ;
  wire [4 : 0] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple ;
  wire [4 : 0] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum ;
  wire [3 : 0] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple ;
  wire [7 : 7] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].num_stages.numerator_gen.del_numer/bb_reg/fd/output ;
  wire [6 : 0] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/inv_o ;
  wire [5 : 1] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output ;
  wire [4 : 0] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple ;
  wire [4 : 0] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum ;
  wire [3 : 0] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple ;
  wire [6 : 6] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].num_stages.numerator_gen.del_numer/bb_reg/fd/output ;
  wire [5 : 1] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output ;
  wire [4 : 0] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple ;
  wire [4 : 0] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum ;
  wire [3 : 0] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple ;
  wire [5 : 5] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].num_stages.numerator_gen.del_numer/bb_reg/fd/output ;
  wire [5 : 1] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output ;
  wire [4 : 0] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple ;
  wire [4 : 0] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum ;
  wire [3 : 0] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple ;
  wire [4 : 4] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].num_stages.numerator_gen.del_numer/bb_reg/fd/output ;
  wire [5 : 1] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output ;
  wire [4 : 0] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple ;
  wire [4 : 0] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum ;
  wire [3 : 0] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple ;
  wire [3 : 3] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].num_stages.numerator_gen.del_numer/bb_reg/fd/output ;
  wire [5 : 1] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output ;
  wire [4 : 0] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple ;
  wire [4 : 0] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum ;
  wire [3 : 0] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple ;
  wire [2 : 2] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].num_stages.numerator_gen.del_numer/bb_reg/fd/output ;
  wire [5 : 1] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output ;
  wire [4 : 0] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple ;
  wire [4 : 0] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum ;
  wire [3 : 0] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple ;
  wire [1 : 1] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].num_stages.numerator_gen.del_numer/bb_reg/fd/output ;
  wire [4 : 0] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple ;
  wire [5 : 1] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output ;
  wire [3 : 0] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/halfsum ;
  wire [3 : 0] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/carry_simple ;
  wire [4 : 0] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/di ;
  wire [4 : 1] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/final_div.del_end_divisor/bb_reg/fd/output ;
  wire [5 : 5] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output ;
  wire [4 : 0] \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/sum_simple ;
  wire [0 : 0] \BU2/quotient_exponent ;
  assign
    dividend_2[7] = dividend[7],
    dividend_2[6] = dividend[6],
    dividend_2[5] = dividend[5],
    dividend_2[4] = dividend[4],
    dividend_2[3] = dividend[3],
    dividend_2[2] = dividend[2],
    dividend_2[1] = dividend[1],
    dividend_2[0] = dividend[0],
    quotient[7] = quotient_4[7],
    quotient[6] = quotient_4[6],
    quotient[5] = quotient_4[5],
    quotient[4] = quotient_4[4],
    quotient[3] = quotient_4[3],
    quotient[2] = quotient_4[2],
    quotient[1] = quotient_4[1],
    quotient[0] = quotient_4[0],
    divisor_3[3] = divisor[3],
    divisor_3[2] = divisor[2],
    divisor_3[1] = divisor[1],
    divisor_3[0] = divisor[0],
    rfd = NlwRenamedSig_OI_rfd,
    remainder[3] = remainder_5[3],
    remainder[2] = remainder_5[2],
    remainder[1] = remainder_5[1],
    remainder[0] = remainder_5[0];
  VCC   VCC_0 (
    .P(NLW_VCC_P_UNCONNECTED)
  );
  GND   GND_1 (
    .G(NLW_GND_G_UNCONNECTED)
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].num_stages.numerator_gen.del_numer/bb_reg/fd/output_6  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].num_stages.numerator_gen.del_numer/bb_reg/fd/Mshreg_output_6_275 ),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].num_stages.numerator_gen.del_numer/bb_reg/fd/output [6])
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].num_stages.numerator_gen.del_numer/bb_reg/fd/Mshreg_output_6  (
    .A0(NlwRenamedSig_OI_rfd),
    .A1(\BU2/quotient_exponent [0]),
    .A2(\BU2/quotient_exponent [0]),
    .A3(\BU2/quotient_exponent [0]),
    .CLK(clk),
    .D(dividend_2[5]),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].num_stages.numerator_gen.del_numer/bb_reg/fd/Mshreg_output_6_275 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].num_stages.numerator_gen.del_numer/bb_reg/fd/output_5  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].num_stages.numerator_gen.del_numer/bb_reg/fd/Mshreg_output_5_274 ),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].num_stages.numerator_gen.del_numer/bb_reg/fd/output [5])
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].num_stages.numerator_gen.del_numer/bb_reg/fd/Mshreg_output_5  (
    .A0(\BU2/quotient_exponent [0]),
    .A1(NlwRenamedSig_OI_rfd),
    .A2(\BU2/quotient_exponent [0]),
    .A3(\BU2/quotient_exponent [0]),
    .CLK(clk),
    .D(dividend_2[4]),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].num_stages.numerator_gen.del_numer/bb_reg/fd/Mshreg_output_5_274 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].num_stages.numerator_gen.del_numer/bb_reg/fd/output_7  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].num_stages.numerator_gen.del_numer/bb_reg/fd/Mshreg_output_7_273 ),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].num_stages.numerator_gen.del_numer/bb_reg/fd/output [7])
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].num_stages.numerator_gen.del_numer/bb_reg/fd/Mshreg_output_7  (
    .A0(\BU2/quotient_exponent [0]),
    .A1(\BU2/quotient_exponent [0]),
    .A2(\BU2/quotient_exponent [0]),
    .A3(\BU2/quotient_exponent [0]),
    .CLK(clk),
    .D(dividend_2[6]),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].num_stages.numerator_gen.del_numer/bb_reg/fd/Mshreg_output_7_273 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].num_stages.numerator_gen.del_numer/bb_reg/fd/output_3  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].num_stages.numerator_gen.del_numer/bb_reg/fd/Mshreg_output_3_272 ),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].num_stages.numerator_gen.del_numer/bb_reg/fd/output [3])
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].num_stages.numerator_gen.del_numer/bb_reg/fd/Mshreg_output_3  (
    .A0(\BU2/quotient_exponent [0]),
    .A1(\BU2/quotient_exponent [0]),
    .A2(NlwRenamedSig_OI_rfd),
    .A3(\BU2/quotient_exponent [0]),
    .CLK(clk),
    .D(dividend_2[2]),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].num_stages.numerator_gen.del_numer/bb_reg/fd/Mshreg_output_3_272 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].num_stages.numerator_gen.del_numer/bb_reg/fd/output_2  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].num_stages.numerator_gen.del_numer/bb_reg/fd/Mshreg_output_2_271 ),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].num_stages.numerator_gen.del_numer/bb_reg/fd/output [2])
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].num_stages.numerator_gen.del_numer/bb_reg/fd/Mshreg_output_2  (
    .A0(NlwRenamedSig_OI_rfd),
    .A1(\BU2/quotient_exponent [0]),
    .A2(NlwRenamedSig_OI_rfd),
    .A3(\BU2/quotient_exponent [0]),
    .CLK(clk),
    .D(dividend_2[1]),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].num_stages.numerator_gen.del_numer/bb_reg/fd/Mshreg_output_2_271 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].num_stages.numerator_gen.del_numer/bb_reg/fd/output_4  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].num_stages.numerator_gen.del_numer/bb_reg/fd/Mshreg_output_4_270 ),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].num_stages.numerator_gen.del_numer/bb_reg/fd/output [4])
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].num_stages.numerator_gen.del_numer/bb_reg/fd/Mshreg_output_4  (
    .A0(NlwRenamedSig_OI_rfd),
    .A1(NlwRenamedSig_OI_rfd),
    .A2(\BU2/quotient_exponent [0]),
    .A3(\BU2/quotient_exponent [0]),
    .CLK(clk),
    .D(dividend_2[3]),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].num_stages.numerator_gen.del_numer/bb_reg/fd/Mshreg_output_4_270 )
  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].quot_gen.quot_reg.quot_out/bb_reg/fd/output_7  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].quot_gen.quot_reg.quot_out/bb_reg/fd/Mshreg_output_7_269 ),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].quot_gen.quot_reg.quot_out/bb_reg/fd/output [7])
  );
  SRL16 #(
    .INIT ( 16'h003F ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].quot_gen.quot_reg.quot_out/bb_reg/fd/Mshreg_output_7  (
    .A0(NlwRenamedSig_OI_rfd),
    .A1(\BU2/quotient_exponent [0]),
    .A2(NlwRenamedSig_OI_rfd),
    .A3(\BU2/quotient_exponent [0]),
    .CLK(clk),
    .D
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].quot_gen.quot_reg.quot_out/bb_reg/fd/Mshreg_output_7_269 )
  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].quot_gen.quot_reg.quot_out/bb_reg/fd/output_6  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].quot_gen.quot_reg.quot_out/bb_reg/fd/Mshreg_output_6_268 ),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].quot_gen.quot_reg.quot_out/bb_reg/fd/output [6])
  );
  SRL16 #(
    .INIT ( 16'h001F ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].quot_gen.quot_reg.quot_out/bb_reg/fd/Mshreg_output_6  (
    .A0(\BU2/quotient_exponent [0]),
    .A1(\BU2/quotient_exponent [0]),
    .A2(NlwRenamedSig_OI_rfd),
    .A3(\BU2/quotient_exponent [0]),
    .CLK(clk),
    .D
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].quot_gen.quot_reg.quot_out/bb_reg/fd/Mshreg_output_6_268 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].num_stages.numerator_gen.del_numer/bb_reg/fd/output_1  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].num_stages.numerator_gen.del_numer/bb_reg/fd/Mshreg_output_1_267 ),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].num_stages.numerator_gen.del_numer/bb_reg/fd/output [1])
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].num_stages.numerator_gen.del_numer/bb_reg/fd/Mshreg_output_1  (
    .A0(\BU2/quotient_exponent [0]),
    .A1(NlwRenamedSig_OI_rfd),
    .A2(NlwRenamedSig_OI_rfd),
    .A3(\BU2/quotient_exponent [0]),
    .CLK(clk),
    .D(dividend_2[0]),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].num_stages.numerator_gen.del_numer/bb_reg/fd/Mshreg_output_1_267 )
  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].quot_gen.quot_reg.quot_out/bb_reg/fd/output_5  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].quot_gen.quot_reg.quot_out/bb_reg/fd/Mshreg_output_5_266 ),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].quot_gen.quot_reg.quot_out/bb_reg/fd/output [5])
  );
  SRL16 #(
    .INIT ( 16'h000F ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].quot_gen.quot_reg.quot_out/bb_reg/fd/Mshreg_output_5  (
    .A0(NlwRenamedSig_OI_rfd),
    .A1(NlwRenamedSig_OI_rfd),
    .A2(\BU2/quotient_exponent [0]),
    .A3(\BU2/quotient_exponent [0]),
    .CLK(clk),
    .D
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].quot_gen.quot_reg.quot_out/bb_reg/fd/Mshreg_output_5_266 )
  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].quot_gen.quot_reg.quot_out/bb_reg/fd/output_4  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].quot_gen.quot_reg.quot_out/bb_reg/fd/Mshreg_output_4_265 ),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].quot_gen.quot_reg.quot_out/bb_reg/fd/output [4])
  );
  SRL16 #(
    .INIT ( 16'h0007 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].quot_gen.quot_reg.quot_out/bb_reg/fd/Mshreg_output_4  (
    .A0(\BU2/quotient_exponent [0]),
    .A1(NlwRenamedSig_OI_rfd),
    .A2(\BU2/quotient_exponent [0]),
    .A3(\BU2/quotient_exponent [0]),
    .CLK(clk),
    .D
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].quot_gen.quot_reg.quot_out/bb_reg/fd/Mshreg_output_4_265 )
  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].quot_gen.quot_reg.quot_out/bb_reg/fd/output_3  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].quot_gen.quot_reg.quot_out/bb_reg/fd/Mshreg_output_3_264 ),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].quot_gen.quot_reg.quot_out/bb_reg/fd/output [3])
  );
  SRL16 #(
    .INIT ( 16'h0003 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].quot_gen.quot_reg.quot_out/bb_reg/fd/Mshreg_output_3  (
    .A0(NlwRenamedSig_OI_rfd),
    .A1(\BU2/quotient_exponent [0]),
    .A2(\BU2/quotient_exponent [0]),
    .A3(\BU2/quotient_exponent [0]),
    .CLK(clk),
    .D
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].quot_gen.quot_reg.quot_out/bb_reg/fd/Mshreg_output_3_264 )
  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].quot_gen.quot_reg.quot_out/bb_reg/fd/output_2  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].quot_gen.quot_reg.quot_out/bb_reg/fd/Mshreg_output_2_263 ),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].quot_gen.quot_reg.quot_out/bb_reg/fd/output [2])
  );
  SRL16 #(
    .INIT ( 16'h0001 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].quot_gen.quot_reg.quot_out/bb_reg/fd/Mshreg_output_2  (
    .A0(\BU2/quotient_exponent [0]),
    .A1(\BU2/quotient_exponent [0]),
    .A2(\BU2/quotient_exponent [0]),
    .A3(\BU2/quotient_exponent [0]),
    .CLK(clk),
    .D
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].quot_gen.quot_reg.quot_out/bb_reg/fd/Mshreg_output_2_263 )
  );
  INV 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/Mxor_halfsum_Result<1>1_INV_0  (
    .I(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [2]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [1])
  );
  INV 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/Mxor_halfsum_Result<2>1_INV_0  (
    .I(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [3]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [2])
  );
  INV 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/Mxor_halfsum_Result<3>1_INV_0  (
    .I(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [4]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [3])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/Mxor_halfsum_Result<0>1  (
    .I0(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].num_stages.numerator_gen.del_numer/bb_reg/fd/output [7]),
    .I1(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [1]),
    .I2
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [0])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/Mxor_halfsum_Result<0>1  (
    .I0(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].num_stages.numerator_gen.del_numer/bb_reg/fd/output [6]),
    .I1(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [1]),
    .I2
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [0])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/Mxor_halfsum_Result<0>1  (
    .I0(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].num_stages.numerator_gen.del_numer/bb_reg/fd/output [5]),
    .I1(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [1]),
    .I2
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [0])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/Mxor_halfsum_Result<0>1  (
    .I0(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].num_stages.numerator_gen.del_numer/bb_reg/fd/output [4]),
    .I1(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [1]),
    .I2
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [0])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/Mxor_halfsum_Result<0>1  (
    .I0(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].num_stages.numerator_gen.del_numer/bb_reg/fd/output [3]),
    .I1(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [1]),
    .I2
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [0])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/Mxor_halfsum_Result<0>1  (
    .I0(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].num_stages.numerator_gen.del_numer/bb_reg/fd/output [2]),
    .I1(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [1]),
    .I2
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [0])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/Mxor_halfsum_Result<0>1  (
    .I0(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].num_stages.numerator_gen.del_numer/bb_reg/fd/output [1]),
    .I1(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [1]),
    .I2
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [0])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/halfsum<0>1  (
    .I0
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [1])
,
    .I1(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/final_div.del_end_divisor/bb_reg/fd/output [1]),
    .I2
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/halfsum [0])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/Mxor_halfsum_Result<0>1  (
    .I0(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].num_stages.numerator_gen.del_numer/bb_reg/fd/output [8]),
    .I1(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [1]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [0])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/Mxor_halfsum_Result<1>1  (
    .I0
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [1])
,
    .I1(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [2]),
    .I2
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [1])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/Mxor_halfsum_Result<1>1  (
    .I0
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [1])
,
    .I1(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [2]),
    .I2
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [1])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/Mxor_halfsum_Result<1>1  (
    .I0
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [1])
,
    .I1(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [2]),
    .I2
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [1])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/Mxor_halfsum_Result<1>1  (
    .I0
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [1])
,
    .I1(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [2]),
    .I2
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [1])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/Mxor_halfsum_Result<1>1  (
    .I0
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [1])
,
    .I1(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [2]),
    .I2
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [1])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/Mxor_halfsum_Result<1>1  (
    .I0
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [1])
,
    .I1(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [2]),
    .I2
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [1])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/Mxor_halfsum_Result<1>1  (
    .I0
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [1])
,
    .I1(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [2]),
    .I2
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [1])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/halfsum<1>1  (
    .I0
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [2])
,
    .I1(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/final_div.del_end_divisor/bb_reg/fd/output [2]),
    .I2
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/halfsum [1])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/Mxor_halfsum_Result<2>1  (
    .I0
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [2])
,
    .I1(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [3]),
    .I2
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [2])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/Mxor_halfsum_Result<2>1  (
    .I0
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [2])
,
    .I1(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [3]),
    .I2
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [2])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/Mxor_halfsum_Result<2>1  (
    .I0
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [2])
,
    .I1(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [3]),
    .I2
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [2])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/Mxor_halfsum_Result<2>1  (
    .I0
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [2])
,
    .I1(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [3]),
    .I2
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [2])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/Mxor_halfsum_Result<2>1  (
    .I0
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [2])
,
    .I1(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [3]),
    .I2
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [2])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/Mxor_halfsum_Result<2>1  (
    .I0
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [2])
,
    .I1(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [3]),
    .I2
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [2])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/Mxor_halfsum_Result<2>1  (
    .I0
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [2])
,
    .I1(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [3]),
    .I2
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [2])
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/halfsum<2>1  (
    .I0(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/final_div.del_end_divisor/bb_reg/fd/output [3]),
    .I1
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [3])
,
    .I2
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/halfsum [2])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/Mxor_halfsum_Result<3>1  (
    .I0
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [3])
,
    .I1(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [4]),
    .I2
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [3])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/Mxor_halfsum_Result<3>1  (
    .I0
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [3])
,
    .I1(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [4]),
    .I2
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [3])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/Mxor_halfsum_Result<3>1  (
    .I0
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [3])
,
    .I1(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [4]),
    .I2
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [3])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/Mxor_halfsum_Result<3>1  (
    .I0
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [3])
,
    .I1(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [4]),
    .I2
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [3])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/Mxor_halfsum_Result<3>1  (
    .I0
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [3])
,
    .I1(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [4]),
    .I2
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [3])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/Mxor_halfsum_Result<3>1  (
    .I0
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [3])
,
    .I1(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [4]),
    .I2
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [3])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/Mxor_halfsum_Result<3>1  (
    .I0
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [3])
,
    .I1(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [4]),
    .I2
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [3])
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/halfsum<3>1  (
    .I0(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/final_div.del_end_divisor/bb_reg/fd/output [4]),
    .I1
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [4])
,
    .I2
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/halfsum [3])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/Mxor_halfsum_Result<4>1  (
    .I0
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [4])
,
    .I1
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [4])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/Mxor_halfsum_Result<4>1  (
    .I0
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [4])
,
    .I1
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [4])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/Mxor_halfsum_Result<4>1  (
    .I0
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [4])
,
    .I1
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [4])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/Mxor_halfsum_Result<4>1  (
    .I0
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [4])
,
    .I1
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [4])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/Mxor_halfsum_Result<4>1  (
    .I0
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [4])
,
    .I1
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [4])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/Mxor_halfsum_Result<4>1  (
    .I0
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [4])
,
    .I1
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [4])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/Mxor_halfsum_Result<4>1  (
    .I0
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [4])
,
    .I1
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/reg_quot_out.reg_quot/bb_reg/fd/output_8  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/qpi [7]),
    .Q(quotient_4[7])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/reg_quot_out.reg_quot/bb_reg/fd/output_7  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/qpi [6]),
    .Q(quotient_4[6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/reg_quot_out.reg_quot/bb_reg/fd/output_6  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/qpi [5]),
    .Q(quotient_4[5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/reg_quot_out.reg_quot/bb_reg/fd/output_5  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/qpi [4]),
    .Q(quotient_4[4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/reg_quot_out.reg_quot/bb_reg/fd/output_4  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/qpi [3]),
    .Q(quotient_4[3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/reg_quot_out.reg_quot/bb_reg/fd/output_3  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/qpi [2]),
    .Q(quotient_4[2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/reg_quot_out.reg_quot/bb_reg/fd/output_2  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/qpi [1]),
    .Q(quotient_4[1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/reg_quot_out.reg_quot/bb_reg/fd/output_1  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/qpi [0]),
    .Q(quotient_4[0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].num_stages.numerator_gen.del_numer/bb_reg/fd/output_8  (
    .C(clk),
    .D(dividend_2[7]),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].num_stages.numerator_gen.del_numer/bb_reg/fd/output [8])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/final_div.del_end_divisor/bb_reg/fd/output_4  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [4]),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/final_div.del_end_divisor/bb_reg/fd/output [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/final_div.del_end_divisor/bb_reg/fd/output_3  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [3]),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/final_div.del_end_divisor/bb_reg/fd/output [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/final_div.del_end_divisor/bb_reg/fd/output_2  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [2]),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/final_div.del_end_divisor/bb_reg/fd/output [2])
  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/final_div.del_end_divisor/bb_reg/fd/output_1  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [1]),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/final_div.del_end_divisor/bb_reg/fd/output [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output_4  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [4]),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output_3  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [3]),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output_2  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [2]),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [2])
  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output_1  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [1]),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output_4  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [4]),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output_3  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [3]),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output_2  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [2]),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [2])
  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output_1  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [1]),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output_4  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [4]),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output_3  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [3]),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output_2  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [2]),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [2])
  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output_1  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [1]),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output_4  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [4]),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output_3  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [3]),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output_2  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [2]),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [2])
  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output_1  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [1]),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output_4  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [4]),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output_3  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [3]),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output_2  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [2]),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [2])
  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output_1  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [1]),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output_4  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [4]),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output_3  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [3]),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output_2  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [2]),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [2])
  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output_1  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [1]),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output_4  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [4]),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output_3  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [3]),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output_2  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [2]),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [2])
  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output_1  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [1]),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output_4  (
    .C(clk),
    .D(divisor_3[3]),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output_3  (
    .C(clk),
    .D(divisor_3[2]),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output_2  (
    .C(clk),
    .D(divisor_3[1]),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [2])
  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output_1  (
    .C(clk),
    .D(divisor_3[0]),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].divisor_gen.divisor_dc1.del_divisor_msbs/bb_reg/fd/output [1])
  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].quot_gen.quot_reg.quot_out/bb_reg/fd/output_1  (
    .C(clk),
    .D
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].quot_gen.quot_reg.quot_out/bb_reg/fd/output [1])
  );
  LUT4 #(
    .INIT ( 16'h5555 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/inv_quot.inv16/inv_loop[0].inv_m/lut/i_4lut  (
    .I0
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .I1(\BU2/quotient_exponent [0]),
    .I2(\BU2/quotient_exponent [0]),
    .I3(\BU2/quotient_exponent [0]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/qpi [0])
  );
  LUT4 #(
    .INIT ( 16'h5555 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/inv_quot.inv16/inv_loop[1].inv_m/lut/i_4lut  (
    .I0(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].quot_gen.quot_reg.quot_out/bb_reg/fd/output [1]),
    .I1(\BU2/quotient_exponent [0]),
    .I2(\BU2/quotient_exponent [0]),
    .I3(\BU2/quotient_exponent [0]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/qpi [1])
  );
  LUT4 #(
    .INIT ( 16'h5555 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/inv_quot.inv16/inv_loop[2].inv_m/lut/i_4lut  (
    .I0(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].quot_gen.quot_reg.quot_out/bb_reg/fd/output [2]),
    .I1(\BU2/quotient_exponent [0]),
    .I2(\BU2/quotient_exponent [0]),
    .I3(\BU2/quotient_exponent [0]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/qpi [2])
  );
  LUT4 #(
    .INIT ( 16'h5555 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/inv_quot.inv16/inv_loop[3].inv_m/lut/i_4lut  (
    .I0(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].quot_gen.quot_reg.quot_out/bb_reg/fd/output [3]),
    .I1(\BU2/quotient_exponent [0]),
    .I2(\BU2/quotient_exponent [0]),
    .I3(\BU2/quotient_exponent [0]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/qpi [3])
  );
  LUT4 #(
    .INIT ( 16'h5555 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/inv_quot.inv16/inv_loop[4].inv_m/lut/i_4lut  (
    .I0(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].quot_gen.quot_reg.quot_out/bb_reg/fd/output [4]),
    .I1(\BU2/quotient_exponent [0]),
    .I2(\BU2/quotient_exponent [0]),
    .I3(\BU2/quotient_exponent [0]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/qpi [4])
  );
  LUT4 #(
    .INIT ( 16'h5555 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/inv_quot.inv16/inv_loop[5].inv_m/lut/i_4lut  (
    .I0(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].quot_gen.quot_reg.quot_out/bb_reg/fd/output [5]),
    .I1(\BU2/quotient_exponent [0]),
    .I2(\BU2/quotient_exponent [0]),
    .I3(\BU2/quotient_exponent [0]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/qpi [5])
  );
  LUT4 #(
    .INIT ( 16'h5555 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/inv_quot.inv16/inv_loop[6].inv_m/lut/i_4lut  (
    .I0(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].quot_gen.quot_reg.quot_out/bb_reg/fd/output [6]),
    .I1(\BU2/quotient_exponent [0]),
    .I2(\BU2/quotient_exponent [0]),
    .I3(\BU2/quotient_exponent [0]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/qpi [6])
  );
  LUT4 #(
    .INIT ( 16'h5555 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/inv_quot.inv16/inv_loop[7].inv_m/lut/i_4lut  (
    .I0(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].quot_gen.quot_reg.quot_out/bb_reg/fd/output [7]),
    .I1(\BU2/quotient_exponent [0]),
    .I2(\BU2/quotient_exponent [0]),
    .I3(\BU2/quotient_exponent [0]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/qpi [7])
  );
  LUT4 #(
    .INIT ( 16'h5555 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/qo.lut/lut/i_4lut  (
    .I0
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .I1(\BU2/quotient_exponent [0]),
    .I2(\BU2/quotient_exponent [0]),
    .I3(\BU2/quotient_exponent [0]),
    .O(\NLW_BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/qo.lut/lut/i_4lut_O_UNCONNECTED )
  );
  LUT4 #(
    .INIT ( 16'h5555 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/qo.lut/lut/i_4lut  (
    .I0
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .I1(\BU2/quotient_exponent [0]),
    .I2(\BU2/quotient_exponent [0]),
    .I3(\BU2/quotient_exponent [0]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/inv_o [6])
  );
  LUT4 #(
    .INIT ( 16'h5555 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/qo.lut/lut/i_4lut  (
    .I0
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .I1(\BU2/quotient_exponent [0]),
    .I2(\BU2/quotient_exponent [0]),
    .I3(\BU2/quotient_exponent [0]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/inv_o [5])
  );
  LUT4 #(
    .INIT ( 16'h5555 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/qo.lut/lut/i_4lut  (
    .I0
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .I1(\BU2/quotient_exponent [0]),
    .I2(\BU2/quotient_exponent [0]),
    .I3(\BU2/quotient_exponent [0]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/inv_o [4])
  );
  LUT4 #(
    .INIT ( 16'h5555 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/qo.lut/lut/i_4lut  (
    .I0
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .I1(\BU2/quotient_exponent [0]),
    .I2(\BU2/quotient_exponent [0]),
    .I3(\BU2/quotient_exponent [0]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/inv_o [3])
  );
  LUT4 #(
    .INIT ( 16'h5555 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/qo.lut/lut/i_4lut  (
    .I0
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .I1(\BU2/quotient_exponent [0]),
    .I2(\BU2/quotient_exponent [0]),
    .I3(\BU2/quotient_exponent [0]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/inv_o [2])
  );
  LUT4 #(
    .INIT ( 16'h5555 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/qo.lut/lut/i_4lut  (
    .I0
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .I1(\BU2/quotient_exponent [0]),
    .I2(\BU2/quotient_exponent [0]),
    .I3(\BU2/quotient_exponent [0]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/inv_o [1])
  );
  LUT4 #(
    .INIT ( 16'h5555 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/qo.lut/lut/i_4lut  (
    .I0
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .I1(\BU2/quotient_exponent [0]),
    .I2(\BU2/quotient_exponent [0]),
    .I3(\BU2/quotient_exponent [0]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/inv_o [0])
  );
  LUT4 #(
    .INIT ( 16'h5555 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/qo.lut/lut/i_4lut  (
    .I0(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5]),
    .I1(\BU2/quotient_exponent [0]),
    .I2(\BU2/quotient_exponent [0]),
    .I3(\BU2/quotient_exponent [0]),
    .O(\NLW_BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/qo.lut/lut/i_4lut_O_UNCONNECTED )
  );
  XORCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[3].carryxor  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [2])
,
    .LI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [3]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [3])
  );
  MUXCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[3].carrymux  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [2])
,
    .DI(\BU2/quotient_exponent [0]),
    .S(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [3]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [3])
  );
  XORCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[2].carryxor  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [1])
,
    .LI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [2]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [2])
  );
  MUXCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[2].carrymux  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [1])
,
    .DI(\BU2/quotient_exponent [0]),
    .S(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [2]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [2])
  );
  XORCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[1].carryxor  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [0])
,
    .LI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [1]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [1])
  );
  MUXCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[1].carrymux  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [0])
,
    .DI(\BU2/quotient_exponent [0]),
    .S(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [1]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [1])
  );
  MUXCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.muxtop.carrymuxtop  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [3])
,
    .DI(\BU2/quotient_exponent [0]),
    .S(NlwRenamedSig_OI_rfd),
    .O
(\NLW_BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.muxtop.carrymuxtop_O_UNCONNECTED )

  );
  XORCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carryxortop  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [3])
,
    .LI(NlwRenamedSig_OI_rfd),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [4])
  );
  XORCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carryxor0  (
    .CI(NlwRenamedSig_OI_rfd),
    .LI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [0]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [0])
  );
  MUXCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrymux0  (
    .CI(NlwRenamedSig_OI_rfd),
    .DI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].num_stages.numerator_gen.del_numer/bb_reg/fd/output [8]),
    .S(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [0]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [0])
  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output_5  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [4]),
    .Q
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])

  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output_4  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [3]),
    .Q
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [4])

  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output_3  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [2]),
    .Q
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [3])

  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output_2  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [1]),
    .Q
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [2])

  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output_1  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [0]),
    .Q
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [1])

  );
  XORCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[3].carryxor  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [2])
,
    .LI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [3]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [3])
  );
  MUXCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[3].carrymux  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [2])
,
    .DI
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [3])
,
    .S(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [3]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [3])
  );
  XORCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[2].carryxor  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [1])
,
    .LI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [2]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [2])
  );
  MUXCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[2].carrymux  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [1])
,
    .DI
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [2])
,
    .S(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [2]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [2])
  );
  XORCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[1].carryxor  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [0])
,
    .LI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [1]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [1])
  );
  MUXCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[1].carrymux  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [0])
,
    .DI
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [1])
,
    .S(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [1]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [1])
  );
  MUXCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.muxtop.carrymuxtop  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [3])
,
    .DI
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[0].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [4])
,
    .S(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [4]),
    .O
(\NLW_BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.muxtop.carrymuxtop_O_UNCONNECTED )

  );
  XORCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carryxortop  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [3])
,
    .LI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [4]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [4])
  );
  XORCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carryxor0  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/inv_o [0]),
    .LI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [0]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [0])
  );
  MUXCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrymux0  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/inv_o [0]),
    .DI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].num_stages.numerator_gen.del_numer/bb_reg/fd/output [7]),
    .S(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [0]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [0])
  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output_5  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [4]),
    .Q
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])

  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output_4  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [3]),
    .Q
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [4])

  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output_3  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [2]),
    .Q
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [3])

  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output_2  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [1]),
    .Q
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [2])

  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output_1  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [0]),
    .Q
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [1])

  );
  XORCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[3].carryxor  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [2])
,
    .LI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [3]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [3])
  );
  MUXCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[3].carrymux  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [2])
,
    .DI
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [3])
,
    .S(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [3]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [3])
  );
  XORCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[2].carryxor  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [1])
,
    .LI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [2]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [2])
  );
  MUXCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[2].carrymux  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [1])
,
    .DI
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [2])
,
    .S(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [2]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [2])
  );
  XORCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[1].carryxor  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [0])
,
    .LI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [1]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [1])
  );
  MUXCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[1].carrymux  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [0])
,
    .DI
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [1])
,
    .S(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [1]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [1])
  );
  MUXCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.muxtop.carrymuxtop  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [3])
,
    .DI
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[1].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [4])
,
    .S(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [4]),
    .O
(\NLW_BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.muxtop.carrymuxtop_O_UNCONNECTED )

  );
  XORCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carryxortop  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [3])
,
    .LI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [4]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [4])
  );
  XORCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carryxor0  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/inv_o [1]),
    .LI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [0]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [0])
  );
  MUXCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrymux0  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/inv_o [1]),
    .DI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].num_stages.numerator_gen.del_numer/bb_reg/fd/output [6]),
    .S(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [0]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [0])
  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output_5  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [4]),
    .Q
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])

  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output_4  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [3]),
    .Q
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [4])

  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output_3  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [2]),
    .Q
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [3])

  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output_2  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [1]),
    .Q
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [2])

  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output_1  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [0]),
    .Q
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [1])

  );
  XORCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[3].carryxor  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [2])
,
    .LI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [3]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [3])
  );
  MUXCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[3].carrymux  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [2])
,
    .DI
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [3])
,
    .S(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [3]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [3])
  );
  XORCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[2].carryxor  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [1])
,
    .LI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [2]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [2])
  );
  MUXCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[2].carrymux  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [1])
,
    .DI
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [2])
,
    .S(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [2]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [2])
  );
  XORCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[1].carryxor  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [0])
,
    .LI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [1]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [1])
  );
  MUXCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[1].carrymux  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [0])
,
    .DI
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [1])
,
    .S(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [1]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [1])
  );
  MUXCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.muxtop.carrymuxtop  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [3])
,
    .DI
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[2].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [4])
,
    .S(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [4]),
    .O
(\NLW_BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.muxtop.carrymuxtop_O_UNCONNECTED )

  );
  XORCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carryxortop  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [3])
,
    .LI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [4]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [4])
  );
  XORCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carryxor0  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/inv_o [2]),
    .LI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [0]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [0])
  );
  MUXCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrymux0  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/inv_o [2]),
    .DI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].num_stages.numerator_gen.del_numer/bb_reg/fd/output [5]),
    .S(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [0]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [0])
  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output_5  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [4]),
    .Q
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])

  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output_4  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [3]),
    .Q
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [4])

  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output_3  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [2]),
    .Q
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [3])

  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output_2  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [1]),
    .Q
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [2])

  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output_1  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [0]),
    .Q
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [1])

  );
  XORCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[3].carryxor  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [2])
,
    .LI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [3]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [3])
  );
  MUXCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[3].carrymux  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [2])
,
    .DI
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [3])
,
    .S(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [3]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [3])
  );
  XORCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[2].carryxor  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [1])
,
    .LI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [2]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [2])
  );
  MUXCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[2].carrymux  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [1])
,
    .DI
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [2])
,
    .S(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [2]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [2])
  );
  XORCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[1].carryxor  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [0])
,
    .LI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [1]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [1])
  );
  MUXCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[1].carrymux  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [0])
,
    .DI
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [1])
,
    .S(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [1]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [1])
  );
  MUXCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.muxtop.carrymuxtop  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [3])
,
    .DI
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[3].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [4])
,
    .S(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [4]),
    .O
(\NLW_BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.muxtop.carrymuxtop_O_UNCONNECTED )

  );
  XORCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carryxortop  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [3])
,
    .LI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [4]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [4])
  );
  XORCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carryxor0  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/inv_o [3]),
    .LI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [0]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [0])
  );
  MUXCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrymux0  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/inv_o [3]),
    .DI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].num_stages.numerator_gen.del_numer/bb_reg/fd/output [4]),
    .S(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [0]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [0])
  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output_5  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [4]),
    .Q
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])

  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output_4  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [3]),
    .Q
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [4])

  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output_3  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [2]),
    .Q
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [3])

  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output_2  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [1]),
    .Q
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [2])

  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output_1  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [0]),
    .Q
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [1])

  );
  XORCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[3].carryxor  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [2])
,
    .LI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [3]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [3])
  );
  MUXCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[3].carrymux  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [2])
,
    .DI
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [3])
,
    .S(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [3]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [3])
  );
  XORCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[2].carryxor  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [1])
,
    .LI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [2]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [2])
  );
  MUXCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[2].carrymux  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [1])
,
    .DI
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [2])
,
    .S(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [2]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [2])
  );
  XORCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[1].carryxor  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [0])
,
    .LI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [1]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [1])
  );
  MUXCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[1].carrymux  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [0])
,
    .DI
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [1])
,
    .S(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [1]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [1])
  );
  MUXCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.muxtop.carrymuxtop  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [3])
,
    .DI
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[4].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [4])
,
    .S(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [4]),
    .O
(\NLW_BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.muxtop.carrymuxtop_O_UNCONNECTED )

  );
  XORCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carryxortop  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [3])
,
    .LI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [4]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [4])
  );
  XORCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carryxor0  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/inv_o [4]),
    .LI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [0]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [0])
  );
  MUXCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrymux0  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/inv_o [4]),
    .DI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].num_stages.numerator_gen.del_numer/bb_reg/fd/output [3]),
    .S(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [0]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [0])
  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output_5  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [4]),
    .Q
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])

  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output_4  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [3]),
    .Q
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [4])

  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output_3  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [2]),
    .Q
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [3])

  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output_2  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [1]),
    .Q
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [2])

  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output_1  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [0]),
    .Q
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [1])

  );
  XORCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[3].carryxor  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [2])
,
    .LI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [3]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [3])
  );
  MUXCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[3].carrymux  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [2])
,
    .DI
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [3])
,
    .S(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [3]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [3])
  );
  XORCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[2].carryxor  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [1])
,
    .LI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [2]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [2])
  );
  MUXCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[2].carrymux  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [1])
,
    .DI
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [2])
,
    .S(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [2]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [2])
  );
  XORCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[1].carryxor  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [0])
,
    .LI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [1]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [1])
  );
  MUXCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[1].carrymux  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [0])
,
    .DI
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [1])
,
    .S(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [1]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [1])
  );
  MUXCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.muxtop.carrymuxtop  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [3])
,
    .DI
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[5].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [4])
,
    .S(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [4]),
    .O
(\NLW_BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.muxtop.carrymuxtop_O_UNCONNECTED )

  );
  XORCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carryxortop  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [3])
,
    .LI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [4]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [4])
  );
  XORCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carryxor0  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/inv_o [5]),
    .LI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [0]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [0])
  );
  MUXCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrymux0  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/inv_o [5]),
    .DI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].num_stages.numerator_gen.del_numer/bb_reg/fd/output [2]),
    .S(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [0]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [0])
  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output_5  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [4]),
    .Q
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])

  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output_4  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [3]),
    .Q
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [4])

  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output_3  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [2]),
    .Q
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [3])

  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output_2  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [1]),
    .Q
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [2])

  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output_1  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [0]),
    .Q
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [1])

  );
  XORCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[3].carryxor  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [2])
,
    .LI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [3]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [3])
  );
  MUXCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[3].carrymux  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [2])
,
    .DI
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [3])
,
    .S(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [3]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [3])
  );
  XORCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[2].carryxor  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [1])
,
    .LI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [2]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [2])
  );
  MUXCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[2].carrymux  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [1])
,
    .DI
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [2])
,
    .S(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [2]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [2])
  );
  XORCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[1].carryxor  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [0])
,
    .LI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [1]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [1])
  );
  MUXCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[1].carrymux  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [0])
,
    .DI
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [1])
,
    .S(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [1]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [1])
  );
  MUXCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.muxtop.carrymuxtop  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [3])
,
    .DI
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[6].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [4])
,
    .S(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [4]),
    .O
(\NLW_BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.muxtop.carrymuxtop_O_UNCONNECTED )

  );
  XORCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carryxortop  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [3])
,
    .LI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [4]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [4])
  );
  XORCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carryxor0  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/inv_o [6]),
    .LI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [0]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [0])
  );
  MUXCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_simple_model.carrymux0  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/inv_o [6]),
    .DI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].num_stages.numerator_gen.del_numer/bb_reg/fd/output [1]),
    .S(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/halfsum [0]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/carry_simple [0])
  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output_5  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [4]),
    .Q
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])

  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output_4  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [3]),
    .Q
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [4])

  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output_3  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [2]),
    .Q
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [3])

  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output_2  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [1]),
    .Q
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [2])

  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output_1  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/sum_simple [0]),
    .Q
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [1])

  );
  XORCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[3].carryxor  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/carry_simple [2]),
    .LI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/halfsum [3]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/sum_simple [3])
  );
  MUXCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[3].carrymux  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/carry_simple [2]),
    .DI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/di [3]),
    .S(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/halfsum [3]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/carry_simple [3])
  );
  XORCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[2].carryxor  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/carry_simple [1]),
    .LI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/halfsum [2]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/sum_simple [2])
  );
  MUXCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[2].carrymux  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/carry_simple [1]),
    .DI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/di [2]),
    .S(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/halfsum [2]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/carry_simple [2])
  );
  XORCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[1].carryxor  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/carry_simple [0]),
    .LI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/halfsum [1]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/sum_simple [1])
  );
  MUXCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/i_simple_model.carrychaingen[1].carrymux  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/carry_simple [0]),
    .DI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/di [1]),
    .S(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/halfsum [1]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/carry_simple [1])
  );
  MUXCY 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/i_simple_model.muxtop.carrymuxtop  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/carry_simple [3]),
    .DI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/di [4]),
    .S(\BU2/quotient_exponent [0]),
    .O
(\NLW_BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/i_simple_model.muxtop.carrymuxtop_O_UNCONNECTED )

  );
  XORCY   \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/i_simple_model.carryxortop  (
    .CI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/carry_simple [3]),
    .LI(\BU2/quotient_exponent [0]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/sum_simple [4])
  );
  XORCY   \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/i_simple_model.carryxor0  (
    .CI(\BU2/quotient_exponent [0]),
    .LI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/halfsum [0]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/sum_simple [0])
  );
  MUXCY   \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/i_simple_model.carrymux0  (
    .CI(\BU2/quotient_exponent [0]),
    .DI(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/di [0]),
    .S(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/halfsum [0]),
    .O(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/carry_simple [0])
  );
  MULT_AND 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/i_simple_model.i_bypass.i_bypass_other.i_di_b_variable.multandtop.carrymultand  (
    .I0(\BU2/quotient_exponent [0]),
    .I1
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .LO(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/di [4])
  );
  MULT_AND 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/i_simple_model.i_bypass.i_bypass_other.i_di_b_variable.multandgen[3].carrymultand  (
    .I0(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/final_div.del_end_divisor/bb_reg/fd/output [4]),
    .I1
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .LO(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/di [3])
  );
  MULT_AND 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/i_simple_model.i_bypass.i_bypass_other.i_di_b_variable.multandgen[2].carrymultand  (
    .I0(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/final_div.del_end_divisor/bb_reg/fd/output [3]),
    .I1
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .LO(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/di [2])
  );
  MULT_AND 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/i_simple_model.i_bypass.i_bypass_other.i_di_b_variable.multandgen[1].carrymultand  (
    .I0(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/final_div.del_end_divisor/bb_reg/fd/output [2]),
    .I1
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .LO(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/di [1])
  );
  MULT_AND 
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/i_simple_model.i_bypass.i_bypass_other.i_di_b_variable.multandgen[0].carrymultand  (
    .I0(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/final_div.del_end_divisor/bb_reg/fd/output [1]),
    .I1
(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
,
    .LO(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/di [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output_5  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/sum_simple [4]),
    .Q(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output [5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output_4  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/sum_simple [3]),
    .Q(remainder_5[3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output_3  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/sum_simple [2]),
    .Q(remainder_5[2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output_2  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/sum_simple [1]),
    .Q(remainder_5[1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/i_q.i_simple.qreg/fd/output_1  (
    .C(clk),
    .D(\BU2/U0/i_algo_r2_nr.i_sdivider/a1/adivider/divider_blk/remd_output.adsu_sel/add1/no_pipelining.the_addsub/sum_simple [0]),
    .Q(remainder_5[0])
  );
  VCC   \BU2/XST_VCC  (
    .P(NlwRenamedSig_OI_rfd)
  );
  GND   \BU2/XST_GND  (
    .G(\BU2/quotient_exponent [0])
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

    wire GSR;
    wire GTS;
    wire PRLD;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

// synthesis translate_on
