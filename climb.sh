#!/bin/bash

if [ "$#" == "0" ]; then
	number=1
elif [ "$#" == "1" ]; then
	number=$1
else
	echo "using first number"
	number=$1
fi

str="cd .."
var="/.."

i=1
while [ $i -lt $number ]; do
	echo $i
	let i=$i+1
	str="$str$var"
done
echo $str

$str

cd ..
