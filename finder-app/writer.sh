#!/bin/sh

writefile=$1
writestr=$2

if [ $# -ne 2 ]; then 
    exit 1
fi

dir=$(dirname $writefile)

if [ ! -e $dir  ]; then 
    mkdir -p $dir
fi

if [ ! -e $writefile ]; then 
    touch $writefile
fi

printf $writestr >> $writefile

if [ $? -lt 0 ]; then
    echo exited with error $?
fi