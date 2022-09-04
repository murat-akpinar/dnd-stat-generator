#!/bin/bash

dndfunction(){
liste=()

for (( count=0; count<4; count++  ))
do
	zar=$(( (RANDOM %6) +1 ))
	liste+=($zar)
	
done
for (( count=0; count<4; count++  ))
do
	echo -n "${liste[$count]} "
done

echo 

IFS=$'\n' sorted=($(sort <<<"${liste[*]}"))
unset IFS

let toplam=${sorted[1]}+${sorted[2]}+${sorted[3]}
echo "Toplam(4d6kh3)"  $toplam

}

sonuc=0


for (( countt=0; countt<6; countt++ ))
do
	dndfunction
	let sonuc+=$toplam
done
echo geneltoplam $sonuc
