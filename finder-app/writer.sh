#!/bin/bash

if [ $# -lt 2 ]; then
	echo "$0 Missing argument"
	exit 1
fi

writeFile=$1
writestr=$2

dirFile=$(dirname "$writeFile")

mkdir -p "$dirFile"
if [ $? -ne 0 ]; then
	echo "Error: Failed to create directory $dirFile"
	exit 1
fi

echo "$writestr" > "$writeFile"
if [ $? -ne 0 ]; then
	echo "Error: Failed to write to file $writeFile"
	exit 1
fi

exit 0
