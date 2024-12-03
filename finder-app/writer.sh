#!/bin/sh

if [ $# -ne 2 ]; then
   echo "Usage: $0 <writefile> <writestr>"
   exit 1
fi

writefile=$1
writestr=$2

dir_name=$(dirname $writefile)

if [ ! -d "$dir_name" ]; then
   mkdir -p "$dir_name"
fi

echo "$writestr" > $writefile

if [ $? -ne 0 ]; then
   echo "The file could not be created"
   exit 1
fi


