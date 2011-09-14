#!/usr/local/bin/perl -w
# make_pkts.pl
#

use NF2::PacketGen;
use NF2::PacketLib;
nf_set_environment( { PORT_MODE => 'PHYSICAL', MAX_PORTS => 4 } );
package Net::Pcap;
use Net::Pcap;
use SimLib;

require reg_defines_mpls_switch;

$delay = '@4us';
$batch = 00;


# use strict AFTER the $delay, $batch and %reg are declared
use strict;
use vars qw($delay $batch %reg);

# Prepare the DMA and enable interrupts
prepare_DMA('@3.9us');
enable_interrupts(00);

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
$delay = '@17us';
#$length = 198;
$length=198;
$zero="00";
$in_port=1;

$handle=Net::Pcap::pcap_open_offline("/home/ajith/netfpga/projects/mpls_switch/pcap_files/preswap.cap", \$err) or die "Can't open";
pcap_loop($handle,1250,\&pr,$user_data);


	
  #NF2::PacketLib::nf_packet_in($in_port, $length, $delay, $batch,  $pkt);
  #nf_dma_data_in($length,00,1,$pkt);
  #cpu_rxfifo_rd_pkt($in_port, $length, 00, $pkt);
 # PCI_create_and_send_pkt($in_port, $length);

# check counter values
$delay='@120us';

# *********** Finishing Up - need this in all scripts ! ****************************
my $t = NF2::PacketGen::nf_write_sim_files();
print  "--- make_pkts.pl: Generated all configuration packets.\n";
printf "--- make_pkts.pl: Last packet enters system at approx %00d microseconds.\n",($t/1000);
if (NF2::PacketGen::nf_write_expected_files()) {
  die "Unable to write expected files\n";
}


NF2::PacketGen::nf_create_hardware_file('LITTLE_ENDIAN');
NF2::PacketGen::nf_write_hardware_file('LITTLE_ENDIAN');




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
