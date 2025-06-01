#!/bin/bash

if [ $# -lt 2 ]; then
	echo "$0 Missing arguments <filesdir> and <searchstr>!"
	exit 1
fi

filesDir=$1
searchStr=$2

if [ ! -d "$filesDir" ]; then
	echo "Error: $filesDir is not a directory!"
	exit 1
fi

filesNum=$(find "$filesDir" -type f | wc -l)
linesNum=$(grep -r "$searchStr" "$filesDir" | wc -l)

echo "The number of files are $filesNum and the number of matching lines are $linesNum"

exit 0
