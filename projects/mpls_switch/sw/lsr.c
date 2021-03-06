/* ****************************************************************************
 * LSR - NetFPGA Command Software
 * by Algo-Logic Systems
 * (c) 2011 for Google
 * 
 * Includes code from NetFPGA Project:
 *    regwrite.c 2267 2007-09-18 00:09:14Z grg $
 *
 * Module: lsr.c
 * Project: LSR Control and Configuration 
 * 
 * Description: Write Commands to NetFPGA card
 *   running LSR bitfile to control and configure 
 *   operation of the Google Label Switch Router
 *
 * Change history:
 *
 *   Created: June 15, 2011
 */

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

#include <net/if.h>

#include "../../../lib/C/common/nf2.h"
#include "../../../lib/C/common/nf2util.h"
#include "../lib/C/reg_defines_mpls_switch.h"


#define PATHLEN		80

#define DEFAULT_IFACE	"nf2c0"

#define VERBOSE(x) x

/* Global vars */
static struct nf2device nf2;
static int verbose = 0;
static int force_cnet = 0;

/* Function declarations */
void writeRegisters (int , char **);
void processArgs (int , char **);
void usage (void);

int main(int argc, char *argv[])
{
	unsigned val;

	nf2.device_name = DEFAULT_IFACE;

	processArgs(argc, argv);

	// Open the interface if possible
	if (check_iface(&nf2))
	{
		exit(1);
	}
	if (openDescriptor(&nf2))
	{
		exit(1);
	}

	// Increment the argument pointer
	argc -= optind;
	argv += optind;

	// Read the registers
	writeRegisters(argc, argv);

	closeDescriptor(&nf2);

	return 0;
}


int lsr1_init(int base_address, int bound) {
   writeReg(&nf2, SWITCH_OP_LUT_LS1_BASE_REG, base_address); 
   writeReg(&nf2, SWITCH_OP_LUT_LS1_BOUND_REG, bound); 
}

int lsr2_init(int base_address, int bound) {
   writeReg(&nf2, SWITCH_OP_LUT_LS2_BASE_REG, base_address); 
   writeReg(&nf2, SWITCH_OP_LUT_LS2_BOUND_REG, bound); 
}

int lsr3_init(int base_address, int bound) {
   writeReg(&nf2, SWITCH_OP_LUT_LS3_BASE_REG, base_address); 
   writeReg(&nf2, SWITCH_OP_LUT_LS3_BOUND_REG, bound); 
}

int lsr4_init(int base_address, int bound) {
   writeReg(&nf2, SWITCH_OP_LUT_LS4_BASE_REG, base_address); 
   writeReg(&nf2, SWITCH_OP_LUT_LS4_BOUND_REG, bound); 
}

int lsr_ld_init(int base_addr, int bound) {
   writeReg(&nf2, SWITCH_OP_LUT_LD_BASE_REG, base_addr);
   writeReg(&nf2, SWITCH_OP_LUT_LD_BOUND_REG, bound);
}

int cnt_base_init(int packet_counter_base_addr, int byte_counter_base_addr) {
   writeReg(&nf2, SWITCH_OP_LUT_COUNTER1_BASE_REG, packet_counter_base_addr);
   writeReg(&nf2, SWITCH_OP_LUT_COUNTER2_BASE_REG, byte_counter_base_addr);
}

int soft_offset_init(int soft_offset) {
   writeReg(&nf2, SWITCH_OP_LUT_SOFT_OFFSET_REG, soft_offset);
   }

int mac0_init(int mac0_hi, int mac0_lo) {
   writeReg(&nf2, SWITCH_OP_LUT_MAC0_HI_REG, mac0_hi);
   writeReg(&nf2, SWITCH_OP_LUT_MAC0_LO_REG, mac0_lo);
   }

int mac1_init(int mac1_hi, int mac1_lo) {
   writeReg(&nf2, SWITCH_OP_LUT_MAC1_HI_REG, mac1_hi);
   writeReg(&nf2, SWITCH_OP_LUT_MAC1_LO_REG, mac1_lo);
   }

int mac2_init(int mac2_hi, int mac2_lo) {
   writeReg(&nf2, SWITCH_OP_LUT_MAC2_HI_REG, mac2_hi);
   writeReg(&nf2, SWITCH_OP_LUT_MAC2_LO_REG, mac2_lo);
   }

