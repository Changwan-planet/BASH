#!/bin/bash

#Reset (or empty) the file 
cat /dev/null > distance.txt


#abstract the numerical data if each field  has '<scan>'. 
#awk '{if($1~/STOP/) print}' *.rad | grep -o '[0-9]*' | awk '{if($1>/0/) print}' >> distance.txt
awk '{if($1~/STOP/) print $3}' *.rad  >> distance.txt


#arrange files as an ascending order
sort -n distance.txt | cat

#print max and min
sort -n distance.txt | 
sed -n '1s/^/min=/p; $s/^/max=/p'
 
#number of the lines or GPR file 
l=$(wc -l distance.txt )
echo line: $l
