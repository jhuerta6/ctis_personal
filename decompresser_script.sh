#!/bin/bash

for z in *.zip; 
 do
 #echo $z
 filename=$(basename "$z")
 #echo $filename;
 extension="${z##*.}"
 #echo $extension
 filename="${filename%.*}"
 #echo $filename
 unzip $z -d $filename; 
done
