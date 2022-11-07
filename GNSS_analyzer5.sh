
for i in {1..4}; do
 cut -f4 Profile_000$i.utm > elevation$i.txt
done

for i in {1..4}; do
 l=$(wc -l elevation$i.txt)
 echo  $l
done > line.txt

sort -n line.txt |
sed -n '1s/^/min=/p; $s/^/max=/p'


FN="elevation.txt"
paste -d " " *.txt > $FN

l2=$(wc -l $FN)
echo line_max: $l2


