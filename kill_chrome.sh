#!/bin/bash

var=`ps -el | grep chrome | grep -v kill_chrome | awk '{print $4}'`

for p in $var
do
    echo "kill" $p
    sudo kill $p
done
