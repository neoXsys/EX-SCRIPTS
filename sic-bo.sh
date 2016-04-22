#!/bin/bash 
#######################################################################
# Game Name::  Sic bo  			                              #
# Author: "Hardik Dalwadi" <hardik.dalwadi@gmail.com>                 #
# Version: 0.1      						      #
# Info: It will generate random 3 dice from 1 to 6		      #
# License: GPLv3  						      #
#######################################################################

### Generating 3 Random numbers from 1 - 6, Resemble DICE ###
DICE_1=$(shuf -i 1-6 -n 1 )
DICE_2=$(shuf -i 1-6 -n 1 )
DICE_3=$(shuf -i 1-6 -n 1 )

### SUM for all DICE_{1-3} ###
DICE_TOTAL=$(($DICE_1 + $DICE_2 + $DICE_3))

### CHECK: DICE_TOTAL is odd or even? ###
if [ $(($DICE_TOTAL%2)) -eq 0 ]
then
	RES_ODD_OR_EVEN="EVEN"
else
	RES_ODD_OR_EVEN="ODD"
fi

echo "| $DICE_1 | $DICE_2 | $DICE_3 | Total: $DICE_TOTAL | Number Type: $RES_ODD_OR_EVEN | @ $(date)" | tee -a /var/tmp/Sic-bo_DATA.txt

exit 0
