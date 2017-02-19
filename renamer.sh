#!/bin/bash

for z in *.zip;
 do
 filename=$(basename "$z")
 filename="${filename%.*}"
 cd $filename
 cd *
 cd tabular
 for file in *.txt;
  do
  sed -i 's/"//g' $file
  mv -v -- "$file" "${file%.txt}.csv";
  done
 cd ../../..;
done

echo All done.
