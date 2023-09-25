#!/bin/bash

#Reset (or empty) the file 
cat /dev/null > distance.txt


#abstract the numerical data if each field  has '<STOP>'.
#and I olny want real values. 
awk '{if($1~/STOP/) print}' *.rad | awk -F': ' '{print $2}' >> distance.txt

cat distance.txt 

#arrange files as an ascending order
#sort -n distance.txt | cat

#print max and min
#sort -n distance.txt | 
#sed -n '1s/^/min=/p; $s/^/max=/p'
 
#number of the lines or GPR file 
l=$(wc -l distance.txt )
echo line: $l
