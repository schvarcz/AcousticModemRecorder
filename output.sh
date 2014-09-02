#!/bin/bash
echo "Recorded at `date`"
while read line
do
    cmp=`echo $line | tr -d ' '`
    if [ "$cmp" != "" ] && [ "$cmp" != "RangeTMO" ] ; then
        echo $line";`date +%s`"
    fi
done