int mac3_init(int mac3_hi, int mac3_lo) {
   writeReg(&nf2, SWITCH_OP_LUT_MAC3_HI_REG, mac3_hi);
   writeReg(&nf2, SWITCH_OP_LUT_MAC3_LO_REG, mac3_lo);
   }

int lsr_init() {
  // Set up default table with equal partitions for each port 

  printf("Initialize LSR \n");
  
  
   lsr1_init(  0x0000,  0x8888 );  // Equally distributed entries for each port. 
   lsr2_init(  0x8888,  0x8888  ); //   default is to assign each port N=8888h=34,952d entries  
   lsr3_init(  0x11110, 0x8888  ); //   of the total of 512k entries / 3 table regions, 
   lsr4_init(  0x19998, 0x8888  ); //   less entries used for load distribution 
   lsr_ld_init(0x22220, 0x888b  ); // Load distribution region in the table 
   cnt_base_init(0x2aaab, 0x55555  ); // packet counter and Packet byte counter base address
   soft_offset_init(0xfff0bdc0 ); //offset value added to input label value (-1,000,000 in 2's complement; as per Juniper default) 
   mac0_init(0x00000090,0x69b1d07e ); // MAC address of nf2c0: MSB,LSB = 00:90:69:B1:D0:7E
   writeReg(&nf2, SWITCH_OP_LUT_NOT_FOR_US_REG, 0); // Reset count of packets arriving with MAC != self
   writeReg(&nf2, SWITCH_OP_LUT_PARITY_ERROR_REG, 0); // Parity errors in SRAM lookups
   writeReg(&nf2, SWITCH_OP_LUT_TTL_ERROR_REG, 0); // TTL expirations 
   writeReg(&nf2, SWITCH_OP_LUT_LS_ERROR_REG, 0); // Label Space out-of-bound error
   writeReg(&nf2, SWITCH_OP_LUT_LD_ERROR_REG, 0); // Load Distribution out-of-bound error


 printf("Init Done \n");
}


int lsr_fn(int dest_port,int ld_entry, int mac_bram_entry, int next_label, int next_label2,int op, int entry_num) {
  // LSR Function, without load distribution 

   unsigned int cmd1,cmd2,cmd3,cmd4,cmd5; // 64-bit command 
   unsigned int parity; // 8-bit parity check 
   unsigned int pkt_cnt_value;
   unsigned int byte_cnt_value;  


   cmd4 = 0xFFFFFFFF; // Commit by writing this value to 4th word
 
   cmd3 = (op << 4)| (ld_entry) ;;
   cmd2 = (dest_port << 26) | (mac_bram_entry << 18) | (next_label  >> 2) ;
   cmd1 = (next_label  << 30) | (next_label2 << 10) ;

   parity = cmd3 ^ ((cmd2 & 0xFF000000)>> 24) ^ ((cmd2 & 0x00FF0000)>> 16) ^ ((cmd2 & 0x0000FF00)>> 8) ^ (cmd2 & 0x000000FF)^((cmd1 & 0xFF000000)>> 24) ^ ((cmd1 & 0x00FF0000)>> 16) ^ ((cmd1 & 0x0000FF00)>> 8) ;
   cmd1 = cmd1 | parity ;
     
 
   VERBOSE( printf("BaseAddr: %x, Commands: %x,%x,%x,%x  Parity=%x\n", SRAM_BASE_ADDR + (entry_num*16) +12, cmd1,cmd2,cmd3,cmd4,parity);)
   
   readReg(&nf2, SWITCH_OP_LUT_COUNTER1_BASE_REG, &pkt_cnt_value);
   readReg(&nf2, SWITCH_OP_LUT_COUNTER2_BASE_REG, &byte_cnt_value);
   
   // Initialize Command Word in SRAM
   writeReg(&nf2, entry_num*16 + SRAM_BASE_ADDR + 12, cmd1 );
   writeReg(&nf2, entry_num*16 + SRAM_BASE_ADDR + 8,  cmd2 );
   writeReg(&nf2, entry_num*16 + SRAM_BASE_ADDR + 4,  cmd3 );
   writeReg(&nf2, entry_num*16 + SRAM_BASE_ADDR + 0 , cmd4 );
   
   // Initialize Corresponding Packet Counter to zero
   writeReg(&nf2, (entry_num*16) + (pkt_cnt_value*16) + SRAM_BASE_ADDR + 12, 0 );
   writeReg(&nf2, (entry_num*16) + (pkt_cnt_value*16) + SRAM_BASE_ADDR + 8,  0 );
   writeReg(&nf2, (entry_num*16) + (pkt_cnt_value*16) + SRAM_BASE_ADDR + 4,  0 );
   writeReg(&nf2, (entry_num*16) + (pkt_cnt_value*16) + SRAM_BASE_ADDR + 0,  cmd4 );

   // Initialize Corresponding Packet Byte Counter to zero
   writeReg(&nf2, (entry_num*16) + (byte_cnt_value*16) + SRAM_BASE_ADDR + 12, 0 );
   writeReg(&nf2, (entry_num*16) + (byte_cnt_value*16) + SRAM_BASE_ADDR + 8,  0 );
   writeReg(&nf2, (entry_num*16) + (byte_cnt_value*16) + SRAM_BASE_ADDR + 4,  0 );
   writeReg(&nf2, (entry_num*16) + (byte_cnt_value*16) + SRAM_BASE_ADDR + 0,  cmd4 );
   
}


