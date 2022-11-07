
for i in {1..4}; do
 cut -f4 Profile_000$i.utm > elevation$i.txt
done

FN="elevation.txt"
paste -d " " *.txt > $FN

l=$(wc -l $FN)
echo line: $l


