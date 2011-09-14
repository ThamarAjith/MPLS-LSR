#!/usr/bin/perl -w
# vim:set shiftwidth=3 softtabstop=3 expandtab:
# $id:$

# Perl equivalent of the C regread function

use strict;
use NF::RegAccess;
use Getopt::Long;
use Time::HiRes qw (sleep);


my $iface = 'nf2c0';   		# Default device

# Write address of LS1 base register here for reading the content 
   my $addr1 = 0x2000120;

# Write address of LS1 bound register here for reading the content 
   my $addr2 = 0x2000124;

# Write address of Packet counter base register here for reading the content 
   my $addr3 = 0x2000148;

# Write address of Packet byte counter base register here for reading the content 
   my $addr4 = 0x200014c;

# Write address of Software offset register here for reading the content 
   my $addr5= 0x2000150;

# Write address of MAC0_HI_REG register here for reading the content 
   my $addr6= 0x2000100;

# Write address of MAC0_LO_REG register here for reading the content 
   my $addr7= 0x2000104;

# Write address of BRAM_REG register here for reading the content 
   my $addr8= 0x200203c;

# Write address of BRAM_REG register here for reading the content 
   my $addr9= 0x2002038;

# Write address of SAM_REG register here for reading the content 
   my $addr10= 0x100000c;

# Write address of SAM_REG register here for reading the content 
   my $addr11= 0x1000008;

# Write address of SAM_REG register here for reading the content 
   my $addr12= 0x1000004;

# Write address of SAM_REG register here for reading the content 
   my $addr13= 0x122220c;

# Write address of SAM_REG register here for reading the content 
   my $addr14= 0x1222208;

# Write address of SAM_REG register here for reading the content 
   my $addr15= 0x1222204;

# Write address of SAM_REG register here for reading the content 
   my $addr16= 0x122221c;

# Write address of SAM_REG register here for reading the content 
   my $addr17= 0x1222218;

# Write address of SAM_REG register here for reading the content 
   my $addr18= 0x1222214;

# Write address of SAM_REG register here for reading the content 
   my $addr19= 0x122222c;

# Write address of SAM_REG register here for reading the content 
   my $addr20= 0x1222228;

# Write address of SAM_REG register here for reading the content 
   my $addr21= 0x1222224;

# Write address of SAM_REG register here for reading the content 
   my $addr22= 0x122223c;

# Write address of SAM_REG register here for reading the content 
   my $addr23= 0x1222238;

# Write address of SAM_REG register here for reading the content 
   my $addr24= 0x1222234;

# Write address of NOT_FOR_US_REG  register here for reading the content 
   my $addr25= 0x2000154;

# Write address of PARITY_ERROR_REG register here for reading the content 
   my $addr26= 0x2000158;

# Write address of TTL_ERROR_REG  register here for reading the content 
   my $addr27= 0x200015c;

# Write address of LS_ERROR_REG register here for reading the content 
   my $addr28= 0x2000160;

# Write address of LD_ERROR_REG register here for reading the content 
   my $addr29= 0x2000164;

# Write address of SAM_REG register here for reading the content 
   my $addr30= 0x12aaabc;

# Write address of SAM_REG register here for reading the content 
   my $addr31= 0x12aaab8;

# Write address of SAM_REG register here for reading the content 
   my $addr32= 0x155555c;

# Write address of SAM_REG register here for reading the content 
   my $addr33= 0x1555558;


   # Perform the read
  my $val1 = nf_regread($iface, $addr1);
sleep (0.1);
  my $val2 = nf_regread($iface, $addr2);
sleep (0.1);
   my $val3 = nf_regread($iface, $addr3);
sleep (0.1);
  my $val4 = nf_regread($iface, $addr4);
sleep (0.1);
  my $val5 = nf_regread($iface, $addr5);
sleep (0.1);
   my $val6= nf_regread($iface, $addr6);
sleep (0.1);
  my $val7 = nf_regread($iface, $addr7);
