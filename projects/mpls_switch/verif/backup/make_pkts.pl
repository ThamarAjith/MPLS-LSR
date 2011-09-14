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

# read and write some data to PHY using MDIO regs
##nf_PCI_write32($delay, $batch, SRAM_BASE_ADDR ()+ 0xc, 0xf00000E4);   # cmd=swap,pop, LD offset = 0
 nf_PCI_write32($delay, $batch, SRAM_BASE_ADDR ()+ 0xc, 0xf00000D4);   # cmd=push, LD = 0
## nf_PCI_write32($delay, $batch, SRAM_BASE_ADDR ()+ 0xc, 0xc0003040);   #cmd=pop-swap, LD offset = 0
##nf_PCI_write32($delay, $batch, SRAM_BASE_ADDR ()+ 0xc, 0xc88880c5);   # cmd=pop-swap, LD offset = 4
nf_PCI_write32($delay, $batch, SRAM_BASE_ADDR ()+ 0x8, 0x080c0000);
##nf_PCI_write32($delay, $batch, SRAM_BASE_ADDR ()+ 0x4, 0x00000010);    # cmd=swap, LD offset = 0
nf_PCI_write32($delay, $batch, SRAM_BASE_ADDR ()+ 0x4, 0x00000020);    # cmd=push, LD offset = 0
# nf_PCI_write32($delay, $batch, SRAM_BASE_ADDR ()+ 0x4, 0x00000040);    # cmd=pop one, LD offset = 0
# nf_PCI_write32($delay, $batch, SRAM_BASE_ADDR ()+ 0x4, 0x00000050);    # cmd=pop-swap, LD offset = 0
#nf_PCI_write32($delay, $batch, SRAM_BASE_ADDR ()+ 0x4, 0x00000054);      # cmd=pop-swap, LD offset = 4
nf_PCI_write32($delay, $batch, SRAM_BASE_ADDR (), 0xffffffff);

nf_PCI_write32($delay, $batch, SRAM_BASE_ADDR ()+ 0x2aaabc, 0x0000);
nf_PCI_write32($delay, $batch, SRAM_BASE_ADDR ()+ 0x2aaab8, 0x0000);
nf_PCI_write32($delay, $batch, SRAM_BASE_ADDR ()+ 0x2aaab4, 0x0000);
nf_PCI_write32($delay, $batch, SRAM_BASE_ADDR ()+ 0x2aaab0, 0xffffffff);

nf_PCI_write32($delay, $batch, SRAM_BASE_ADDR ()+ 0x55555c, 0x0000);
nf_PCI_write32($delay, $batch, SRAM_BASE_ADDR ()+ 0x555558, 0x0000);
nf_PCI_write32($delay, $batch, SRAM_BASE_ADDR ()+ 0x555554, 0x0000);
nf_PCI_write32($delay, $batch, SRAM_BASE_ADDR ()+ 0x555550, 0xffffffff);



nf_PCI_write32($delay, $batch, SWITCH_OP_LUT_MAC0_HI_REG (), 0x00000090);
nf_PCI_write32($delay, $batch, SWITCH_OP_LUT_MAC0_LO_REG (), 0x69b1d07e);

nf_PCI_write32($delay, $batch, SWITCH_OP_LUT_SOFT_OFFSET_REG (), 0xfff0bdc0);
nf_PCI_write32($delay, $batch, SWITCH_OP_LUT_LS1_BASE_REG (), 0x00000000);
nf_PCI_write32($delay, $batch, SWITCH_OP_LUT_LS1_BOUND_REG (), 0x0002aaaa);
nf_PCI_write32($delay, $batch, SWITCH_OP_LUT_LD_BASE_REG (), 0x00000000);
nf_PCI_write32($delay, $batch, SWITCH_OP_LUT_LD_BOUND_REG (), 0x0002aaaa);



nf_PCI_write32($delay, $batch, BRAM_REG_ACCESS_BASE_ADDR ()+ 0x3c, 0x9876abcd);
nf_PCI_write32($delay, $batch, BRAM_REG_ACCESS_BASE_ADDR ()+ 0x38, 0x3456ab12);
nf_PCI_write32($delay, $batch, BRAM_REG_ACCESS_BASE_ADDR ()+ 0x34, 0x34ce);
nf_PCI_write32($delay, $batch, BRAM_REG_ACCESS_BASE_ADDR ()+ 0x30, 0xffffffff);

nf_PCI_write32($delay, $batch, SWITCH_OP_LUT_COUNTER1_BASE_REG (), 0x0002aaab);
nf_PCI_write32($delay, $batch, SWITCH_OP_LUT_COUNTER2_BASE_REG (), 0x00055555);




package Net::Pcap;
use Net::Pcap;


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



$handle=Net::Pcap::pcap_open_offline("/home/ajith/netfpga/projects/mpls_switch/pcap_files/preswap.cap", \$err) or die "Can't open";
pcap_loop($handle,1250,\&pr,$user_data);


	
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



sub pr{
	my($user_data, $header, $packet)=@_;
	$pkt_full ="";
	$hex=unpack('H*',$packet);
	my $len = length($hex);
	my $start = 0;
	$length=$header->{'caplen'};
	$last_ts=$ts;
	$ts=$header->{'tv_usec'};
	#if($cnt==0)
	#{
#		$delay=0;
#	}
#	else
#	{	if($ts-$last_ts > 0){
#		$delay=$ts-$last_ts."us";}
#		else
#		{
#			$delay=0;
#		}
#	}
	
	
	$cnt=$cnt+1;
	while ($start < $len) {
	$pkt=sprintf("%s ", substr($hex,$start,2));
	$pkt_full=$pkt_full.$pkt;
	$start += 2;}
	
	NF2::PacketGen::nf_packet_in($in_port, $length, $delay, $batch,  $pkt_full);
	print $delay;
	print "\n";
	#NF2::PacketLib::cpu_rxfifo_rd_pkt($in_port, $length, 0, $pkt);
	
}
