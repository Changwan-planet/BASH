#/bin/bash

for i in {11..50}

 do 
    echo "$i"
    cat f1-250-profile-"$i".rad | sed -n 23p
 done

