#!/bin/bash
MPLS_DIR=/home/ajith/netfpga/projects/mpls_switch/sw
REGREAD_DIR=/home/ajith/netfpga/lib/C/reg_access
BASE=0x200200C

for i in {0..25}
do
    CMD="$(printf "mac_out %.12X %d" $i $i)"
    $MPLS_DIR/lsr $CMD
    sleep 0.5
done
for i in {0..25}
do
    let k=$i
    let "k<<=4"
#    printf "offset %.12X \n" $k
    OFFSET2=0x200200c
    OFFSET3=0x2002008
#    printf "offset2 %.12X \n" $OFFSET2
#    printf "offset3 %.12X \n" $OFFSET3
    let LOCATION=$k+$OFFSET2
    let LOCATION2=$k+$OFFSET3
    $REGREAD_DIR/regread $LOCATION
    $REGREAD_DIR/regread $LOCATION2
    sleep 0.5
done

