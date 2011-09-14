#!/usr/bin/perl -w
# vim:set shiftwidth=3 softtabstop=3 expandtab:
# $id:$

# Perl equivalent of the C regwrite function

use strict;
use NF::RegAccess;
use Getopt::Long;
use Time::HiRes qw (sleep);

# Parse the command line arguments
   my $iface = 'nf2c0';   		# Default device

# Write address and content of LS1 base register here 
   my $addr1 = 0x2000120;
   my $val1 = 0x00000000;

# Write address and content of LS1 bound register here 
   my $addr2 = 0x2000124;
   my $val2 = 0x0002aaaa;


# Write address and content of Packet counter base register here 
   my $addr3 = 0x2000148;
   my $val3 = 0x0002aaab;

# Write address and content of Packet byte counter base register here 
   my $addr4 = 0x200014c;
   my $val4 = 0x00055555;

# Write address and content of Software offset register here 
   my $addr5 = 0x2000150;
   my $val5 = 0xfff0bdc0;

# Write address and content of MAC0_HI_REG register here 
   my $addr6 = 0x2000100;
   my $val6 = 0x00000090;

# Write address and content of MAC0_LO_REG register here 
   my $addr7 = 0x2000104;
   my $val7 = 0x69b1d07e;

# Write address and content of BRAM_REG register here 
   my $addr8 = 0x200203c;
   my $val8 = 0xa9278bd2;

# Write address and content of BRAM_REG register here 
   my $addr9 = 0x2002038;
   my $val9 = 0x00000013;

# Write address and content of BRAM_REG register here 
   my $addr10 = 0x2002034;
   my $val10 = 0x9876abcd;

# Write address and content of BRAM_REG register here 
   my $addr11 = 0x2002030;
   my $val11 = 0xffffffff;

# Write address and content of SRAM_REG register here 
   my $addr12 = 0x100000c;
   my $val12 = 0xf00000c0;

# Write address and content of SRAM_REG register here 
   my $addr13 = 0x1000008;
   my $val13 = 0x080c0000;

# Write address and content of SRAM_REG register here 
   my $addr14 = 0x1000004;
   my $val14 = 0x00000040;

# Write address and content of SRAM_REG register here - First MPLS Word 
   my $addr15 = 0x1000000;
   my $val15 = 0xffffffff;

# Write address and content of SRAM_REG register here-init Counter 1 (packet count)
   my $addr16 = 0x12aaabc;
   my $val16 = 0x00000007;

# Write address and content of SRAM_REG register here 
   my $addr17 = 0x12aaab8;
   my $val17 = 0x00000000;

# Write address and content of SRAM_REG register here 
   my $addr18 = 0x12aaab4;
   my $val18 = 0x00000000;

# Write address and content of SRAM_REG register here 
   my $addr19 = 0x12aaab0;
   my $val19 = 0xffffffff;

# Write address and content of SRAM_REG register here -init Counter 2 (packet byte count)
   my $addr20 = 0x155555c;
   my $val20 = 0x00000007;

# Write address and content of SRAM_REG register here 
   my $addr21 = 0x1555558;
   my $val21 = 0x00000000;

# Write address and content of SRAM_REG register here 
   my $addr22 = 0x1555554;
   my $val22 = 0x00000000;

# Write address and content of SRAM_REG register here 
   my $addr23 = 0x1555550;
   my $val23 = 0xffffffff;

# Write address and content of SRAM_REG register here -load balancing mpls entry
   my $addr24 = 0x122220c; # address = 0x122220, 32 bit LSB of 72 bit MPLS word at 0xc
   my $val24 = 0xc0003040; # Parity check=40; Push Label=3 (N/A); Next Label=N/A

# Write address and content of SRAM_REG register here 
   my $addr25 = 0x1222208;
   my $val25 = 0x080c0000; # Dest Port=2 ; Dest MAC=3 (3rd entry in BRAM)

# Write address and content of SRAM_REG register here 
   my $addr26 = 0x1222204;
   my $val26 = 0x00000050; # cmd=5 (Pop_Swap); Load Balance=0 (None); 

# Write address and content of SRAM_REG register here 
   my $addr27 = 0x1222200; # Commit to hardware
   my $val27 = 0xffffffff;

# Write address and content of SRAM_REG register here 
   my $addr28 = 0x122221c; # 2nd entry for load distribution ; Same MPLS word
   my $val28 = 0xc0003040;

# Write address and content of SRAM_REG register here 
   my $addr29 = 0x1222218;
   my $val29 = 0x080c0010; # Dest Port=2; Dest MAC=3 (3rd entry in BRAM)

# Write address and content of SRAM_REG register here 
   my $addr30 = 0x1222214;
   my $val30 = 0x00000050;