sleep (0.1);
  my $val8 = nf_regread($iface, $addr8);
sleep (0.1);
   my $val9 = nf_regread($iface, $addr9);
sleep (0.1);
  my $val10= nf_regread($iface, $addr10);
sleep (0.1);
  my $val11= nf_regread($iface, $addr11);
sleep (0.1);
  my $val12 = nf_regread($iface, $addr12);
sleep (0.1);
   my $val13 = nf_regread($iface, $addr13);
sleep (0.1);
  my $val14= nf_regread($iface, $addr14);
sleep (0.1);
  my $val15 = nf_regread($iface, $addr15);
sleep (0.1);
   my $val16= nf_regread($iface, $addr16);
sleep (0.1);
  my $val17 = nf_regread($iface, $addr17);
sleep (0.1);
  my $val18 = nf_regread($iface, $addr18);
sleep (0.1);
   my $val19 = nf_regread($iface, $addr19);
sleep (0.1);
  my $val20= nf_regread($iface, $addr20);
sleep (0.1);
  my $val21= nf_regread($iface, $addr21);
sleep (0.1);
  my $val22= nf_regread($iface, $addr22);
sleep (0.1);
  my $val23= nf_regread($iface, $addr23);
sleep (0.1);
  my $val24= nf_regread($iface, $addr24);

sleep (0.1);
  my $val25= nf_regread($iface, $addr25);
sleep (0.1);
  my $val26= nf_regread($iface, $addr26);
sleep (0.1);
  my $val27= nf_regread($iface, $addr27);
sleep (0.1);
  my $val28= nf_regread($iface, $addr28);
sleep (0.1);
  my $val29= nf_regread($iface, $addr29);

sleep (0.1);
  my $val30= nf_regread($iface, $addr30);
sleep (0.1);
  my $val31= nf_regread($iface, $addr31);
sleep (0.1);
  my $val32= nf_regread($iface, $addr32);
sleep (0.1);
  my $val33= nf_regread($iface, $addr33);

sleep (0.1);
  printf("LS1 base register 0x%08x (%u):   0x%08x (%u)\n", $addr1, $addr1, $val1, $val1);
sleep (0.1);
 printf("LS1 bound register 0x%08x (%u):   0x%08x (%u)\n", $addr2, $addr2, $val2, $val2);
sleep (0.1);
   printf("Packet counter base register 0x%08x (%u):   0x%08x (%u)\n", $addr3, $addr3, $val3, $val3);
sleep (0.1);
  printf("Packet byte counter base register 0x%08x (%u):   0x%08x (%u)\n", $addr4, $addr4, $val4, $val4);

sleep (0.1);
  printf("Software offset register 0x%08x (%u):   0x%08x (%u)\n", $addr5, $addr5, $val5, $val5);
sleep (0.1);
 printf("MAC0_HI_REG 0x%08x (%u):   0x%08x (%u)\n", $addr6, $addr6, $val6, $val6);
sleep (0.1);
   printf("MAC0_LO_REG 0x%08x (%u):   0x%08x (%u)\n", $addr7, $addr7, $val7, $val7);
sleep (0.1);
  printf("BRAM_REG 0x%08x (%u):   0x%08x (%u)\n", $addr8, $addr8, $val8, $val8);

sleep (0.1);
  printf("BRAM_REG 0x%08x (%u):   0x%08x (%u)\n", $addr9, $addr9, $val9, $val9);
sleep (0.1);
 printf("SAM_REG MPLS word(31:0) 0x%08x (%u):   0x%08x (%u)\n", $addr10, $addr10, $val10, $val10);
sleep (0.1);
   printf("SAM_REG MPLS word(63:32) 0x%08x (%u):   0x%08x (%u)\n", $addr11, $addr11, $val11, $val11);
sleep (0.1);
  printf("SAM_REG MPLS word(71:64) 0x%08x (%u):   0x%08x (%u)\n", $addr12, $addr12, $val12, $val12);

