///////////////////////////////////////////////////////////////////////////////
////
// MPLS Switch BRAM controller wrapper Module Enhancements,
//   Developed by Algo-Logic Systems
//   for Google, Copyright 2011, all rights reserved
//   Distributed through the Apache 2.0 License
// Based on code from NetFPGA Project
//   Distributed through the NetBSD License
//-----------------------------------------------------------
//
// Module: bram_arbiter.v
// Project: NF2.1 reference design
// Description: BRAM controller wrapper
//
// Wrapper around bram module to provide reg access
//
///////////////////////////////////////////////////////////////////////////////

`timescale  1ns /  10ps
module bram_arbiter  
        #(parameter UDP_REG_SRC_WIDTH = 2)
   (
     output [47:0]                     mac_add_out,
     output                            br_read_valid,
     input [7:0]                       bram_read_add,
     input                             bram_read_req,
     output                            br_read_ack,
    
   // --- Register interface
    input                              reg_req_in,
    input                              reg_ack_in,
    input                              reg_rd_wr_L_in,
    input  [`UDP_REG_ADDR_WIDTH-1:0]   reg_addr_in,
    input  [`CPCI_NF2_DATA_WIDTH-1:0]  reg_data_in,
    input  [UDP_REG_SRC_WIDTH-1:0]     reg_src_in,

    output                             reg_req_out,
    output                             reg_ack_out,
    output                             reg_rd_wr_L_out,
    output  [`UDP_REG_ADDR_WIDTH-1:0]  reg_addr_out,
    output  [`CPCI_NF2_DATA_WIDTH-1:0] reg_data_out,
    output  [UDP_REG_SRC_WIDTH-1:0]    reg_src_out,

    // --- Misc

    input reset,
    input clk

    );

   wire [47:0]  mac_add;
   wire wr_req,wr_ack;
   wire [7:0] wr_addr,rd_addr;
   wire [47:0] wr_data;

   wire rd_req,rd_ack;
   wire rd_valid_1;
   

   assign mac_add_out = mac_add;

   //-------- wires/regs -----------
   bram_lookup
        bram_lookup
     (// --- Requesters     (read and/or write)
    .wr_add_in              (wr_addr),
    .wr_data_in             (wr_data),
    .rd_add_0               (bram_read_add),
    .rd_add_1               (rd_addr),
    .wr_req                 (wr_req),
    .read_req_0             (bram_read_req),
    .read_req_1             (rd_req),
    .wr_ack                 (wr_ack),
    .rd_ack_0               (br_read_ack),
    .rd_ack_1               (rd_ack),
    .mac_add_out            (mac_add),
    .rd_valid_0             (br_read_valid),
    .rd_valid_1             (rd_valid_1),

      // --- Misc
      .reset                (reset),
      .clk                  (clk)
   );

   // synthesis attribute keep_hierarchy of cnet_sram_sm is false;

   bram_reg_access #(
      .UDP_REG_SRC_WIDTH(UDP_REG_SRC_WIDTH)) 
   bram_reg_access 
       (
       // Registers
      .reg_req_in       (reg_req_in),
      .reg_ack_in       (reg_ack_in),
      .reg_rd_wr_L_in   (reg_rd_wr_L_in),
      .reg_addr_in      (reg_addr_in),
      .reg_data_in      (reg_data_in),
      .reg_src_in       (reg_src_in),

      .reg_req_out      (reg_req_out),
      .reg_ack_out      (reg_ack_out),
      .reg_rd_wr_L_out  (reg_rd_wr_L_out),
      .reg_addr_out     (reg_addr_out),
      .reg_data_out     (reg_data_out),
      .reg_src_out      (reg_src_out),

      // --- Requesters (read and/or write)
      .wr_req              (wr_req),
      .wr_addr             (wr_addr),
      .wr_data             (wr_data),
      .wr_ack              (wr_ack),

      .rd_req              (rd_req),
      .rd_addr             (rd_addr),
      .rd_data             (mac_add),
      .rd_ack              (rd_ack),
      .rd_valid            (rd_valid_1),
     
      // --- Misc

      .reset               (reset),
      .clk                 (clk)

   );


endmodule // sram_arbiter


