#!/bin/bash

mkdir datasets &> /dev/null

#Not tested yet, but should set the right bps for the modems
stty -F /dev/ttyUSB0 speed 9600
stty -F /dev/ttyUSB1 speed 9600

echo "./pinger.sh  
./output.sh  < /dev/ttyUSB1 > datasets/master
 ./output.sh < /dev/ttyUSB0 > datasets/slave
 tail -f master" | parallel
