Label Switch Router (LSR) for NetFPGA

Developed by Algo-Logic Systems for Google
 Copyright 2011, all rights reserved
 http://Algo-Logic.com
Code distributed through Apache 2.0 software license
 Last Update: June 15, 2011 

To use the LSR NetFPGA Switch, 

(1) Starting at the top-level of a NetFPGA base distribution
    (typically: /home/user/netfpga), extract tarball file to
    populate lib and project/mpls-switch sub-directories.
       eg: 
         cd ~/netfpga 
         tar xvf lsr-netFPGA.tar  

(2) Download the LSR bitfile to the netfpga
      nf_download ./bitfiles/mpls_switch.bit

(3) Compile the mpls control and configuration software
      cd ./projects/mpls_switch/sw
      ./make

(4) Run the command-line program to initialize LSR switch
      ./lsr lsr_init
    Will initialize tables with default values. 

(5) For testing, 
    * connect eth1 (NIC) to nf2c0 (Port 0 of NetFPGA) with short cat5e cable,
    * connect eth2 (NIC) to nf2c1 (Port 1 of NetFPGA) with short cat5e cable,
    * run wireshark on eth2 to monitor output packets
    * and run command like:
       cd /../pcap_files
       tcpreplay intf1=eth1 preswap.cap 
     to verify operation of lsr switch with sample packets

(6) To add entries to SRAM to perform specfic 
      swap, pop, push, swap+push, and pop+swap operations,
      use the command syntax documented by running 
       ./lsr 

