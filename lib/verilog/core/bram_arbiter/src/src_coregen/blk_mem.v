////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: K.39
//  \   \         Application: netgen
//  /   /         Filename: blk_mem.v
// /___/   /\     Timestamp: Mon Jun  6 12:08:41 2011
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -w -sim -ofmt verilog /home/ajith/Desktop/blkmem/tmp/_cg/blk_mem.ngc /home/ajith/Desktop/blkmem/tmp/_cg/blk_mem.v 
// Device	: 2vp50ff1152-7
// Input file	: /home/ajith/Desktop/blkmem/tmp/_cg/blk_mem.ngc
// Output file	: /home/ajith/Desktop/blkmem/tmp/_cg/blk_mem.v
// # of Modules	: 1
// Design Name	: blk_mem
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

module blk_mem (
  clka, wea, addra, douta, dina
);
  input clka;
  input [0 : 0] wea;
  input [7 : 0] addra;
  output [47 : 0] douta;
  input [47 : 0] dina;
  
  // synthesis translate_off
  
  wire \BU2/N1 ;
  wire NLW_VCC_P_UNCONNECTED;
  wire NLW_GND_G_UNCONNECTED;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<31>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<30>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<29>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<28>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<27>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<26>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<25>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<24>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<23>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<22>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<21>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<20>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<19>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<18>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<17>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<16>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<15>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<14>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<13>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<12>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<11>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<10>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<9>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<8>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<7>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<6>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<5>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<4>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOPB<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOPB<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOPB<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOPB<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOA<31>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOA<30>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOA<29>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOA<28>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOA<27>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOA<23>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOA<22>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOA<21>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOA<20>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOA<19>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOA<15>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOA<14>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOA<13>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOA<12>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOA<11>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOA<7>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOA<6>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOA<5>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOA<4>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOA<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOPA<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOPA<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOPA<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOPA<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<31>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<30>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<29>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<28>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<27>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<26>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<25>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<24>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<23>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<22>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<21>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<20>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<19>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<18>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<17>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<16>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<15>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<14>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<13>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<12>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<11>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<10>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<9>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<8>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<7>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<6>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<5>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<4>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOPB<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOPB<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOPB<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOPB<0>_UNCONNECTED ;
  wire [47 : 0] dina_2;
  wire [7 : 0] addra_3;
  wire [0 : 0] wea_4;
  wire [47 : 0] douta_5;
  wire [0 : 0] \BU2/doutb ;
  assign
    wea_4[0] = wea[0],
    addra_3[7] = addra[7],
    addra_3[6] = addra[6],
    addra_3[5] = addra[5],
    addra_3[4] = addra[4],
    addra_3[3] = addra[3],
    addra_3[2] = addra[2],
    addra_3[1] = addra[1],
    addra_3[0] = addra[0],
    douta[47] = douta_5[47],
    douta[46] = douta_5[46],
    douta[45] = douta_5[45],
    douta[44] = douta_5[44],
    douta[43] = douta_5[43],
    douta[42] = douta_5[42],
    douta[41] = douta_5[41],
    douta[40] = douta_5[40],
    douta[39] = douta_5[39],
    douta[38] = douta_5[38],
    douta[37] = douta_5[37],
    douta[36] = douta_5[36],
    douta[35] = douta_5[35],
    douta[34] = douta_5[34],
    douta[33] = douta_5[33],
    douta[32] = douta_5[32],
    douta[31] = douta_5[31],
    douta[30] = douta_5[30],
    douta[29] = douta_5[29],
    douta[28] = douta_5[28],
    douta[27] = douta_5[27],
    douta[26] = douta_5[26],
    douta[25] = douta_5[25],
    douta[24] = douta_5[24],
    douta[23] = douta_5[23],
    douta[22] = douta_5[22],
    douta[21] = douta_5[21],
    douta[20] = douta_5[20],
    douta[19] = douta_5[19],
    douta[18] = douta_5[18],
    douta[17] = douta_5[17],
    douta[16] = douta_5[16],
    douta[15] = douta_5[15],
    douta[14] = douta_5[14],
    douta[13] = douta_5[13],
    douta[12] = douta_5[12],
    douta[11] = douta_5[11],
    douta[10] = douta_5[10],
    douta[9] = douta_5[9],
    douta[8] = douta_5[8],
    douta[7] = douta_5[7],
    douta[6] = douta_5[6],
    douta[5] = douta_5[5],
    douta[4] = douta_5[4],
    douta[3] = douta_5[3],
    douta[2] = douta_5[2],
    douta[1] = douta_5[1],
    douta[0] = douta_5[0],
    dina_2[47] = dina[47],
    dina_2[46] = dina[46],
    dina_2[45] = dina[45],
    dina_2[44] = dina[44],
    dina_2[43] = dina[43],
    dina_2[42] = dina[42],
    dina_2[41] = dina[41],
    dina_2[40] = dina[40],
    dina_2[39] = dina[39],
    dina_2[38] = dina[38],
    dina_2[37] = dina[37],
    dina_2[36] = dina[36],
    dina_2[35] = dina[35],
    dina_2[34] = dina[34],
    dina_2[33] = dina[33],
    dina_2[32] = dina[32],
    dina_2[31] = dina[31],
    dina_2[30] = dina[30],
    dina_2[29] = dina[29],
    dina_2[28] = dina[28],
    dina_2[27] = dina[27],
    dina_2[26] = dina[26],
    dina_2[25] = dina[25],
    dina_2[24] = dina[24],
    dina_2[23] = dina[23],
    dina_2[22] = dina[22],
    dina_2[21] = dina[21],
    dina_2[20] = dina[20],
    dina_2[19] = dina[19],
    dina_2[18] = dina[18],
    dina_2[17] = dina[17],
    dina_2[16] = dina[16],
    dina_2[15] = dina[15],
    dina_2[14] = dina[14],
    dina_2[13] = dina[13],
    dina_2[12] = dina[12],
    dina_2[11] = dina[11],
    dina_2[10] = dina[10],
    dina_2[9] = dina[9],
    dina_2[8] = dina[8],
    dina_2[7] = dina[7],
    dina_2[6] = dina[6],
    dina_2[5] = dina[5],
    dina_2[4] = dina[4],
    dina_2[3] = dina[3],
    dina_2[2] = dina[2],
    dina_2[1] = dina[1],
    dina_2[0] = dina[0];
  VCC   VCC_0 (
    .P(NLW_VCC_P_UNCONNECTED)
  );
  GND   GND_1 (
    .G(NLW_GND_G_UNCONNECTED)
  );
  RAMB16_S36_S36 #(
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SRVAL_A ( 36'h000000000 ),
    .SRVAL_B ( 36'h000000000 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .INIT_A ( 36'h000000000 ),
    .INIT_B ( 36'h000000000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram  (
    .CLKA(clka),
    .CLKB(\BU2/doutb [0]),
    .ENA(\BU2/N1 ),
    .ENB(\BU2/N1 ),
    .SSRA(\BU2/doutb [0]),
    .SSRB(\BU2/doutb [0]),
    .WEA(wea_4[0]),
    .WEB(\BU2/doutb [0]),
    .ADDRA({\BU2/doutb [0], addra_3[7], addra_3[6], addra_3[5], addra_3[4], addra_3[3], addra_3[2], addra_3[1], addra_3[0]}),
    .ADDRB({\BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], 
\BU2/doutb [0]}),
    .DIA({dina_2[34], dina_2[33], dina_2[32], dina_2[31], dina_2[30], dina_2[29], dina_2[28], dina_2[27], dina_2[25], dina_2[24], dina_2[23], 
dina_2[22], dina_2[21], dina_2[20], dina_2[19], dina_2[18], dina_2[16], dina_2[15], dina_2[14], dina_2[13], dina_2[12], dina_2[11], dina_2[10], 
dina_2[9], dina_2[7], dina_2[6], dina_2[5], dina_2[4], dina_2[3], dina_2[2], dina_2[1], dina_2[0]}),
    .DIB({\BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], 
\BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], 
\BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], 
\BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0]}),
    .DIPA({dina_2[35], dina_2[26], dina_2[17], dina_2[8]}),
    .DIPB({\BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0]}),
    .DOA({douta_5[34], douta_5[33], douta_5[32], douta_5[31], douta_5[30], douta_5[29], douta_5[28], douta_5[27], douta_5[25], douta_5[24], 
douta_5[23], douta_5[22], douta_5[21], douta_5[20], douta_5[19], douta_5[18], douta_5[16], douta_5[15], douta_5[14], douta_5[13], douta_5[12], 
douta_5[11], douta_5[10], douta_5[9], douta_5[7], douta_5[6], douta_5[5], douta_5[4], douta_5[3], douta_5[2], douta_5[1], douta_5[0]}),
    .DOPA({douta_5[35], douta_5[26], douta_5[17], douta_5[8]}),
    .DOB({\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<31>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<30>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<29>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<28>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<27>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<26>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<25>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<24>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<23>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<22>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<21>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<20>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<19>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<18>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<17>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<16>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<15>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<14>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<13>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<12>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<11>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<10>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<9>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<8>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<7>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<6>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<5>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<4>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<3>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<2>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<1>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOB<0>_UNCONNECTED }),
    .DOPB({\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOPB<3>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOPB<2>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOPB<1>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x36.ram_DOPB<0>_UNCONNECTED })
  );
  RAMB16_S36_S36 #(
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SRVAL_A ( 36'h000000000 ),
    .SRVAL_B ( 36'h000000000 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .INIT_A ( 36'h000000000 ),
    .INIT_B ( 36'h000000000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram  (
    .CLKA(clka),
    .CLKB(\BU2/doutb [0]),
    .ENA(\BU2/N1 ),
    .ENB(\BU2/N1 ),
    .SSRA(\BU2/doutb [0]),
    .SSRB(\BU2/doutb [0]),
    .WEA(wea_4[0]),
    .WEB(\BU2/doutb [0]),
    .ADDRA({\BU2/doutb [0], addra_3[7], addra_3[6], addra_3[5], addra_3[4], addra_3[3], addra_3[2], addra_3[1], addra_3[0]}),
    .ADDRB({\BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], 
\BU2/doutb [0]}),
    .DIA({\BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], dina_2[47], dina_2[46], dina_2[45], \BU2/doutb [0], 
\BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], dina_2[44], dina_2[43], dina_2[42], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], 
\BU2/doutb [0], \BU2/doutb [0], dina_2[41], dina_2[40], dina_2[39], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], 
dina_2[38], dina_2[37], dina_2[36]}),
    .DIB({\BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], 
\BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], 
\BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], 
\BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0]}),
    .DIPA({\BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0]}),
    .DIPB({\BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0]}),
    .DOA({\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOA<31>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOA<30>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOA<29>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOA<28>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOA<27>_UNCONNECTED , douta_5[47], douta_5[46], douta_5[45], 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOA<23>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOA<22>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOA<21>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOA<20>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOA<19>_UNCONNECTED , douta_5[44], douta_5[43], douta_5[42], 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOA<15>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOA<14>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOA<13>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOA<12>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOA<11>_UNCONNECTED , douta_5[41], douta_5[40], douta_5[39], 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOA<7>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOA<6>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOA<5>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOA<4>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOA<3>_UNCONNECTED , douta_5[38], douta_5[37], douta_5[36]}),
    .DOPA({\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOPA<3>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOPA<2>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOPA<1>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOPA<0>_UNCONNECTED }),
    .DOB({\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<31>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<30>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<29>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<28>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<27>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<26>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<25>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<24>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<23>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<22>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<21>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<20>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<19>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<18>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<17>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<16>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<15>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<14>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<13>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<12>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<11>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<10>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<9>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<8>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<7>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<6>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<5>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<4>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<3>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<2>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<1>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOB<0>_UNCONNECTED }),
    .DOPB({\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOPB<3>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOPB<2>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOPB<1>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x36.ram_DOPB<0>_UNCONNECTED })
  );
  VCC   \BU2/XST_VCC  (
    .P(\BU2/N1 )
  );
  GND   \BU2/XST_GND  (
    .G(\BU2/doutb [0])
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
