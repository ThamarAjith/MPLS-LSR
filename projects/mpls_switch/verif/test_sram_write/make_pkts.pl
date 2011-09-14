#!/usr/local/bin/perl -w
# make_pkts.pl
#

use NF::PacketGen;
use NF::PacketLib;
use SimLib;

use reg_defines_mpls_switch;

$delay = '@6us';
$batch = 0;
nf_set_environment( { PORT_MODE => 'PHYSICAL', MAX_PORTS => 4 } );

# use strict AFTER the $delay, $batch and %reg are declared
use strict;
use vars qw($delay $batch %reg);

# Prepare the DMA and enable interrupts
prepare_DMA('@3.9us');
enable_interrupts(0);

# read and write some data to PHY using MDIO regs
nf_PCI_write32($delay, $batch, SRAM_BASE_ADDR ()+ 0xc, 0xabcd);
nf_PCI_write32($delay, $batch, SRAM_BASE_ADDR ()+ 0x8, 0xab12);
nf_PCI_write32($delay, $batch, SRAM_BASE_ADDR ()+ 0x4, 0x34ce);
nf_PCI_write32($delay, $batch, SRAM_BASE_ADDR (), 0xffffffff);

nf_PCI_write32($delay, $batch, SRAM_BASE_ADDR ()+ 0x3c, 0xcd12);
nf_PCI_write32($delay, $batch, SRAM_BASE_ADDR ()+ 0x38, 0xef34);
nf_PCI_write32($delay, $batch, SRAM_BASE_ADDR ()+ 0x34, 0xaa56);
nf_PCI_write32($delay, $batch, SRAM_BASE_ADDR ()+ 0x30, 0xffffffff);

nf_PCI_read32($delay, $batch, SRAM_BASE_ADDR ()+ 0xc, 0x0000abcd);
nf_PCI_read32($delay, $batch, SRAM_BASE_ADDR ()+ 0x8, 0x0000ab12);
nf_PCI_read32($delay, $batch, SRAM_BASE_ADDR ()+ 0x4, 0x000000ce);

nf_PCI_read32($delay, $batch, SRAM_BASE_ADDR ()+ 0x3c, 0x0000cd12);
nf_PCI_read32($delay, $batch, SRAM_BASE_ADDR ()+ 0x38, 0x0000ef34);
nf_PCI_read32($delay, $batch, SRAM_BASE_ADDR ()+ 0x34, 0x00000056);

nf_PCI_write32($delay, $batch, BRAM_REG_ACCESS_BASE_ADDR ()+ 0xc, 0x1234abcd);
nf_PCI_write32($delay, $batch, BRAM_REG_ACCESS_BASE_ADDR ()+ 0x8, 0x5678ab12);
nf_PCI_write32($delay, $batch, BRAM_REG_ACCESS_BASE_ADDR ()+ 0x4, 0x34ce);
nf_PCI_write32($delay, $batch, BRAM_REG_ACCESS_BASE_ADDR (), 0xffffffff);

nf_PCI_write32($delay, $batch, BRAM_REG_ACCESS_BASE_ADDR ()+ 0x5c, 0x9876abcd);
nf_PCI_write32($delay, $batch, BRAM_REG_ACCESS_BASE_ADDR ()+ 0x58, 0x3456ab12);
nf_PCI_write32($delay, $batch, BRAM_REG_ACCESS_BASE_ADDR ()+ 0x54, 0x34ce);
nf_PCI_write32($delay, $batch, BRAM_REG_ACCESS_BASE_ADDR ()+ 0x50, 0xffffffff);

nf_PCI_read32($delay, $batch, BRAM_REG_ACCESS_BASE_ADDR ()+ 0xc, 0x1234abcd);
nf_PCI_read32($delay, $batch, BRAM_REG_ACCESS_BASE_ADDR ()+ 0x8, 0x0000ab12);

nf_PCI_read32($delay, $batch, BRAM_REG_ACCESS_BASE_ADDR ()+ 0x5c, 0x9876abcd);
nf_PCI_read32($delay, $batch, BRAM_REG_ACCESS_BASE_ADDR ()+ 0x58, 0x0000ab12);





# *********** Finishing Up - need this in all scripts ! ****************************
my $t = nf_write_sim_files();
print  "--- make_pkts.pl: Generated all configuration packets.\n";
printf "--- make_pkts.pl: Last packet enters system at approx %0d microseconds.\n",($t/1000);
if (nf_write_expected_files()) {
  die "Unable to write expected files\n";
}

nf_create_hardware_file('LITTLE_ENDIAN');
nf_write_hardware_file('LITTLE_ENDIAN');