# Write address and content of SRAM_REG register here 
   my $addr31 = 0x1222210;
   my $val31 = 0xffffffff;

# Write address and content of SRAM_REG register here 
   my $addr32 = 0x122222c;
   my $val32 = 0xc0003040;

# Write address and content of SRAM_REG register here 
   my $addr33 = 0x1222228;
   my $val33 = 0x080c0000;

# Write address and content of SRAM_REG register here 
   my $addr34 = 0x1222224;
   my $val34 = 0x00000050;

# Write address and content of SRAM_REG register here 
   my $addr35 = 0x1222220;
   my $val35 = 0xffffffff;

# Write address and content of SRAM_REG register here 
   my $addr36 = 0x122223c;
   my $val36 = 0xc0003040;

# Write address and content of SRAM_REG register here 
   my $addr37 = 0x1222238;
   my $val37 = 0x080c0000;

# Write address and content of SRAM_REG register here 
   my $addr38 = 0x1222234;
   my $val38 = 0x00000050;

# Write address and content of SRAM_REG register here 
   my $addr39 = 0x1222230;
   my $val39 = 0xffffffff;

# Write address and content of SRAM_REG register here 
   my $addr40 = 0x14cccbc;
   my $val40 = 0x00000000; # Packet Counter for LD-0 (of four)= 00

# Write address and content of SRAM_REG register here 
   my $addr41 = 0x14cccb8;
   my $val41 = 0x00000000;

# Write address and content of SRAM_REG register here 
   my $addr42 = 0x14cccb4;
   my $val42 = 0x00000000;

# Write address and content of SRAM_REG register here 
   my $addr43 = 0x14cccb0;
   my $val43 = 0xffffffff; # Commit

# Write address and content of SRAM_REG register here 
   my $addr44 = 0x14ccccc; # Packet Counter for LD-1 (of four)= 00
   my $val44 = 0x00000000;

# Write address and content of SRAM_REG register here 
   my $addr45 = 0x14cccc8;
   my $val45 = 0x00000000;

# Write address and content of SRAM_REG register here 
   my $addr46 = 0x14cccc4;
   my $val46 = 0x00000000;

# Write address and content of SRAM_REG register here 
   my $addr47 = 0x14cccc0;
   my $val47 = 0xffffffff;

# Write address and content of SRAM_REG register here 
   my $addr48 = 0x14cccdc;
   my $val48 = 0x00000000;

# Write address and content of SRAM_REG register here 
   my $addr49 = 0x14cccd8;
   my $val49 = 0x00000000;

# Write address and content of SRAM_REG register here 
   my $addr50 = 0x14cccd4;
   my $val50 = 0x00000000;

# Write address and content of SRAM_REG register here 
   my $addr51 = 0x14cccd0;
   my $val51 = 0xffffffff;

# Write address and content of SRAM_REG register here 
   my $addr52 = 0x14cccec;
   my $val52 = 0x00000000;

# Write address and content of SRAM_REG register here 
   my $addr53 = 0x14ccce8;
   my $val53 = 0x00000000;

# Write address and content of SRAM_REG register here 
   my $addr54 = 0x14ccce4;
   my $val54 = 0x00000000;

# Write address and content of SRAM_REG register here 
   my $addr55 = 0x14ccce0;
   my $val55 = 0xffffffff;

# Write address and content of SRAM_REG register here 
   my $addr56 = 0x177775c;
   my $val56 = 0x00000000;

# Write address and content of SRAM_REG register here 
   my $addr57 = 0x1777758;
   my $val57 = 0x00000000;

# Write address and content of SRAM_REG register here 
   my $addr58 = 0x1777754;
   my $val58 = 0x00000000;

# Write address and content of SRAM_REG register here 
   my $addr59 = 0x1777750;
   my $val59 = 0xffffffff;

# Write address and content of SRAM_REG register here 
   my $addr60 = 0x177776c;
   my $val60 = 0x00000000;

# Write address and content of SRAM_REG register here 
   my $addr61 = 0x1777768;
   my $val61 = 0x00000000;

# Write address and content of SRAM_REG register here 
   my $addr62 = 0x1777764;
   my $val62 = 0x00000000;

# Write address and content of SRAM_REG register here 
   my $addr63 = 0x1777760;
   my $val63 = 0xffffffff;

# Write address and content of SRAM_REG register here 
   my $addr64 = 0x177777c;
   my $val64 = 0x00000000;

# Write address and content of SRAM_REG register here 
   my $addr65 = 0x1777778;
   my $val65 = 0x00000000;

# Write address and content of SRAM_REG register here 
   my $addr66 = 0x1777774;
   my $val66 = 0x00000000;

