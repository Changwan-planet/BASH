declare -A arr

cat /dev/null > elevation.txt

#arr[1]=$(cut -f4 Profile_0001.utm)

for i in {1..2}; do
    arr[$i]=$(cut -f4 Profile_000$i.utm)
done


#arr[0,0]=0
#arr[0,1]=1
#arr[1,0]=2
#arr[1,1]=3

#echo "${arr[0]} ${arr[1]}"

for r in "${arr[@]}"; do
   echo $r
done >> elevation.txt


#   echo $arr


#afor r in "${!arr[@]}"; do
#   echo "${arr[$r]}"
#done