sleep (0.1);
  printf("SAM_REG LD(0) MPLS word(31:0) 0x%08x (%u):   0x%08x (%u)\n", $addr13, $addr13, $val13, $val13);
sleep (0.1);
 printf("SAM_REG LD(0) MPLS word(63:32) 0x%08x (%u):   0x%08x (%u)\n", $addr14, $addr14, $val14, $val14);
sleep (0.1);
   printf("SAM_REG LD(0) MPLS word(71:64) 0x%08x (%u):   0x%08x (%u)\n", $addr15, $addr15, $val15, $val15);
sleep (0.1);
  printf("SAM_REG LD(1) MPLS word(31:0) 0x%08x (%u):   0x%08x (%u)\n", $addr16, $addr16, $val16, $val16);

sleep (0.1);
  printf("SAM_REG LD(1) MPLS word(63:32) 0x%08x (%u):   0x%08x (%u)\n", $addr17, $addr17, $val17, $val17);
sleep (0.1);
 printf("SAM_REG LD(1) MPLS word(71:64) 0x%08x (%u):   0x%08x (%u)\n", $addr18, $addr18, $val18, $val18);
sleep (0.1);
   printf("SAM_REG LD(2) MPLS word(31:0) 0x%08x (%u):   0x%08x (%u)\n", $addr19, $addr19, $val19, $val19);
sleep (0.1);
  printf("SAM_REG LD(2) MPLS word(63:32) 0x%08x (%u):   0x%08x (%u)\n", $addr20, $addr20, $val20, $val20);

sleep (0.1);
  printf("SAM_REG LD(2) MPLS word(71:64) 0x%08x (%u):   0x%08x (%u)\n", $addr21, $addr21, $val21, $val21);
sleep (0.1);
 printf("SAM_REG LD(3) MPLS word(31:0) 0x%08x (%u):   0x%08x (%u)\n", $addr22, $addr22, $val22, $val22);
sleep (0.1);
   printf("SAM_REG LD(3) MPLS word(63:32) 0x%08x (%u):   0x%08x (%u)\n", $addr23, $addr23, $val23, $val23);
sleep (0.1);
  printf("SAM_REG LD(3) MPLS word(71:64) 0x%08x (%u):   0x%08x (%u)\n", $addr24, $addr24, $val24, $val24);

sleep (0.1);
  printf("NOT_FOR_US_REG register  0x%08x (%u):   0x%08x (%u)\n", $addr25, $addr25, $val25, $val25);

sleep (0.1);
  printf("PARITY_ERROR_REG register 0x%08x (%u):   0x%08x (%u)\n", $addr26, $addr26, $val26, $val26);
sleep (0.1);
 printf("TTL_ERROR_REG  register 0x%08x (%u):   0x%08x (%u)\n", $addr27, $addr27, $val27, $val27);
sleep (0.1);
   printf("LS_ERROR_REG register 0x%08x (%u):   0x%08x (%u)\n", $addr28, $addr28, $val28, $val28);
sleep (0.1);
  printf("LD_ERROR_REG register 0x%08x (%u):   0x%08x (%u)\n", $addr29, $addr29, $val29, $val29);

sleep (0.1);
  printf("SAM_REG Packet Count(31:8), Parity(7:0) 0x%08x (%u):   0x%08x (%u)\n", $addr30, $addr30, $val30, $val30);
sleep (0.1);
 printf("SAM_REG Packet count(63:32) 0x%08x (%u):   0x%08x (%u)\n", $addr31, $addr31, $val31, $val31);
sleep (0.1);
   printf("SAM_REG Packet Byte Count(31:8), Parity(7:0)  0x%08x (%u):   0x%08x (%u)\n", $addr32, $addr32, $val32, $val32);
sleep (0.1);
  printf("SAM_REG Packet Byte Count(63:32) 0x%08x (%u):   0x%08x (%u)\n", $addr33, $addr33, $val33, $val33);



exit (0);