# Write address and content of SRAM_REG register here 
   my $addr67 = 0x1777770;
   my $val67 = 0xffffffff;

# Write address and content of SRAM_REG register here 
   my $addr68 = 0x177778c;
   my $val68 = 0x00000000;

# Write address and content of SRAM_REG register here 
   my $addr69 = 0x1777788;
   my $val69 = 0x00000000;

# Write address and content of SRAM_REG register here 
   my $addr70 = 0x1777784;
   my $val70 = 0x00000000;

# Write address and content of SRAM_REG register here 
   my $addr71 = 0x1777780;
   my $val71 = 0xffffffff;

# Write address and content of NOT_FOR_US_REG register here 
   my $addr72 = 0x2000154;
   my $val72 = 0x00000000;

# Write address and content of PARITY_ERROR_REG register here 
   my $addr73 = 0x2000158;
   my $val73 = 0x00000000;

# Write address and content of TTL_ERROR_REG register here 
   my $addr74 = 0x200015c;
   my $val74 = 0x00000000;

# Write address and content of LS_ERROR_REG register here 
   my $addr75 = 0x2000160;
   my $val75 = 0x00000000;

# Write address and content of LD_ERROR_REG register here 
   my $addr76 = 0x2000164;
   my $val76 = 0x00000000;

# Write address and content of LS2 base register here 
   my $addr77 = 0x2000128;
   my $val77 = 0x00030000;

# Write address and content of LS2 bound register here 
   my $addr78 = 0x200012c;
   my $val78 = 0x00030001;

# Write address and content of LS3 base register here 
   my $addr79 = 0x2000130;
   my $val79 = 0x00030002;

# Write address and content of LS3 bound register here 
   my $addr80 = 0x2000134;
   my $val80 = 0x00030003;

# Write address and content of LS4 base register here 
   my $addr81 = 0x2000138;
   my $val81 = 0x00030005;

# Write address and content of LS4 bound register here 
   my $addr82 = 0x200013c;
   my $val82 = 0x00030006;

# Write address and content of LD base register here 
   my $addr83 = 0x2000140;
   my $val83 = 0x00030007;

# Write address and content of LD bound register here 
   my $addr84 = 0x2000144;
   my $val84 = 0x00030008;


  
   # Perform the write
   nf_regwrite($iface, $addr1, $val1);
sleep (0.1);
   nf_regwrite($iface, $addr2, $val2);
sleep (0.1);
   nf_regwrite($iface, $addr3, $val3);
sleep (0.1);
   nf_regwrite($iface, $addr4, $val4);
sleep (0.1);
   nf_regwrite($iface, $addr5, $val5);
sleep (0.1);
   nf_regwrite($iface, $addr6, $val6);
sleep (0.1);
   nf_regwrite($iface, $addr7, $val7);
sleep (0.1);
   nf_regwrite($iface, $addr8, $val8);
sleep (0.1);
   nf_regwrite($iface, $addr9, $val9);
sleep (0.1);
   nf_regwrite($iface, $addr10, $val10);
sleep (0.1);
   nf_regwrite($iface, $addr11, $val11);
sleep (0.1);
   nf_regwrite($iface, $addr12, $val12);
sleep (0.1);
   nf_regwrite($iface, $addr13, $val13);
sleep (0.1);
   nf_regwrite($iface, $addr14, $val14);
sleep (0.1);
   nf_regwrite($iface, $addr15, $val15);
sleep (0.1);
   nf_regwrite($iface, $addr16, $val16);
sleep (0.1);
   nf_regwrite($iface, $addr17, $val17);
sleep (0.1);
   nf_regwrite($iface, $addr18, $val18);
sleep (0.1);
   nf_regwrite($iface, $addr19, $val19);
sleep (0.1);
   nf_regwrite($iface, $addr20, $val20);
sleep (0.1);
   nf_regwrite($iface, $addr21, $val21);
sleep (0.1);
   nf_regwrite($iface, $addr22, $val22);
sleep (0.1);
   nf_regwrite($iface, $addr23, $val23);
sleep (0.1);
   nf_regwrite($iface, $addr24, $val24);
sleep (0.1);
   nf_regwrite($iface, $addr25, $val25);
sleep (0.1);
   nf_regwrite($iface, $addr26, $val26);
sleep (0.1);
   nf_regwrite($iface, $addr27, $val27);
sleep (0.1);
   nf_regwrite($iface, $addr28, $val28);
sleep (0.1);
   nf_regwrite($iface, $addr29, $val29);
sleep (0.1);
   nf_regwrite($iface, $addr30, $val30);
sleep (0.1);
   nf_regwrite($iface, $addr31, $val31);
