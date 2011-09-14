///////////////////////////////////////////////////////////////////////////////
////
// MPLS Switch BRAM reg access Module Enhancements,
//   Developed by Algo-Logic Systems
//   for Google, Copyright 2011, all rights reserved
//   Distributed through the Apache 2.0 License
// Based on code from NetFPGA Project
//   Distributed through the NetBSD License
//-----------------------------------------------------------

// Module: bram_reg_access.v
// Project: NF2.1 reference design
// Description: BRAM register access module
//
// Provides register access to BRAM
//
// The main component of complexity is that the BRAM data width is
// generally different than the register data width. 
//
//   BRAM data right-aligned in CPCI words
//
///////////////////////////////////////////////////////////////////////////////

`timescale  1ns /  10ps
module bram_reg_access #(
      parameter UDP_REG_SRC_WIDTH = 2
   )
   (
      // register interface
      input                                  reg_req_in,
      input                                  reg_ack_in,
      input                                  reg_rd_wr_L_in,
      input  [`UDP_REG_ADDR_WIDTH-1:0]       reg_addr_in,
      input  [`CPCI_NF2_DATA_WIDTH-1:0]      reg_data_in,
      input  [UDP_REG_SRC_WIDTH-1:0]         reg_src_in,

      output reg                             reg_req_out,
      output reg                             reg_ack_out,
      output reg                             reg_rd_wr_L_out,
      output reg [`UDP_REG_ADDR_WIDTH-1:0]   reg_addr_out,
      output reg [`CPCI_NF2_DATA_WIDTH-1:0]  reg_data_out,
      output reg [UDP_REG_SRC_WIDTH-1:0]     reg_src_out,
      
      output reg                 wr_req,
      output reg [7:0]           wr_addr,
      output reg [47:0]          wr_data,
      input                      wr_ack,

      output reg                 rd_req,
      output reg [7:0]           rd_addr,
      input  [47:0]              rd_data,
      input                      rd_ack,
      input                      rd_valid,
      // --- Misc

      input reset,
      input clk

   );


wire [`BRAM_REG_ACCESS_BLOCK_ADDR_WIDTH - 1:0] tag_addr;
assign tag_addr = reg_addr_in[`UDP_REG_ADDR_WIDTH - 1:`UDP_REG_ADDR_WIDTH-`BRAM_REG_ACCESS_BLOCK_ADDR_WIDTH];
assign tag_hit = (tag_addr == `BRAM_REG_ACCESS_BLOCK_ADDR)&&(reg_addr_in[11]==1'b1);

   reg                                   reg_rd_wr_L_held;
   reg  [`UDP_REG_ADDR_WIDTH-1:0]        reg_addr_held;
   reg  [`CPCI_NF2_DATA_WIDTH-1:0]       reg_data_held;
   reg  [UDP_REG_SRC_WIDTH-1:0]          reg_src_held;

   reg                                   reg_rd_wr_L_held_nxt;
   reg  [`UDP_REG_ADDR_WIDTH-1:0]        reg_addr_held_nxt;
   reg  [`CPCI_NF2_DATA_WIDTH-1:0]       reg_data_held_nxt;
   reg  [UDP_REG_SRC_WIDTH-1:0]          reg_src_held_nxt;

   reg                                   reg_req_out_nxt;
   reg                                   reg_ack_out_nxt;
   reg                                   reg_rd_wr_L_out_nxt;
   reg  [`UDP_REG_ADDR_WIDTH-1:0]        reg_addr_out_nxt;
   reg  [`CPCI_NF2_DATA_WIDTH-1:0]       reg_data_out_nxt;
   reg  [UDP_REG_SRC_WIDTH-1:0]          reg_src_out_nxt;
   
   reg [3:0]                            state, state_next;
   reg                                  wr_req_next;
   reg [7:0]                            wr_addr_next;
   reg [47:0]                           wr_data_next;
   reg                                  rd_req_next;
   reg [7:0]                            rd_addr_next;

   parameter WAIT_FOR_REQ = 1;
   parameter WRITE_TO_MAC_LUT = 2;
   parameter READ_FROM_MAC_LUT = 4;
   parameter DONE = 8;

always @(*) begin

      state_next = state;

      reg_req_out_nxt = 0;
      reg_ack_out_nxt = 0;
      reg_rd_wr_L_out_nxt = 0;
      reg_addr_out_nxt = 0;
      reg_data_out_nxt = 0;
      reg_src_out_nxt = 0;
      wr_req_next = wr_req;
      wr_addr_next = wr_addr;
      wr_data_next = wr_data;
      rd_req_next = rd_req;
      rd_addr_next = rd_addr;

      reg_rd_wr_L_held_nxt = reg_rd_wr_L_held;
      reg_addr_held_nxt    = reg_addr_held;
      reg_data_held_nxt    = reg_data_held;
      reg_src_held_nxt     = reg_src_held;

    
      case(state)
        WAIT_FOR_REQ: begin
            if (reg_req_in && tag_hit) begin
                if (!reg_rd_wr_L_in && reg_addr_in[1:0] == 2'b11) begin
                       wr_data_next[31:0]=reg_data_in;
                       reg_req_out_nxt     = 1'b 1;
                       reg_ack_out_nxt     = 1'b 1;
                       reg_rd_wr_L_out_nxt = reg_rd_wr_L_in;
                       reg_addr_out_nxt    = reg_addr_in;
                       reg_data_out_nxt    = reg_data_in;
                       reg_src_out_nxt     = reg_src_in;
                end
                else if(!reg_rd_wr_L_in && reg_addr_in[1:0] == 2'b10)begin
                       wr_data_next[47:32]=reg_data_in[15:0];
                       reg_req_out_nxt     = 1'b 1;
                       reg_ack_out_nxt     = 1'b 1;
                       reg_rd_wr_L_out_nxt = reg_rd_wr_L_in;
                       reg_addr_out_nxt    = reg_addr_in;
                       reg_data_out_nxt    = reg_data_in;
                       reg_src_out_nxt     = reg_src_in;
                end
                else if (!reg_rd_wr_L_in && reg_addr_in[1:0] == 2'b00 && reg_data_in == 32'hffffffff) begin
                       wr_req_next=1;
                       wr_addr_next=reg_addr_in[9:2];
                       state_next = WRITE_TO_MAC_LUT;
                       reg_rd_wr_L_held_nxt = reg_rd_wr_L_in;
                       reg_addr_held_nxt    = reg_addr_in;
                       reg_data_held_nxt    = reg_data_in;
                       reg_src_held_nxt     = reg_src_in;
                end
                else if (reg_rd_wr_L_in && (reg_addr_in[1:0] == 2'b11 || reg_addr_in[1:0] == 2'b10)) begin
                          rd_req_next=1;
                          rd_addr_next=reg_addr_in[9:2];
                          state_next = READ_FROM_MAC_LUT;
                          reg_rd_wr_L_held_nxt = reg_rd_wr_L_in;
                          reg_addr_held_nxt    = reg_addr_in;
                          reg_data_held_nxt    = reg_data_in;
                          reg_src_held_nxt     = reg_src_in;
               end
               else begin
                          reg_req_out_nxt     = 1'b 1;
                          reg_ack_out_nxt     = 1'b 1;
                          reg_rd_wr_L_out_nxt = reg_rd_wr_L_in;
                          reg_addr_out_nxt    = reg_addr_in;
                          reg_data_out_nxt    = reg_data_in;
                          reg_src_out_nxt     = reg_src_in;
               end
            end
            else if (reg_req_in && !tag_hit) begin
               reg_req_out_nxt = reg_req_in;
               reg_ack_out_nxt = reg_ack_in;
               reg_rd_wr_L_out_nxt = reg_rd_wr_L_in;
               reg_addr_out_nxt = reg_addr_in;
               reg_data_out_nxt = reg_data_in;
               reg_src_out_nxt = reg_src_in;
            end

           end // case: WAIT_FOR_REQ

        WRITE_TO_MAC_LUT: begin
           if (wr_ack) begin
              wr_req_next=0;
              state_next = DONE;
           end
        end

        READ_FROM_MAC_LUT: begin
           if(rd_ack) begin
              rd_req_next=0;
           end
           if(rd_valid) begin
              state_next = WAIT_FOR_REQ;
              reg_req_out_nxt      = 1'b 1;
              reg_ack_out_nxt      = 1'b 1;
              reg_rd_wr_L_out_nxt  = reg_rd_wr_L_held;
              reg_addr_out_nxt     = reg_addr_held;
              reg_src_out_nxt      = reg_src_held;
              if (reg_addr_held[1:0]==2'b11) begin
                 reg_data_out_nxt= rd_data[31:0];
              end
              else if (reg_addr_held[1:0]==2'b10) begin
                 reg_data_out_nxt= {16'h0,rd_data[47:32]};
              end
              else begin
                 reg_data_out_nxt= reg_data_held;
              end
           end
        end // case: READ_FROM_MAC_LUT

        DONE: begin
           state_next = WAIT_FOR_REQ;

           reg_req_out_nxt      = 1'b 1;
           reg_ack_out_nxt      = 1'b 1;
           reg_rd_wr_L_out_nxt  = reg_rd_wr_L_held;
           reg_addr_out_nxt     = reg_addr_held;
           reg_data_out_nxt     = reg_data_held;
           reg_src_out_nxt      = reg_src_held;
        end
      endcase // case(state)
   end // always @ (*)


   always @(posedge clk) begin
      if( reset ) begin
         reg_req_out       <= 0;
         reg_ack_out       <= 0;
         reg_rd_wr_L_out   <= 0;
         reg_addr_out      <= 0;
         reg_data_out      <= 0;
         reg_src_out       <= 0;

         reg_rd_wr_L_held  <= 0;
         reg_addr_held     <= 0;
         reg_data_held     <= 0;
         reg_src_held      <= 0;
         wr_req            <= 0;
         wr_addr           <= 0;
         wr_data           <= 0;
         rd_req            <= 0;
         rd_addr           <= 0;

         state <= WAIT_FOR_REQ;
      end
      else begin
         reg_req_out       <= reg_req_out_nxt;
         reg_ack_out       <= reg_ack_out_nxt;
         reg_rd_wr_L_out   <= reg_rd_wr_L_out_nxt;
         reg_addr_out      <= reg_addr_out_nxt;
         reg_data_out      <= reg_data_out_nxt;
         reg_src_out       <= reg_src_out_nxt;

         reg_rd_wr_L_held  <= reg_rd_wr_L_held_nxt;
         reg_addr_held     <= reg_addr_held_nxt;
         reg_data_held     <= reg_data_held_nxt;
         reg_src_held      <= reg_src_held_nxt;
         wr_req            <= wr_req_next;
         wr_addr           <= wr_addr_next;
         wr_data           <= wr_data_next;
         rd_req            <= rd_req_next;
         rd_addr           <= rd_addr_next;

	 state <= state_next;
      end // else: !if( reset )
   end // always @ (posedge clk)

endmodule // bram_reg_access


