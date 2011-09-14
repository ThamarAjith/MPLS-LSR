///////////////////////////////////////////////////////////////////////////////
// vim:set shiftwidth=3 softtabstop=3 expandtab:
// $Id: op_lut_regs.v 5525 2009-05-08 02:41:25Z g9coving $
// MPLS Switch Op_lut_regs Module Enhancements,
//   Developed by Algo-Logic Systems
//   for Google, Copyright 2011, all rights reserved
//   Distributed through the Apache 2.0 License
// Based on code from NetFPGA Project
//   $Id: op_lut_regs.v 5240 2009-03-14 01:50:42Z grg $
//   Distributed through the NetBSD License
//-----------------------------------------------------------
// Module: op_lut_regs.v
// Project: NF2.1
// Description: Demultiplexes, stores and serves register requests
//
//----
///////////////////////////////////////////////////////////////////////////////
`timescale 1ns/1ps

  module op_lut_regs
    #( parameter NUM_OUTPUT_QUEUES = 5,
       parameter UDP_REG_SRC_WIDTH = 2
   )

   (
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

      input                                   drop_not_for_us,
      input                                   drop_parity_error,
      input                                   drop_ttl_error,
		input                                   label_space_error,
		input                                   drop_ld_error,

      output reg [47:0]           mac_0,
      output reg [47:0]           mac_1,
      output reg [47:0]           mac_2,
      output reg [47:0]           mac_3,
	
      output reg [18:0]           ls1_base1,
      output reg [18:0]           ls1_bound1,
      output reg [18:0]           ls2_base1,
      output reg [18:0]           ls2_bound1,
      output reg [18:0]           ls3_base1,
      output reg [18:0]           ls3_bound1,
      output reg [18:0]           ls4_base1,
      output reg [18:0]           ls4_bound1,
      output reg [18:0]           ld_base1,
      output reg [18:0]           ld_bound1,
      output reg [18:0]           counter1_base1,
      output reg [18:0]           counter2_base1,
      output reg [20:0]           soft_offset1,

      input                                clk,
      input                                reset
     );

   function integer log2;
      input integer number;
      begin
         log2=0;
         while(2**log2<number) begin
            log2=log2+1;
         end
      end
   endfunction // log2


   // ------------- Internal parameters --------------
   parameter NUM_REGS_USED = 26;
   parameter OP_LUT_REG_ADDR_WIDTH_USED = log2(NUM_REGS_USED);

   reg [1:0]                            state, state_next;
	parameter WAIT_FOR_REQ = 1;
   parameter DONE = 2;

   // ------------- Wires/reg ------------------

   wire [`CPCI_NF2_DATA_WIDTH-1:0]      reg_file [0:NUM_REGS_USED-1];
   reg  [`CPCI_NF2_DATA_WIDTH-1:0]      reg_file_next [0:NUM_REGS_USED-1];

   wire [`CPCI_NF2_DATA_WIDTH-1:0]      reg_file_selected;

   wire [OP_LUT_REG_ADDR_WIDTH_USED-1:0]addr;
   wire [`IN_ARB_REG_ADDR_WIDTH - 1:0]  reg_addr;
   wire [`UDP_REG_ADDR_WIDTH-`SWITCH_OP_LUT_BLOCK_ADDR_WIDTH-`SWITCH_OP_LUT_REG_ADDR_WIDTH - 1:0] tag_addr;

   wire                                 addr_good;
   wire                                 tag_hit;

        wire [`CPCI_NF2_DATA_WIDTH-1:0]      mac0_addr_lo;
        wire [`CPCI_NF2_DATA_WIDTH-1:0]      mac0_addr_hi;
	wire [`CPCI_NF2_DATA_WIDTH-1:0]      mac1_addr_lo;
        wire [`CPCI_NF2_DATA_WIDTH-1:0]      mac1_addr_hi;
	wire [`CPCI_NF2_DATA_WIDTH-1:0]      mac2_addr_lo;
        wire [`CPCI_NF2_DATA_WIDTH-1:0]      mac2_addr_hi;
	wire [`CPCI_NF2_DATA_WIDTH-1:0]      mac3_addr_lo;
        wire [`CPCI_NF2_DATA_WIDTH-1:0]      mac3_addr_hi; 
	
	wire [`CPCI_NF2_DATA_WIDTH-1:0]      not_for_us_count;
        wire [`CPCI_NF2_DATA_WIDTH-1:0]      parity_error_count;	
	wire [`CPCI_NF2_DATA_WIDTH-1:0]      ttl_error_count;
	wire [`CPCI_NF2_DATA_WIDTH-1:0]      ls_error_count;
	wire [`CPCI_NF2_DATA_WIDTH-1:0]      ld_error_count;

      wire [18:0]           ls1_base;
      wire [18:0]           ls1_bound;
      wire [18:0]           ls2_base;
      wire [18:0]           ls2_bound;
      wire [18:0]           ls3_base;
      wire [18:0]           ls3_bound;
      wire [18:0]           ls4_base;
      wire [18:0]           ls4_bound;
      wire [18:0]           ld_base;
      wire [18:0]           ld_bound;
      wire [18:0]           counter1_base;
      wire [18:0]           counter2_base;
      wire [20:0]           soft_offset;
  
   reg  [NUM_REGS_USED*`CPCI_NF2_DATA_WIDTH-1:0]   reg_file_linear;
   wire [NUM_REGS_USED*`CPCI_NF2_DATA_WIDTH-1:0]   reg_file_linear_next;

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


   // -------------- Logic --------------------

   assign addr = reg_addr_in[OP_LUT_REG_ADDR_WIDTH_USED-1:0];
   assign reg_addr = reg_addr_in[`SWITCH_OP_LUT_REG_ADDR_WIDTH-1:0];
   assign tag_addr = reg_addr_in[`UDP_REG_ADDR_WIDTH - 1:`SWITCH_OP_LUT_REG_ADDR_WIDTH];

   assign addr_good = (reg_addr<NUM_REGS_USED);
   assign tag_hit = (tag_addr == `SWITCH_OP_LUT_BLOCK_ADDR)&&(reg_addr_in[11:10]==2'b0);

   assign mac0_addr_lo = reg_file[`SWITCH_OP_LUT_MAC0_LO];
   assign mac0_addr_hi = reg_file[`SWITCH_OP_LUT_MAC0_HI];
   assign mac1_addr_lo = reg_file[`SWITCH_OP_LUT_MAC1_LO];
   assign mac1_addr_hi = reg_file[`SWITCH_OP_LUT_MAC1_HI];
   assign mac2_addr_lo = reg_file[`SWITCH_OP_LUT_MAC2_LO];
   assign mac2_addr_hi = reg_file[`SWITCH_OP_LUT_MAC2_HI];
   assign mac3_addr_lo = reg_file[`SWITCH_OP_LUT_MAC3_LO];
   assign mac3_addr_hi = reg_file[`SWITCH_OP_LUT_MAC3_HI]; 
	
	assign ls1_base = reg_file[`SWITCH_OP_LUT_LS1_BASE];
        assign ls1_bound = reg_file[`SWITCH_OP_LUT_LS1_BOUND];
	assign ls2_base = reg_file[`SWITCH_OP_LUT_LS2_BASE];
        assign ls2_bound = reg_file[`SWITCH_OP_LUT_LS2_BOUND];
	assign ls3_base = reg_file[`SWITCH_OP_LUT_LS3_BASE];
        assign ls3_bound = reg_file[`SWITCH_OP_LUT_LS3_BOUND];
	assign ls4_base = reg_file[`SWITCH_OP_LUT_LS4_BASE];
        assign ls4_bound = reg_file[`SWITCH_OP_LUT_LS4_BOUND];
	assign ld_base = reg_file[`SWITCH_OP_LUT_LD_BASE];
        assign ld_bound = reg_file[`SWITCH_OP_LUT_LD_BOUND];
        assign counter1_base = reg_file[`SWITCH_OP_LUT_COUNTER1_BASE];
        assign counter2_base = reg_file[`SWITCH_OP_LUT_COUNTER2_BASE];
        assign soft_offset = reg_file[`SWITCH_OP_LUT_SOFT_OFFSET];
    
	
	assign not_for_us_count = reg_file[`SWITCH_OP_LUT_NOT_FOR_US];
	assign parity_error_count = reg_file[`SWITCH_OP_LUT_PARITY_ERROR];
	assign ttl_error_count = reg_file[`SWITCH_OP_LUT_TTL_ERROR];
        assign ls_error_count = reg_file[`SWITCH_OP_LUT_LS_ERROR];
        assign ld_error_count = reg_file[`SWITCH_OP_LUT_LD_ERROR];	
	
   assign reg_file_selected = reg_file[addr];

   /* select the correct words from the registers */
   generate
   genvar j;
   for(j=0; j<NUM_REGS_USED; j=j+1) begin:linear_reg
      assign reg_file_linear_next[`REG_END(j):`REG_START(j)] = reg_file_next[j];
      assign reg_file[j] = reg_file_linear[`REG_END(j):`REG_START(j)];
   end
   endgenerate



   /* run the counters and mux between write and update */
   always @(*) begin

      reg_file_next[`SWITCH_OP_LUT_MAC0_HI]    = mac0_addr_hi;
      reg_file_next[`SWITCH_OP_LUT_MAC0_LO]    = mac0_addr_lo;
      reg_file_next[`SWITCH_OP_LUT_MAC1_HI]    = mac1_addr_hi;
      reg_file_next[`SWITCH_OP_LUT_MAC1_LO]    = mac1_addr_lo;
      reg_file_next[`SWITCH_OP_LUT_MAC2_HI]    = mac2_addr_hi;
      reg_file_next[`SWITCH_OP_LUT_MAC2_LO]    = mac2_addr_lo;
      reg_file_next[`SWITCH_OP_LUT_MAC3_HI]    = mac3_addr_hi;
      reg_file_next[`SWITCH_OP_LUT_MAC3_LO]    = mac3_addr_lo;
		
      reg_file_next[`SWITCH_OP_LUT_LS1_BASE]     = ls1_base;		
      reg_file_next[`SWITCH_OP_LUT_LS1_BOUND]    = ls1_bound;
      reg_file_next[`SWITCH_OP_LUT_LS2_BASE]     = ls2_base;		
      reg_file_next[`SWITCH_OP_LUT_LS2_BOUND]    = ls2_bound;
      reg_file_next[`SWITCH_OP_LUT_LS3_BASE]     = ls3_base;		
      reg_file_next[`SWITCH_OP_LUT_LS3_BOUND]    = ls3_bound;
      reg_file_next[`SWITCH_OP_LUT_LS4_BASE]     = ls4_base;		
      reg_file_next[`SWITCH_OP_LUT_LS4_BOUND]    = ls4_bound;
      reg_file_next[`SWITCH_OP_LUT_LD_BASE]      = ld_base;		
      reg_file_next[`SWITCH_OP_LUT_LD_BOUND]     = ld_bound;
      reg_file_next[`SWITCH_OP_LUT_COUNTER1_BASE]    = counter1_base;
      reg_file_next[`SWITCH_OP_LUT_COUNTER2_BASE]    = counter2_base;		
      reg_file_next[`SWITCH_OP_LUT_SOFT_OFFSET]      = soft_offset;

      reg_file_next[`SWITCH_OP_LUT_NOT_FOR_US]     = not_for_us_count + drop_not_for_us;
      reg_file_next[`SWITCH_OP_LUT_PARITY_ERROR]   = parity_error_count + drop_parity_error;
      reg_file_next[`SWITCH_OP_LUT_TTL_ERROR]      = ttl_error_count + drop_ttl_error;
      reg_file_next[`SWITCH_OP_LUT_LS_ERROR]      = ls_error_count + label_space_error;
      reg_file_next[`SWITCH_OP_LUT_LD_ERROR]      = ld_error_count + drop_ld_error;
		
		state_next = state;

      reg_req_out_nxt = 0;
      reg_ack_out_nxt = 0;
      reg_rd_wr_L_out_nxt = 0;
      reg_addr_out_nxt = 0;
      reg_data_out_nxt = 0;
      reg_src_out_nxt = 0;

      reg_rd_wr_L_held_nxt = reg_rd_wr_L_held;
      reg_addr_held_nxt    = reg_addr_held;
      reg_data_held_nxt    = reg_data_held;
      reg_src_held_nxt     = reg_src_held;

    
      case(state)
        WAIT_FOR_REQ: begin
            if (reg_req_in && tag_hit) begin
               if (!reg_rd_wr_L_in && addr_good) begin
                  reg_file_next[addr] = reg_data_in;
                  
                  state_next = DONE;
                  
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
                  reg_data_out_nxt    = addr_good ? reg_file_selected : 32'h DEAD_BEEF;
                  reg_src_out_nxt     = reg_src_in;
               end
            end
            else begin
               reg_req_out_nxt = reg_req_in;
               reg_ack_out_nxt = reg_ack_in;
               reg_rd_wr_L_out_nxt = reg_rd_wr_L_in;
               reg_addr_out_nxt = reg_addr_in;
               reg_data_out_nxt = reg_data_in;
               reg_src_out_nxt = reg_src_in;
            end

           end // case: WAIT_FOR_REQ

        
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

         // zero out the registers being used
	// reg_file_linear <= {(`CPCI_NF2_DATA_WIDTH*NUM_REGS_USED){1'b0}};
	reg_file_linear <= 0;
        state <= WAIT_FOR_REQ;

        mac_0 <= 0;
	mac_1 <= 0;
	mac_2 <= 0; 
	mac_3 <= 0;

        ls1_base1 <= 0;
        ls1_bound1 <= 0;
	ls2_base1 <= 0;
        ls2_bound1 <= 0;
	ls3_base1 <= 0;
        ls3_bound1 <= 0;
	ls4_base1 <= 0;
        ls4_bound1 <= 0;
	ld_base1 <= 0;
        ld_bound1 <= 0;
        counter1_base1 <= 0;
        counter2_base1 <= 0;
        soft_offset1 <= 0; 

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

	 reg_file_linear <= reg_file_linear_next;

         state <= state_next;

        mac_0 <= {mac0_addr_hi, mac0_addr_lo}; // mac addr
	mac_1 <= {mac1_addr_hi, mac1_addr_lo};
	mac_2 <= {mac2_addr_hi, mac2_addr_lo}; 
	mac_3 <= {mac3_addr_hi, mac3_addr_lo};

        ls1_base1 <= ls1_base;
        ls1_bound1 <= ls1_bound;
	ls2_base1 <= ls2_base;
        ls2_bound1 <= ls2_bound;
	ls3_base1 <= ls3_base;
        ls3_bound1 <= ls3_bound;
	ls4_base1 <= ls4_base;
        ls4_bound1 <= ls4_bound;
	ld_base1 <= ld_base;
        ld_bound1 <= ld_bound;
        counter1_base1 <= counter1_base;
        counter2_base1 <= counter2_base;
        soft_offset1 <= soft_offset;

      end // else: !if( reset )
   end // always @ (posedge clk)


endmodule