int mac_out(int mac_oh, int mac_ol, int entry_num) {
  // Set the MAC address in BRAM lookup table, without load distribution 

   unsigned int tmp2;

   tmp2 = 0xFFFFFFFF;  // Trigger
 
   VERBOSE( printf("BaseAddr: %x, Mac Add High: %x, Mac Add Low=%x\n", BRAM_REG_ACCESS_BASE_ADDR + (entry_num*16), mac_oh,mac_ol);)   
   
   writeReg(&nf2, entry_num*16 + BRAM_REG_ACCESS_BASE_ADDR + 12, mac_ol );
   writeReg(&nf2, entry_num*16 + BRAM_REG_ACCESS_BASE_ADDR + 8,  mac_oh );
   writeReg(&nf2, entry_num*16 + BRAM_REG_ACCESS_BASE_ADDR + 4,  0 );
   writeReg(&nf2, entry_num*16 + BRAM_REG_ACCESS_BASE_ADDR + 0 , tmp2 );

}


/*
 * Write the register(s)
 */
void writeRegisters(int argc, char** argv)
{
	int i;
	 int dest_port;
	 int sram_entry;
         int bram_entry;
	 int next_label;
         int next_label2;
         char mpls_op[10];
         int tmp=0;
         int mpop;
         unsigned long long int mac;
         int mac_hi;
         int mac_lo;
         int ld_value;
         unsigned int ls1,ls1b,ls2,ls2b,ls3,ls3b,ls4,ls4b,ld1,ld1b,c1,c2; 
        
        // Perform LSR operations, not just Register operations 

       /*    printf("Initialize LSR \n");
           lsr_init(); 
           printf("Init Done \n");*/
        

	// Verify that we actually have some registers to display
	if (argc == 0)
	{
		usage();
		exit(1);
	}

        
	if (strncmp(argv[0], "swap", 4) == 0)
	{
		/*fprintf(stderr, "Error: you must supply address/value pairs\n");
		usage();
		exit(1);*/
                if (argc !=5)
	{
		usage();
		exit(1);
	}
          
         sscanf(argv[0], "%s", mpls_op);
         printf("mpls_op= %s\n",mpls_op);
          

          if (strncmp(argv[1], "0x", 2) == 0 || strncmp(argv[1], "0X", 2) == 0)
		{
			sscanf(argv[1] + 2, "%x", &dest_port);
		}
		else
		{
			sscanf(argv[1], "%u", &dest_port);
		}
          if (strncmp(argv[2], "0x", 2) == 0 || strncmp(argv[2], "0X", 2) == 0)
		{
			sscanf(argv[2] + 2, "%x", &sram_entry);
		}
		else
		{
			sscanf(argv[2], "%u", &sram_entry);
		}
          if (strncmp(argv[3], "0x", 2) == 0 || strncmp(argv[3], "0X", 2) == 0)
		{
			sscanf(argv[3] + 2, "%x", &bram_entry);
		}
		else
		{
			sscanf(argv[3], "%u", &bram_entry);
		}
          if (strncmp(argv[4], "0x", 2) == 0 || strncmp(argv[4], "0X", 2) == 0)
		{
			sscanf(argv[4] + 2, "%x", &next_label);
		}
		else
		{
			sscanf(argv[4], "%u", &next_label);
		} 
          mpop=1; 
          lsr_fn(dest_port,tmp, bram_entry, next_label, tmp, mpop, sram_entry );

	}

if (strncmp(argv[0], "push", 4) == 0)
	{
		/*fprintf(stderr, "Error: you must supply address/value pairs\n");
		usage();
		exit(1);*/
                if (argc !=5)
	{
		usage();
		exit(1);
	}
          
         sscanf(argv[0], "%s", mpls_op);
         printf("mpls_op= %s\n",mpls_op);
          

          if (strncmp(argv[1], "0x", 2) == 0 || strncmp(argv[1], "0X", 2) == 0)
		{
			sscanf(argv[1] + 2, "%x", &dest_port);
		}
		else
		{
			sscanf(argv[1], "%u", &dest_port);
		}
          if (strncmp(argv[2], "0x", 2) == 0 || strncmp(argv[2], "0X", 2) == 0)
		{
			sscanf(argv[2] + 2, "%x", &sram_entry);
		}
		else
		{
			sscanf(argv[2], "%u", &sram_entry);
		}
          if (strncmp(argv[3], "0x", 2) == 0 || strncmp(argv[3], "0X", 2) == 0)
		{
			sscanf(argv[3] + 2, "%x", &bram_entry);
		}
		else
		{
			sscanf(argv[3], "%u", &bram_entry);
		}
          if (strncmp(argv[4], "0x", 2) == 0 || strncmp(argv[4], "0X", 2) == 0)
		{
			sscanf(argv[4] + 2, "%x", &next_label);
		}
		else
		{
			sscanf(argv[4], "%u", &next_label);
		} 
          mpop=2; 
          lsr_fn(dest_port,tmp, bram_entry, tmp, next_label, mpop, sram_entry );

	}

if (strncmp(argv[0], "pop", 3) == 0)
	{
		/*fprintf(stderr, "Error: you must supply address/value pairs\n");
		usage();
		exit(1);*/
                if (argc !=4)
	{
		usage();
		exit(1);
	}
          
         sscanf(argv[0], "%s", mpls_op);
         printf("mpls_op= %s\n",mpls_op);
          

          if (strncmp(argv[1], "0x", 2) == 0 || strncmp(argv[1], "0X", 2) == 0)
		{
			sscanf(argv[1] + 2, "%x", &dest_port);
		}
		else
		{
			sscanf(argv[1], "%u", &dest_port);
		}
          if (strncmp(argv[2], "0x", 2) == 0 || strncmp(argv[2], "0X", 2) == 0)
		{
			sscanf(argv[2] + 2, "%x", &sram_entry);
		}
		else
		{
			sscanf(argv[2], "%u", &sram_entry);
		}
          if (strncmp(argv[3], "0x", 2) == 0 || strncmp(argv[3], "0X", 2) == 0)
		{
			sscanf(argv[3] + 2, "%x", &bram_entry);
		}
		else
		{
			sscanf(argv[3], "%u", &bram_entry);
		}
          
          mpop=4; 
          lsr_fn(dest_port,tmp, bram_entry, tmp, tmp, mpop, sram_entry );

	}

if (strncmp(argv[0], "spush", 5) == 0)
	{
		/*fprintf(stderr, "Error: you must supply address/value pairs\n");
		usage();
		exit(1);*/
                if (argc !=6)
	{
		usage();
		exit(1);
	}
          
         sscanf(argv[0], "%s", mpls_op);
         printf("mpls_op= %s\n",mpls_op);
          

          if (strncmp(argv[1], "0x", 2) == 0 || strncmp(argv[1], "0X", 2) == 0)
		{
			sscanf(argv[1] + 2, "%x", &dest_port);
		}
		else
		{
			sscanf(argv[1], "%u", &dest_port);
		}
          if (strncmp(argv[2], "0x", 2) == 0 || strncmp(argv[2], "0X", 2) == 0)
		{
			sscanf(argv[2] + 2, "%x", &sram_entry);
		}
		else
		{
			sscanf(argv[2], "%u", &sram_entry);
		}
          if (strncmp(argv[3], "0x", 2) == 0 || strncmp(argv[3], "0X", 2) == 0)
		{
			sscanf(argv[3] + 2, "%x", &bram_entry);
		}
		else
		{
			sscanf(argv[3], "%u", &bram_entry);
		}
          if (strncmp(argv[4], "0x", 2) == 0 || strncmp(argv[4], "0X", 2) == 0)
		{
			sscanf(argv[4] + 2, "%x", &next_label);
		}
		else
		{
			sscanf(argv[4], "%u", &next_label);
		} 
          if (strncmp(argv[5], "0x", 2) == 0 || strncmp(argv[5], "0X", 2) == 0)
		{
			sscanf(argv[5] + 2, "%x", &next_label2);
		}
		else
		{
			sscanf(argv[5], "%u", &next_label2);
		} 
            
          mpop=3; 
          lsr_fn(dest_port,tmp, bram_entry, next_label, next_label2, mpop, sram_entry );

	}

if (strncmp(argv[0], "pswap", 5) == 0)
	{
		
                if (argc !=2)
	          {
		   usage();
		   exit(1);
	           }
          
         sscanf(argv[0], "%s", mpls_op);
         printf("mpls_op= %s\n",mpls_op);
          

        
          if (strncmp(argv[1], "0x", 2) == 0 || strncmp(argv[1], "0X", 2) == 0)
		{
			sscanf(argv[1] + 2, "%x", &sram_entry);
		}
		else
		{
			sscanf(argv[1], "%u", &sram_entry);
		}
          
         
          mpop=5; 
          lsr_fn(tmp,tmp, tmp, tmp, tmp, mpop, sram_entry );

	}


if (strncmp(argv[0], "ld", 2) == 0)
	{
		
                if (argc !=4)
	          {
		   usage();
		   exit(1);
	           }
          
         sscanf(argv[0], "%s", mpls_op);
         printf("mpls_op= %s\n",mpls_op);
          

          if (strncmp(argv[1], "0x", 2) == 0 || strncmp(argv[1], "0X", 2) == 0)
		{
			sscanf(argv[1] + 2, "%x", &ld_value);
		}
		else
		{
			sscanf(argv[1], "%u", &ld_value);
		}
          if (strncmp(argv[2], "0x", 2) == 0 || strncmp(argv[2], "0X", 2) == 0)
		{
			sscanf(argv[2] + 2, "%x", &sram_entry);
		}
		else
		{
			sscanf(argv[2], "%u", &sram_entry);
		}
          if (strncmp(argv[3], "0x", 2) == 0 || strncmp(argv[3], "0X", 2) == 0)
		{
			sscanf(argv[3] + 2, "%x", &next_label2);
		}
		else
		{
			sscanf(argv[3], "%u", &next_label2);
		}
           
        
          lsr_fn(tmp,ld_value, tmp, tmp, next_label2, tmp, sram_entry );

	}



  if (strncmp(argv[0], "mac0_add", 8) == 0)
	{
		/*fprintf(stderr, "Error: you must supply address/value pairs\n");
		usage();
		exit(1);*/
                if (argc !=2)
	{
		usage();
		exit(1);
	}
          sscanf(argv[0], "%s", mpls_op);
          printf("operation= %s\n",mpls_op);

          if (strncmp(argv[1], "0x", 2) == 0 || strncmp(argv[1], "0X", 2) == 0)
		{
			mac=strtoll(argv[1] + 2,&argv[1]+2,16);
                        mac_hi= mac>>32;
                        mac_lo= mac & 0x00000000FFFFFFFF;
		}
		else
		{
			mac=strtoll(argv[1],&argv[1],16);
                        mac_hi= mac>>32;
                        mac_lo= mac & 0x00000000FFFFFFFF;
		}
          
              mac0_init(mac_hi,mac_lo);

	}

if (strncmp(argv[0], "mac1_add", 8) == 0)
	{
		
                if (argc !=2)
	           {
		     usage();
		     exit(1);
	           }
          sscanf(argv[0], "%s", mpls_op);
          printf("operation= %s\n",mpls_op);

          if (strncmp(argv[1], "0x", 2) == 0 || strncmp(argv[1], "0X", 2) == 0)
		{
			mac=strtoll(argv[1] + 2,&argv[1]+2,16);
                        mac_hi= mac>>32;
                        mac_lo= mac & 0x00000000FFFFFFFF;
		}
		else
		{
			mac=strtoll(argv[1],&argv[1],16);
                        mac_hi= mac>>32;
                        mac_lo= mac & 0x00000000FFFFFFFF;
		}
          
              mac1_init(mac_hi,mac_lo);

	}
        
if (strncmp(argv[0], "mac2_add", 8) == 0)
	{
		
                if (argc !=2)
	           {
		     usage();
		     exit(1);
	           }
          sscanf(argv[0], "%s", mpls_op);
          printf("operation= %s\n",mpls_op);

          if (strncmp(argv[1], "0x", 2) == 0 || strncmp(argv[1], "0X", 2) == 0)
		{
			mac=strtoll(argv[1] + 2,&argv[1]+2,16);
                        mac_hi= mac>>32;
                        mac_lo= mac & 0x00000000FFFFFFFF;
		}
		else
		{
			mac=strtoll(argv[1],&argv[1],16);
                        mac_hi= mac>>32;
                        mac_lo= mac & 0x00000000FFFFFFFF;
		}
          
              mac2_init(mac_hi,mac_lo);

	}       

if (strncmp(argv[0], "mac3_add", 8) == 0)
	{
		
                if (argc !=2)
	           {
		     usage();
		     exit(1);
	           }
          sscanf(argv[0], "%s", mpls_op);
          printf("operation= %s\n",mpls_op);

          if (strncmp(argv[1], "0x", 2) == 0 || strncmp(argv[1], "0X", 2) == 0)
		{
			mac=strtoll(argv[1] + 2,&argv[1]+2,16);
                        mac_hi= mac>>32;
                        mac_lo= mac & 0x00000000FFFFFFFF;
		}
		else
		{
			mac=strtoll(argv[1],&argv[1],16);
                        mac_hi= mac>>32;
                        mac_lo= mac & 0x00000000FFFFFFFF;
		}
          
              mac3_init(mac_hi,mac_lo);

	}


if (strncmp(argv[0], "mac_out", 7) == 0)
	{
		
                if (argc !=3)
	           {
		     usage();
		     exit(1);
	           }
          sscanf(argv[0], "%s", mpls_op);
          printf("operation= %s\n",mpls_op);

          if (strncmp(argv[1], "0x", 2) == 0 || strncmp(argv[1], "0X", 2) == 0)
		{
			mac=strtoll(argv[1] + 2,&argv[1]+2,16);
                        mac_hi= mac>>32;
                        mac_lo= mac & 0x00000000FFFFFFFF;
		}
		else
		{
			mac=strtoll(argv[1],&argv[1],16);
                        mac_hi= mac>>32;
                        mac_lo= mac & 0x00000000FFFFFFFF;
		}
          
          if (strncmp(argv[2], "0x", 2) == 0 || strncmp(argv[2], "0X", 2) == 0)
		{
			sscanf(argv[2] + 2, "%x", &bram_entry);
		}
		else
		{
			sscanf(argv[2], "%u", &bram_entry);
		}

              mac_out(mac_hi,mac_lo,bram_entry);
 
	}



if (strncmp(argv[0], "lsr_init", 8) == 0)
	{
		
                if (argc !=1)
	           {
		     usage();
		     exit(1);
	           }
          sscanf(argv[0], "%s", mpls_op);
          printf("operation= %s\n",mpls_op);

          lsr_init();
 
	}

if (strncmp(argv[0], "lsld_init", 9) == 0)
	{
		
                if (argc !=13)
	{
		usage();
		exit(1);
	}
          
         sscanf(argv[0], "%s", mpls_op);
         printf("mpls_op= %s\n",mpls_op);
          

          if (strncmp(argv[1], "0x", 2) == 0 || strncmp(argv[1], "0X", 2) == 0)
		{
			sscanf(argv[1] + 2, "%x", &ls1);
		}
		else
		{
			sscanf(argv[1], "%u", &ls1);
		}
          if (strncmp(argv[2], "0x", 2) == 0 || strncmp(argv[2], "0X", 2) == 0)
		{
			sscanf(argv[2] + 2, "%x", &ls1b);
		}
		else
		{
			sscanf(argv[2], "%u", &ls1b);
		}
          if (strncmp(argv[3], "0x", 2) == 0 || strncmp(argv[3], "0X", 2) == 0)
		{
			sscanf(argv[3] + 2, "%x", &ls2);
		}
		else
		{
			sscanf(argv[3], "%u", &ls2);
		}
          if (strncmp(argv[4], "0x", 2) == 0 || strncmp(argv[4], "0X", 2) == 0)
		{
			sscanf(argv[4] + 2, "%x", &ls2b);
		}
		else
		{
			sscanf(argv[4], "%u", &ls2b);
		} 

            if (strncmp(argv[5], "0x", 2) == 0 || strncmp(argv[5], "0X", 2) == 0)
		{
			sscanf(argv[5] + 2, "%x", &ls3);
		}
		else
		{
			sscanf(argv[5], "%u", &ls3);
		}
          if (strncmp(argv[6], "0x", 2) == 0 || strncmp(argv[6], "0X", 2) == 0)
		{
			sscanf(argv[6] + 2, "%x", &ls3b);
		}
		else
		{
			sscanf(argv[6], "%u", &ls3b);
		}
          if (strncmp(argv[7], "0x", 2) == 0 || strncmp(argv[7], "0X", 2) == 0)
		{
			sscanf(argv[7] + 2, "%x", &ls4);
		}
		else
		{
			sscanf(argv[7], "%u", &ls4);
		}
          if (strncmp(argv[8], "0x", 2) == 0 || strncmp(argv[8], "0X", 2) == 0)
		{
			sscanf(argv[8] + 2, "%x", &ls4b);
		}
		else
		{
			sscanf(argv[8], "%u", &ls4b);
		}

           if (strncmp(argv[9], "0x", 2) == 0 || strncmp(argv[9], "0X", 2) == 0)
		{
			sscanf(argv[9] + 2, "%x", &ld1);
		}
		else
		{
			sscanf(argv[9], "%u", &ld1);
		}
          if (strncmp(argv[10], "0x", 2) == 0 || strncmp(argv[10], "0X", 2) == 0)
		{
			sscanf(argv[10] + 2, "%x", &ld1b);
		}
		else
		{
			sscanf(argv[10], "%u", &ld1b);
		}
          if (strncmp(argv[11], "0x", 2) == 0 || strncmp(argv[11], "0X", 2) == 0)
		{
			sscanf(argv[11] + 2, "%x", &c1);
		}
		else
		{
			sscanf(argv[11], "%u", &c1);
		}
          if (strncmp(argv[12], "0x", 2) == 0 || strncmp(argv[12], "0X", 2) == 0)
		{
			sscanf(argv[12] + 2, "%x", &c2);
		}
		else
		{
			sscanf(argv[12], "%u", &c2);
		}
        
          lsr1_init(ls1, ls1b );
          lsr2_init(ls2, ls2b );
          lsr3_init(ls3, ls3b );
          lsr4_init(ls4, ls4b );
          lsr_ld_init(ld1, ld1b );
          cnt_base_init(c1, c2 );
  
	}


if (strncmp(argv[0], "soft_off", 8) == 0)
	{
		
                if (argc !=2)
	           {
		     usage();
		     exit(1);
	           }
          sscanf(argv[0], "%s", mpls_op);
          printf("operation= %s\n",mpls_op);

                    
          if (strncmp(argv[1], "0x", 2) == 0 || strncmp(argv[1], "0X", 2) == 0)
		{
			sscanf(argv[1] + 2, "%x", &ls1);
		}
		else
		{
			sscanf(argv[1], "%u", &ls1);
		}

              soft_offset_init(ls1 );
               
	}


}

