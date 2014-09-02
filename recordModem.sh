#!/bin/bash

mkdir datasets &> /dev/null

echo "./pinger.sh  
./output.sh  < /dev/ttyUSB1 > datasets/master
 ./output.sh < /dev/ttyUSB0 > datasets/slave
 tail -f master" | parallel
