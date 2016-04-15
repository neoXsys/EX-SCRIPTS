#!/bin/bash
#######################################################################
# Puzzle No:  255 July-21-2008(4)                                     #
# Author: "Hardik Dalwadi" <dhardik@novell.com>                       #
# Version: 1.0      						      #
# Puzzle: What would be the value of X & Y for X * Y * XY = YYY       #
# ChangeLOG: 1. Not considering posibiity of X=0 and Y=0              #
#            2. Support for Try & Error Count if we start from        #
#               X=1 and y=1                                           #
#######################################################################

### Sucess Codes ###
E_SUCCESS=0
E_ERROR=1

### Initializing X and Y ###
X=0
Y=0

### Initializing Try & Error Count ###
Z=0

### Clearing Screen ###
clear

### Here we GO ###

### Starting from Y=1 ###
for Y in `seq 1 9`
do 
	### Starting from X=1 ###
	for X in `seq 1 9`
		do 
			YYY="$Y$Y$Y"
			XY="$X$Y"
			let  'RESULT=X * Y * XY'
			let Z++

			echo "Try & Error Count :  $Z"
			echo "Possibility of X  :  $X"
            echo "Possibiligy of Y  :  $Y"
            echo "So, YYY Would be  :  $YYY"
            echo "So, XY  Would be  :  $XY"
            echo "So, X * Y * XY    :  $RESULT"
			echo "Comparing Eqation X * Y * XY = YYY"

			### Comparing Equation ###
			if [ $YYY -eq $RESULT ]
			then
				echo -en '\E[47;34m'"\033[1mRESULT = POSITIVE"
				echo
				echo -en '\E[47;34m'"\033[1mSo, Possibility of X = $X and Y = $Y to make the equation X * Y * XY = YYY Possible!"
				echo 
				exit $E_SUCCESS
			else 
				echo 
				echo -en '\E[47;31m'"\033[1mRESULT =  NEGTIVE"
				echo
			fi
			sleep 1
			clear
	done
done
	
### Here we STOP ###
