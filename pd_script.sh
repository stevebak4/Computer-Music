#!/bin/bash

path_to_read=$1
path_to_write=$2
names=()
names=($(ls "$path_to_read"))
size=$((${#names[@]}))
echo $size
cat /dev/null > $path_to_write
for ((i=0;i<$size;i++));do
  echo "${names[$i]};" >> $path_to_write
done
unset names