/*
 *  Process the arguments.
 */
void processArgs (int argc, char **argv )
{
	char c;

	/* don't want getopt to moan - I can do that just fine thanks! */
	opterr = 0;

	while ((c = getopt (argc, argv, "i:p:a:h")) != -1)
	{
		switch (c)
	 	{
	 		case 'i':	/* interface name */
		 		nf2.device_name = optarg;
		 		break;
			case 'p':
				nf2.server_port_num = strtol(optarg, NULL, 0);
				break;
			case 'a':
				strncpy(nf2.server_ip_addr, optarg, strlen(optarg));
				break;
	 		case '?':
		 		if (isprint (optopt))
		         		fprintf (stderr, "Unknown option `-%c'.\n", optopt);
		 		else
		         		fprintf (stderr,
		                  		"Unknown option character `\\x%x'.\n",
		                  		optopt);
			case 'h':
	 		default:
		 		usage();
		 		exit(1);
	 	}
	}
}


/*
 *  Describe usage of this program.
 */
void usage (void)
{
	printf("Usage: ./lsr <options> [addr...] \n\n");
	printf("Options: -i <iface> : interface name (default nf2c0)\n");
	printf("         -a <addr> : IP Address of socket listen.\n");
	printf("         -p <Port-num> : Port Number of socket listen.\n");
	printf("         -h : Print this message and exit.\n\n");
	printf("         swap is the command for entering a swap entry with ld value zero in sram and it should be followed by  \n\n");
	printf("            1: Destination port number\n");
	printf("            2: SRAM entry number\n");
	printf("            3: BRAM Mac entry number and\n");
	printf("            4: Next mpls label\n\n");
        printf("         push is the command for entering a push entry with ld value zero in sram and it should be followed by  \n\n");
	printf("            1: Destination port number\n");
	printf("            2: SRAM entry number\n");
	printf("            3: BRAM Mac entry number and\n");
	printf("            4: push label\n\n");
        printf("         pop is the command for entering a pop entry with ld value zero in sram and it should be followed by  \n\n");
	printf("            1: Destination port number\n");
	printf("            2: SRAM entry number\n");
	printf("            3: BRAM Mac entry number \n\n");
        printf("         spush is the command for entering a swap+push entry with ld value zero in sram and it should be followed by  \n\n");
	printf("            1: Destination port number\n");
	printf("            2: SRAM entry number\n");
	printf("            3: BRAM Mac entry number \n");
	printf("            4: Next mpls label\n");
        printf("            5: push label\n\n");
        printf("         pswap is the command for entering a pop+swap entry with ld value zero in sram and it should be followed by  \n\n");
	printf("            1: Destination port number\n");
	printf("            2: SRAM entry number\n");
	printf("            3: BRAM Mac entry number\n");
	printf("            4: Next mpls label\n\n");
        printf("         ld is the command for entering an entry with a nonzero ld value in sram and it should be followed by  \n\n");
	printf("            1: ld value\n");
	printf("            2: SRAM entry number\n");
	printf("            3: Distribution offset\n\n");
	printf("         mac_out is the command for entering a mac entry in bram and it should be followed by  \n\n");
	printf("            1: mac address without colon or space in between\n");
	printf("            2: BRAM entry number\n\n");
        printf("         lsld_init is the command for entering label space, ld space and pkt counter base and bound and it should be followed by  \n\n");
	printf("            1: Label space 1 base address\n");
	printf("            2: Label space 1 bound (number of entries)\n");
        printf("            3: Label space 2 base address\n");
	printf("            4: Label space 2 bound (number of entries)\n");
        printf("            5: Label space 3 base address\n");
	printf("            6: Label space 3 bound (number of entries)\n");
        printf("            7: Label space 4 base address\n");
	printf("            8: Label space 4 bound (number of entries)\n");
        printf("            9: Ld space base address\n");
	printf("            10: Ld space bound (number of entries)\n");
        printf("            11: packet counter space base address\n");
	printf("            12: Packet byte counter space base address\n\n");
         printf("         mac0_add, mac1_add, mac2_add, mac3_add are the commands for entering mac addresses of corresponding mac ports and these should be followed by  \n\n");
	printf("            1: mac address without colon or space in between\n\n");
        printf("         lsr_init is the command for initializing label space registers, ld space registers and error count registers \n\n");
	
	
}
