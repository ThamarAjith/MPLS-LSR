#!/usr/local/bin/perl -w
# make_pkts.pl
#

use NF::PacketGen;
use NF::PacketLib;
nf_set_environment( { PORT_MODE => 'PHYSICAL', MAX_PORTS => 4 } );

use SimLib;

use reg_defines_mpls_switch;

$delay = '@4us';
my $batch = 00;


# use strict AFTER the $delay, $batch and %reg are declared
use strict;
use vars qw($delay $batch %reg);

# Prepare the DMA and enable interrupts
prepare_DMA('@3.9us');
enable_interrupts(00);



nf_PCI_write32($delay, $batch, BRAM_REG_ACCESS_BASE_ADDR ()+ 0x15c, 0x11111111);
nf_PCI_write32($delay, $batch, BRAM_REG_ACCESS_BASE_ADDR ()+ 0x158, 0x2222);
nf_PCI_write32($delay, $batch, BRAM_REG_ACCESS_BASE_ADDR ()+ 0x154, 0x34ce);
nf_PCI_write32($delay, $batch, BRAM_REG_ACCESS_BASE_ADDR ()+ 0x150, 0xffffffff);

nf_PCI_write32($delay, $batch, BRAM_REG_ACCESS_BASE_ADDR ()+ 0x16c, 0x33333333);
nf_PCI_write32($delay, $batch, BRAM_REG_ACCESS_BASE_ADDR ()+ 0x168, 0x4444);
nf_PCI_write32($delay, $batch, BRAM_REG_ACCESS_BASE_ADDR ()+ 0x164, 0x34ce);
nf_PCI_write32($delay, $batch, BRAM_REG_ACCESS_BASE_ADDR ()+ 0x160, 0xffffffff);

nf_PCI_write32($delay, $batch, SWITCH_OP_LUT_SOFT_OFFSET_REG (), 0xfff0bdc0);
nf_PCI_write32($delay, $batch, SWITCH_OP_LUT_LS1_BASE_REG (), 0x00000000);
nf_PCI_write32($delay, $batch, SWITCH_OP_LUT_LS1_BOUND_REG (), 0x0002aaaa);
nf_PCI_write32($delay, $batch, SWITCH_OP_LUT_LD_BASE_REG (), 0x00000000);
nf_PCI_write32($delay, $batch, SWITCH_OP_LUT_LD_BOUND_REG (), 0x0002aaaa);


nf_PCI_read32($delay, $batch, BRAM_REG_ACCESS_BASE_ADDR ()+ 0x15c, 0x11111111);
nf_PCI_read32($delay, $batch, BRAM_REG_ACCESS_BASE_ADDR ()+ 0x158, 0x00002222);
nf_PCI_read32($delay, $batch, BRAM_REG_ACCESS_BASE_ADDR ()+ 0x16c, 0x33333333);
nf_PCI_read32($delay, $batch, BRAM_REG_ACCESS_BASE_ADDR ()+ 0x168, 0x00004444);

nf_PCI_read32($delay, $batch, SWITCH_OP_LUT_SOFT_OFFSET_REG (), 0x0010bdc0);
nf_PCI_read32($delay, $batch, SWITCH_OP_LUT_LS1_BASE_REG (), 0x00000000);
nf_PCI_read32($delay, $batch, SWITCH_OP_LUT_LS1_BOUND_REG (), 0x0002aaaa);
nf_PCI_read32($delay, $batch, SWITCH_OP_LUT_LD_BASE_REG (), 0x00000000);
nf_PCI_read32($delay, $batch, SWITCH_OP_LUT_LD_BOUND_REG (), 0x0002aaaa);


#package Net::Pcap;
#use Net::Pcap;


my $length = 100;
my $DA_sub = ':dd:dd:dd:dd:dd';
my $SA_sub = ':55:55:55:55:55';
my $DA;
my $SA;
my $pkt;
my $in_port;
my $out_port;
my $i = 00;
my $temp;
my $zero;
my @seq;
my $handle;
my $user_data;
my $err;
my $pkt_full;
my $hex;
my $cnt;
my $ts;
my $last_ts;

$cnt=0;

# send and receive 3 pkts into each port, should appear after DMA
my $delay = '@45us';
#$length = 198;
$length=198;
$zero="00";
$in_port=1;



#$handle=Net::Pcap::pcap_open_offline("/home/ajith/netfpga/projects/mpls_switch/pcap_files/preswap.cap", \$err) or die "Can't open";
#pcap_loop($handle,1250,\&pr,$user_data);


	
  #NF::PacketLib::nf_packet_in($in_port, $length, $delay, $batch,  $pkt);
  #nf_dma_data_in($length,00,1,$pkt);
  #cpu_rxfifo_rd_pkt($in_port, $length, 00, $pkt);
 # PCI_create_and_send_pkt($in_port, $length);

# check counter values
$delay='@320us';

# *********** Finishing Up - need this in all scripts ! ****************************
my $t = NF::PacketGen::nf_write_sim_files();
print  "--- make_pkts.pl: Generated all configuration packets.\n";
printf "--- make_pkts.pl: Last packet enters system at approx %00d microseconds.\n",($t/1000);
if (NF::PacketGen::nf_write_expected_files()) {
  die "Unable to write expected files\n";
}


NF::PacketGen::nf_create_hardware_file('LITTLE_ENDIAN');
NF::PacketGen::nf_write_hardware_file('LITTLE_ENDIAN');




