///////////////////////////////////////////////////////////////////////////////
////
// MPLS Switch MPLS Command Processing Module,
//   Developed by Algo-Logic Systems
//   for Google, Copyright 2011, all rights reserved
//   Distributed through the Apache 2.0 License
// Based on code from NetFPGA Project
//   Distributed through the NetBSD License
//-----------------------------------------------------------

// Module: mpls_proc.v
// Project: NF2.1
// Description: reads the mpls command and do the packet processing.
//
///////////////////////////////////////////////////////////////////////////////
`timescale 1ns/1ps

  module mpls_proc

   (// --- data path interface
    output reg [63:0]                  out_data,
    output reg [7:0]                   out_ctrl,
    output reg                         out_wr,
    input                              out_rdy,

    input  [63:0]                      in_data,
    input  [7:0]                       in_ctrl,
    input                              in_wr,
    output                             in_rdy,
	 
    input [47:0]                       bram_dst_mac,
    input [71:0]                       mplsword,
    input                              unicast_out,
    input                              write_pkt_out,	
    input[7:0]                         ttl_stat_out,

    // --- Misc
    input                              clk,
    input                              reset);
	 
    
	 wire [7:0]                         in_ctrl_out;
	 wire [63:0]                        in_data_out;
	 wire                               in_fifo_nearly_full,in_fifo_empty;
	 reg                                in_fifo_rd_en;
	 wire [7:0]                         decoded_value[7:0];
	 wire [2:0]                         dest_port_for_mpls_pkt;
	 wire [7:0]                         dest_port_enc_for_mpls_pkt;
	 wire [2:0]                         dest_port_for_cpu_pkt;
	 wire [7:0]                         dest_port_enc_for_cpu_pkt;
	 reg[7:0]                           dst_port_next,dst_port;
	 reg [63:0]                         out_data_next,out_fifo_data_reg_next,out_fifo_data_reg;
         reg [7:0]                          out_ctrl_next,out_fifo_ctrl_reg_next,out_fifo_ctrl_reg;
         reg                                out_wr_next;
	 wire[3:0]                          cmd;
	 wire[7:0]                          ottl;
	 wire[19:0]                         mpls_swap_label,mpls_pp_label;
	 wire[2:0]                          expbits;
	 reg                                num_mpls,num_mpls_next;
	 reg[7:0]                           ottl_latch,ottl_latch_next;
   //    reg [15:0]                        mwct,mwct_next;
   //    reg [15:0]                        mbct,mbct_next;
       wire [15:0]                        mwct;
       wire [15:0]                        mbct;
       wire [15:0]                        mwctp;
       wire [15:0]                        mbctp; 
	 
	  /* decode the source port number */
   generate
      genvar i;
      for(i=0; i<8; i=i+1) begin: decoder
         assign decoded_value[i] = 2**i;
      end
   endgenerate
	
	assign in_rdy = !in_fifo_nearly_full;
	assign dest_port_for_mpls_pkt = mplsword[60:58];
	assign dest_port_enc_for_mpls_pkt = decoded_value[dest_port_for_mpls_pkt];
        assign dest_port_for_cpu_pkt = in_data_out[18:16] + 3'h1;
	assign dest_port_enc_for_cpu_pkt = decoded_value[dest_port_for_cpu_pkt];
        assign cmd = mplsword[71:68];
        assign ottl = in_data_out[55:48] - 8'h1;
        assign expbits = in_data_out[59:57];
	assign mpls_swap_label = mplsword[49:30];
	assign mpls_pp_label = mplsword[29:10];
        assign mwct = in_data_out[47:32]+16'h1;
        assign mbct = in_data_out[15:0]+16'h4;
        assign mwctp = in_data_out[47:32]-16'h1;
        assign mbctp = in_data_out[15:0]-16'h4;
		
fallthrough_small_fifo
     #(.WIDTH(72),
       .MAX_DEPTH_BITS(5))
   mpls_in_fifo
     (.dout({in_ctrl_out,in_data_out}),
      .full(),
     // .prog_full (),
      .nearly_full(in_fifo_nearly_full),
      .empty(in_fifo_empty),
      .din({in_ctrl,in_data}),
      .wr_en(in_wr),
      .rd_en (in_fifo_rd_en),
      .reset(reset),
      .clk(clk));	

		
		
	
  	parameter NUM_STATES                  = 5;
	parameter WAIT_START                  = 1;
	parameter FORWARD_PKT                 = 2;
	parameter FORWARD_WRITE_PKT           = 3;
	parameter EXCHANGE_MAC1               = 4;
	parameter EXCHANGE_MAC2               = 5;
	parameter WAIT_IP                     = 6;
	parameter EXCHANGE_IP                 = 7;  
	parameter EXCHANGE_UDP                = 8;
        parameter FORWARD_WRITE_PKT2	      = 9;
	parameter END_WRITE_PKT               = 10;
	parameter FORWARD_UNICAST1            = 11;
	parameter FORWARD_UNICAST2            = 12;
	parameter ONE_SHIFT_FWD               = 13;
	parameter ONE_SHIFT_FWD_ODD_WORD      = 14;
        parameter WAIT_EOP                    = 15;
	parameter POP1                        = 16;
	parameter POP2                        = 17;
	parameter POP_END                     = 18; 
	
   
	reg [NUM_STATES-1:0]         state, state_next;
	
   always @(*) begin
      state_next = state;
		in_fifo_rd_en = 0;
      dst_port_next = dst_port;
		out_data_next = out_data;
		out_ctrl_next = out_ctrl;
		out_wr_next   = 0;
		out_fifo_data_reg_next		= out_fifo_data_reg;
		out_fifo_ctrl_reg_next		= out_fifo_ctrl_reg;
		num_mpls_next = num_mpls;
		ottl_latch_next = ottl_latch;
    
			      
      case(state)
		
		  WAIT_START: begin
                  if(!in_fifo_empty)begin
			    if(in_ctrl_out==8'hff)begin
				    if((!(unicast_out || write_pkt_out))||(unicast_out && ttl_stat_out<=1))begin
					     dst_port_next= dest_port_enc_for_cpu_pkt;
					     out_data_next = in_data_out;
		                             out_ctrl_next = in_ctrl_out;
					     state_next      = FORWARD_PKT;
				    end
				    else if(write_pkt_out)begin
					     dst_port_next= dest_port_enc_for_cpu_pkt;
					     out_data_next = in_data_out;
		                             out_ctrl_next = in_ctrl_out;
					     in_fifo_rd_en   = 1;
				             state_next      = FORWARD_WRITE_PKT;
				    end
				    else if(out_rdy && unicast_out)begin
					    if(((cmd==4'h2)||(cmd==4'h3))&&((in_data_out[2:0]==3'h0)||(in_data_out[2:0]>3'h4))) begin
                            out_data_next = {in_data_out[63:`IOQ_DST_PORT_POS + 8],dest_port_enc_for_mpls_pkt,mwct,in_data_out[31:16],mbct};
                                            end
                                            if(((cmd==4'h2)||(cmd==4'h3))&&((in_data_out[2:0]!=3'h0)&&(in_data_out[2:0]<3'h5))) begin
                            out_data_next = {in_data_out[63:`IOQ_DST_PORT_POS + 8],dest_port_enc_for_mpls_pkt,in_data_out[47:16],mbct};
                                            end

                                            if(((cmd==4'h4)||(cmd==4'h5))&&((in_data_out[2:0]!=3'h0)&&(in_data_out[2:0]<3'h5))) begin
                            out_data_next = {in_data_out[63:`IOQ_DST_PORT_POS + 8],dest_port_enc_for_mpls_pkt,mwctp,in_data_out[31:16],mbctp};
                                            end
                                            if(((cmd==4'h4)||(cmd==4'h5))&&((in_data_out[2:0]==3'h0)||(in_data_out[2:0]>3'h4))) begin
                            out_data_next = {in_data_out[63:`IOQ_DST_PORT_POS + 8],dest_port_enc_for_mpls_pkt,in_data_out[47:16],mbctp};
                                            end

                                            if((cmd==4'h0)||(cmd==4'h1))begin
			    out_data_next = {in_data_out[63:`IOQ_DST_PORT_POS + 8],dest_port_enc_for_mpls_pkt,in_data_out[`IOQ_DST_PORT_POS-1:0]};
                                            end
		                            out_ctrl_next = in_ctrl_out;
					    num_mpls_next = 0;
					    out_wr_next     = 1;
                                            in_fifo_rd_en   = 1;
					    state_next      = FORWARD_UNICAST1;
					 
				   end
			  end
			  else begin
				   in_fifo_rd_en=1;
			  end
			    
                  end			 
			 
               end
		  
		   FORWARD_PKT: begin
		              if(out_rdy && !in_fifo_empty) begin
                                   out_data_next[`IOQ_DST_PORT_POS + 7:`IOQ_DST_PORT_POS] = dst_port;
                                   out_wr_next          = 1;
                                   in_fifo_rd_en   = 1;
				   state_next      = WAIT_EOP;
																
                              end  
                   end
				 
		 	FORWARD_UNICAST1: begin
		              if(out_rdy && !in_fifo_empty) begin
                                       if(in_data_out[31:16]==16'h8847)begin
						  if(cmd==1)begin
						         out_data_next = {in_data_out[63:16],mplsword[49:34]};
		                                         out_ctrl_next = in_ctrl_out;
							 out_wr_next          = 1;
						  end
						  else if(cmd==0)begin
						         out_data_next = in_data_out;
		                                         out_ctrl_next = in_ctrl_out;
							 out_wr_next          = 1;
						  end
						  else if(cmd==2 || cmd==3)begin
							 out_data_next = {in_data_out[63:16],mpls_pp_label[19:4]};
		                                         out_ctrl_next = in_ctrl_out;
							 out_fifo_data_reg_next[63:48] = in_data_out[15:0];
		                                         out_fifo_ctrl_reg_next = in_ctrl_out;
							 out_wr_next          = 1;
						  end
						  else if(cmd==4 || cmd==5)begin
							 out_fifo_data_reg_next = in_data_out;
		                                         out_fifo_ctrl_reg_next = in_ctrl_out;
						  end
						  in_fifo_rd_en   = 1;
						  state_next      = FORWARD_UNICAST2;
                                      end
                                      else begin
						 out_data_next = {bram_dst_mac,in_data_out[15:0]};
		                                 out_ctrl_next = in_ctrl_out;
						 in_fifo_rd_en   = 1;
						 out_wr_next          = 1;
                                      end								
                             end  
                       end 
				 
		FORWARD_UNICAST2: begin
		             if(out_rdy && !in_fifo_empty) begin
                                      if(cmd==2)begin
					    out_data_next = {mpls_pp_label[3:0],expbits,1'b0,ottl,out_fifo_data_reg[63:48],in_data_out[63:56],ottl,in_data_out[47:32]};
		                            out_ctrl_next = out_fifo_ctrl_reg;
					    out_fifo_data_reg_next = in_data_out;
		                            out_fifo_ctrl_reg_next = in_ctrl_out;
					    state_next			= ONE_SHIFT_FWD;
				      end
				      else if(cmd==3)begin
					    out_data_next = {mpls_pp_label[3:0],expbits,1'b0,ottl,mpls_swap_label,in_data_out[59:56],ottl,in_data_out[47:32]};
		                            out_ctrl_next = out_fifo_ctrl_reg;
					    out_fifo_data_reg_next = in_data_out;
		                            out_fifo_ctrl_reg_next = in_ctrl_out;
				            state_next			= ONE_SHIFT_FWD;
				      end
				      else if(cmd==1)begin
				            out_data_next = {mplsword[33:30],in_data_out[59:56],ottl,in_data_out[47:0]};
		                            out_ctrl_next = in_ctrl_out;
					    state_next      = WAIT_EOP;
				      end
				      else if(cmd==0)begin
					    out_data_next = {in_data_out[63:56],ottl,in_data_out[47:0]};
		                            out_ctrl_next = in_ctrl_out;
				            state_next      = WAIT_EOP;
				      end
				      else if(cmd==4)begin
					    out_ctrl_next = out_fifo_ctrl_reg;
					    out_fifo_data_reg_next = in_data_out;
		                            out_fifo_ctrl_reg_next = in_ctrl_out;
					    if(in_data_out[56] == 1)begin
						  num_mpls_next = 1;
                                                  out_data_next = {out_fifo_data_reg[63:32],16'h0800,in_data_out[47:32]};
					    end
                                            else begin
                                                  out_data_next = {out_fifo_data_reg[63:16],in_data_out[47:32]};
                                            end
					    state_next      = POP1;
				      end
				      else if(cmd==5)begin
					        if(in_data_out[56] == 1)begin
						      num_mpls_next = 1;
						      out_data_next = {out_fifo_data_reg[63:32],16'h0800,in_data_out[47:32]};
						end
						else begin
						      out_data_next = {out_fifo_data_reg[63:16],mpls_swap_label[19:4]};
						end
						out_ctrl_next = out_fifo_ctrl_reg;
						out_fifo_data_reg_next = in_data_out;
		                                out_fifo_ctrl_reg_next = in_ctrl_out;
						state_next      = POP1;
				      end
				      in_fifo_rd_en   = 1;
				      out_wr_next          = 1;
				      ottl_latch_next = ottl;
														  
                         end  
               end 
				 
			POP1: begin 
			   if(out_rdy && !in_fifo_empty) begin
			       if(cmd==4 || (cmd==5 && num_mpls==1))begin
					   if(num_mpls==1)begin
						   out_data_next = {out_fifo_data_reg[31:0],in_data_out[63:48],ottl_latch,in_data_out[39:32]};
						end
						else begin
						   out_data_next = {out_fifo_data_reg[31:24],ottl_latch,out_fifo_data_reg[15:0],in_data_out[63:32]};
						end						
                end
					 else if(cmd == 5 && num_mpls!=1)begin
					      out_data_next = {mpls_swap_label[3:0],out_fifo_data_reg[27:24],ottl_latch,out_fifo_data_reg[15:0],in_data_out[63:32]};
					 end
					 
					 in_fifo_rd_en   = 1;
					 out_wr_next          = 1;
					 out_fifo_data_reg_next = in_data_out;
		                         out_fifo_ctrl_reg_next = in_ctrl_out;
					 out_ctrl_next = out_fifo_ctrl_reg;
					 state_next      = POP2;
           end					 
			end
			
			POP2: begin 
			   if(out_rdy && !in_fifo_empty) begin
			       if(in_ctrl_out!=0)begin
					       if(in_ctrl_out[0] || in_ctrl_out[1] || in_ctrl_out[2]|| in_ctrl_out[3])begin
							     out_fifo_ctrl_reg_next = {in_ctrl_out[3:0],4'b0};
					                     out_ctrl_next = out_fifo_ctrl_reg;
						             state_next      = POP_END;
					       end
					       else begin
							     out_ctrl_next = {4'b0,in_ctrl_out[7:4]};
							     state_next      = WAIT_START;
					       end
							 
			      end
			      out_data_next = {out_fifo_data_reg[31:0],in_data_out[63:32]};
			      in_fifo_rd_en   = 1;
			      out_wr_next          = 1;
			      out_fifo_data_reg_next = in_data_out;
		        end					 
		 end
			
			POP_END: begin
			  if(out_rdy) begin
			     out_data_next = {out_fifo_data_reg[31:0],32'h0};
				  out_ctrl_next = out_fifo_ctrl_reg;
				  out_wr_next          = 1;
				  state_next      = WAIT_START;
			  end
			end

       	ONE_SHIFT_FWD: begin 
             	if(out_rdy && !in_fifo_empty) begin
					    in_fifo_rd_en   = 1;
						 out_wr_next          = 1;
						 out_data_next = {out_fifo_data_reg[31:0],in_data_out[63:32]};
		             out_fifo_data_reg_next = in_data_out;
		             
						 if (in_ctrl_out != 0) begin
			               if (in_ctrl_out[0] || in_ctrl_out[1] || in_ctrl_out[2] || in_ctrl_out[3]) begin // second half of 64bit word is EoP
                            out_fifo_ctrl_reg_next	= {in_ctrl_out[3:0] , 4'b0};
				                out_ctrl_next	= out_fifo_ctrl_reg;
				                state_next		= ONE_SHIFT_FWD_ODD_WORD;
			                end
			                else begin
			                    out_ctrl_next	= {4'b0, in_ctrl_out[7:4]};
				                 state_next		= WAIT_START;
			                end
			          end
						 else begin
						      out_ctrl_next = out_fifo_ctrl_reg;
								out_fifo_ctrl_reg_next = in_ctrl_out;
			               
			          end
						
               end					
		   
		end
			 
			 ONE_SHIFT_FWD_ODD_WORD: begin 
			      if (out_rdy) begin
			          out_ctrl_next		= out_fifo_ctrl_reg;
			          out_data_next		= {out_fifo_data_reg[31:0],32'h0};
			          state_next			= WAIT_START;
			          out_wr_next			= 1;
		         end // if (!out_fifo_nearly_full)
			 
			 end
				 
		  FORWARD_WRITE_PKT: begin
		              if(out_rdy && !in_fifo_empty) begin
                        out_data_next[`IOQ_DST_PORT_POS + 7:`IOQ_DST_PORT_POS] = dst_port;
                        out_wr_next          = 1;
								out_fifo_data_reg_next = in_data_out;
		                  out_fifo_ctrl_reg_next = in_ctrl_out;
                        in_fifo_rd_en   = 1;
                        state_next      = EXCHANGE_MAC1;
                    end  
             end
				 
        EXCHANGE_MAC1: begin
		              if(out_rdy && !in_fifo_empty) begin
                        out_data_next = {out_fifo_data_reg[15:0],in_data_out[63:32],out_fifo_data_reg[63:48]};
								out_ctrl_next = out_fifo_ctrl_reg;
                        out_wr_next          = 1;
								out_fifo_data_reg_next[63:48] = in_data_out[31:16];
								out_fifo_data_reg_next[15:0] = in_data_out[15:0];
		                  out_fifo_ctrl_reg_next = in_ctrl_out;
                        in_fifo_rd_en   = 1;
                        state_next      = EXCHANGE_MAC2;
                    end  
             end	
				 
        EXCHANGE_MAC2: begin
		              if(out_rdy && !in_fifo_empty) begin
                        out_data_next = {out_fifo_data_reg[47:16],out_fifo_data_reg[63:48],out_fifo_data_reg[15:0]};
								out_ctrl_next = out_fifo_ctrl_reg;
                        out_wr_next          = 1;
								out_fifo_data_reg_next = in_data_out;
								out_fifo_ctrl_reg_next = in_ctrl_out;
                        in_fifo_rd_en   = 1;
                        state_next      = WAIT_IP;
                    end  
             end	

      WAIT_IP: begin
		              if(out_rdy && !in_fifo_empty) begin
                        out_data_next = out_fifo_data_reg;
								out_ctrl_next = out_fifo_ctrl_reg;
                        out_wr_next          = 1;
								out_fifo_data_reg_next = in_data_out;
								out_fifo_ctrl_reg_next = in_ctrl_out;
                        in_fifo_rd_en   = 1;
                        state_next      = EXCHANGE_IP;
                    end  
             end
				 
      EXCHANGE_IP: begin
		              if(out_rdy && !in_fifo_empty) begin
                        out_data_next = {out_fifo_data_reg[63:48],out_fifo_data_reg[15:0],in_data_out[63:48],out_fifo_data_reg[47:32]};
								out_ctrl_next = out_fifo_ctrl_reg;
                        out_wr_next          = 1;
								out_fifo_data_reg_next = {out_fifo_data_reg[31:16],in_data_out[47:0]};
								out_fifo_ctrl_reg_next = in_ctrl_out;
                        in_fifo_rd_en   = 1;
                        state_next      = EXCHANGE_UDP;
                    end  
             end	

     	EXCHANGE_UDP: begin
		              if(out_rdy && !in_fifo_empty) begin
                        out_data_next = {out_fifo_data_reg[63:48],out_fifo_data_reg[31:16],out_fifo_data_reg[47:32],out_fifo_data_reg[15:0]};
								out_ctrl_next = out_fifo_ctrl_reg;
                        out_wr_next          = 1;
								out_fifo_data_reg_next = in_data_out;
								out_fifo_ctrl_reg_next = in_ctrl_out;
                        in_fifo_rd_en   = 1;
                        state_next      = FORWARD_WRITE_PKT2;
                    end  
             end	
				 
      FORWARD_WRITE_PKT2: begin
		              if(out_rdy ) begin
						      if(in_ctrl_out==0 && !in_fifo_empty)begin
                           out_data_next = out_fifo_data_reg;
								   out_ctrl_next = out_fifo_ctrl_reg;
                           out_wr_next          = 1;
								   out_fifo_data_reg_next = in_data_out;
								   out_fifo_ctrl_reg_next = in_ctrl_out;
                           in_fifo_rd_en   = 1;
								end
								else if(in_ctrl_out!=0 && !in_fifo_empty)begin
								   out_data_next = out_fifo_data_reg;
								   out_ctrl_next = out_fifo_ctrl_reg;
                           out_wr_next          = 1;
								   out_fifo_data_reg_next = in_data_out;
								   out_fifo_ctrl_reg_next = in_ctrl_out;
									in_fifo_rd_en   = 1;
                           state_next      = END_WRITE_PKT;
								end
                    end  
             end
				 
    	END_WRITE_PKT: begin
		              if(out_rdy ) begin
						     
                           out_data_next = out_fifo_data_reg;
								   out_ctrl_next = out_fifo_ctrl_reg;
                           out_wr_next          = 1;
								   state_next      = WAIT_START;
							
                    end  
             end				 
		
        WAIT_EOP: begin
           if(in_ctrl_out!=0 && in_ctrl_out!= 8'hff)begin
              if(out_rdy) begin
				     out_data_next = in_data_out;
		           out_ctrl_next = in_ctrl_out;
                 out_wr_next          = 1;
					  state_next      = WAIT_START;
              end
           end
           else if(!in_fifo_empty & out_rdy) begin
              in_fifo_rd_en   = 1;
              out_data_next = in_data_out;
		        out_ctrl_next = in_ctrl_out;
              out_wr_next          = 1;
           end
        end // case: WAIT_EOP

      endcase // case(state)
   end // always @ (*)

   always @(posedge clk) begin
      if(reset) begin
         state <= WAIT_START;
			dst_port <= 0;
			out_data <= 0;
		   out_ctrl <= 0;
		   out_wr <= 0;
			out_fifo_data_reg	<= 0;
			out_fifo_ctrl_reg	<= 0;
			num_mpls <= 0;
			ottl_latch <= 0;
			
      end
      else begin
         state <= state_next;
			dst_port <= dst_port_next;
			out_data <= out_data_next;
		        out_ctrl <= out_ctrl_next;
		        out_wr <= out_wr_next;
			out_fifo_data_reg	<= out_fifo_data_reg_next;
			out_fifo_ctrl_reg	<= out_fifo_ctrl_reg_next;
			num_mpls <= num_mpls_next;
			ottl_latch <= ottl_latch_next;
	
      end
   end


 ///----------state machine for latching byte length---------------///
	
  /*	 parameter  WAIT_ETH = 0;
	 parameter  END_ETHDONE= 1;
	 
   
	reg               status_state, status_state_next;
	
   always @(*) begin
           status_state_next = status_state;
	   mwct_next = mwct;
           mbct_next = mbct; 

     
   	      
      case(status_state)
			
        WAIT_ETH: begin
		if(in_ctrl==8'hff) begin
           	    mwct_next = in_data[47:32]+16'h1;
                    mbct_next = in_data[15:0]+16'h4;
                    status_state_next = END_ETHDONE;	
	        end
          			  
        end
		  
	  			  
	  END_ETHDONE: begin
		       if(in_ctrl==8'h0) begin
			   status_state_next = WAIT_ETH;
		       end
		       				 		  
		  end
		  	  
		  
      endcase // case(state)
   end // always @ (*)

   always @(posedge clk) begin
      if(reset) begin
           status_state <= WAIT_ETH;
	   mwct <= 0;
           mbct <= 0; 
      end
      else begin
         status_state <= status_state_next;
	 mwct <= mwct_next;
         mbct <= mbct_next; 
      end
   end   */
	
///--------end of state machine-------------------------------///	

  
endmodule // end mpls_proc
