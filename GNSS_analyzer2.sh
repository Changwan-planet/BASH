#!/bin/bash

touch elevation4.txt

#declare -a gnss

for i in {1..9..2}

#do
#cat Profile_000$i.utm | awk '{print $4}' | awk '{print( $i")}'
#done

do
cut -f4 Profile_000$i.utm > elevation1.txt 
let i++
cut -f4 Profile_000$i.utm > elevation2.txt 

paste -d " " elevation1.txt elevation2.txt  > elevation3.txt

paste -d " " elevation3.txt elevation4.txt
#cat /dev/null > elevation1.txt
#cat /dev/null > elevation2.txt

done




#for i in {1..9}

#do

#print "i=",$i
#cut -f4 Profile_000$i.utm | sort -n | sed -n '1s/^/min=/p; $s/^/max=/p'
#cut -f4 Profile_000$i.utm >> awk "{print $$i}" elevation.txt

#done

