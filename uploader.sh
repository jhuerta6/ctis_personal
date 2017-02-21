#!/bin/bash

#README: Replace <> by the desired data.

for z in *.zip;
 do
 filename=$(basename "$z")
 filename="${filename%.*}"
 cd $filename
 cd *
 cd tabular
 for f in *.csv;
  do
  mysqlimport --host=<host> --port=3306 --user=<user> --password=<pass> --local --fields-terminated-by='|' -v -u <user> --password=<pass> <table name> $f;
 done
 cd ../../..;
done

echo Uploads complete.