sleep (0.1);
   nf_regwrite($iface, $addr32, $val32);
sleep (0.1);
   nf_regwrite($iface, $addr33, $val33);
sleep (0.1);
   nf_regwrite($iface, $addr34, $val34);
sleep (0.1);
   nf_regwrite($iface, $addr35, $val35);
sleep (0.1);
   nf_regwrite($iface, $addr36, $val36);
sleep (0.1);
   nf_regwrite($iface, $addr37, $val37);
sleep (0.1);
   nf_regwrite($iface, $addr38, $val38);
sleep (0.1);
   nf_regwrite($iface, $addr39, $val39);
sleep (0.1);
   nf_regwrite($iface, $addr40, $val40);
sleep (0.1);
   nf_regwrite($iface, $addr41, $val41);
sleep (0.1);
   nf_regwrite($iface, $addr42, $val42);
sleep (0.1);
   nf_regwrite($iface, $addr43, $val43);
sleep (0.1);
   nf_regwrite($iface, $addr44, $val44);
sleep (0.1);
   nf_regwrite($iface, $addr45, $val45);
sleep (0.1);
   nf_regwrite($iface, $addr46, $val46);
sleep (0.1);
   nf_regwrite($iface, $addr47, $val47);
sleep (0.1);
   nf_regwrite($iface, $addr48, $val48);
sleep (0.1);
   nf_regwrite($iface, $addr49, $val49);
sleep (0.1);
   nf_regwrite($iface, $addr50, $val50);
sleep (0.1);
   nf_regwrite($iface, $addr51, $val51);
sleep (0.1);
   nf_regwrite($iface, $addr52, $val52);
sleep (0.1);
   nf_regwrite($iface, $addr53, $val53);
sleep (0.1);
   nf_regwrite($iface, $addr54, $val54);
sleep (0.1);
   nf_regwrite($iface, $addr55, $val55);
sleep (0.1);
   nf_regwrite($iface, $addr56, $val56);
sleep (0.1);
   nf_regwrite($iface, $addr57, $val57);
sleep (0.1);
   nf_regwrite($iface, $addr58, $val58);
sleep (0.1);
   nf_regwrite($iface, $addr59, $val59);
sleep (0.1);
   nf_regwrite($iface, $addr60, $val60);
sleep (0.1);
   nf_regwrite($iface, $addr61, $val61);
sleep (0.1);
   nf_regwrite($iface, $addr62, $val62);
sleep (0.1);
   nf_regwrite($iface, $addr63, $val63);
sleep (0.1);
   nf_regwrite($iface, $addr64, $val64);
sleep (0.1);
   nf_regwrite($iface, $addr65, $val65);
sleep (0.1);
   nf_regwrite($iface, $addr66, $val66);
sleep (0.1);
   nf_regwrite($iface, $addr67, $val67);
sleep (0.1);
   nf_regwrite($iface, $addr68, $val68);
sleep (0.1);
   nf_regwrite($iface, $addr69, $val69);
sleep (0.1);
   nf_regwrite($iface, $addr70, $val70);
sleep (0.1);
   nf_regwrite($iface, $addr71, $val71);
sleep (0.1);
   nf_regwrite($iface, $addr72, $val72);
sleep (0.1);
   nf_regwrite($iface, $addr73, $val73);
sleep (0.1);
   nf_regwrite($iface, $addr74, $val74);
sleep (0.1);
   nf_regwrite($iface, $addr75, $val75);
sleep (0.1);
   nf_regwrite($iface, $addr76, $val76);

sleep (0.1);
   nf_regwrite($iface, $addr77, $val77);
sleep (0.1);
   nf_regwrite($iface, $addr78, $val78);
sleep (0.1);
   nf_regwrite($iface, $addr79, $val79);
sleep (0.1);
   nf_regwrite($iface, $addr80, $val80);
sleep (0.1);
   nf_regwrite($iface, $addr81, $val81);
sleep (0.1);
   nf_regwrite($iface, $addr82, $val82);
sleep (0.1);
   nf_regwrite($iface, $addr83, $val83);
sleep (0.1);
   nf_regwrite($iface, $addr84, $val84);



#   printf("Write: Reg 0x%08x (%u):   0x%08x (%u)\n", $addr1, $addr1, $val1, $val1);
#   printf("Write: Reg 0x%08x (%u):   0x%08x (%u)\n", $addr2, $addr2, $val2, $val2);
#   printf("Write: Reg 0x%08x (%u):   0x%08x (%u)\n", $addr3, $addr3, $val3, $val3);
#   printf("Write: Reg 0x%08x (%u):   0x%08x (%u)\n", $addr4, $addr4, $val4, $val4);

exit (0);



