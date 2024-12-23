#!/bin/sh

if [ $# -ne 2 ]; then
   echo "Usage: $0 <filesdir> <searchstr>"
   exit 1
fi

filesdir=$1
searchstr=$2

if [ ! -d "$filesdir" ]; then
   echo "$filesdir is not a directory!"
fi

file_count=$(find $filesdir -type f | wc -l)
num_match=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $file_count and the number of matching lines are $num_match"

