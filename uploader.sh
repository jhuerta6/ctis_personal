#!/bin/bash
for z in *.zip;
 do
 filename=$(basename "$z")
 filename="${filename%.*}"
 cd $filename
 cd *
 cd tabular
 for f in *.csv;
  do
  mysqlimport --host=irpsrvgis35.utep.edu --port=3306 --user=ctis --password=19691963 --local --fields-terminated-by='|' -v -u ctis --password=19691963 imsc $f;
 done
 cd ../../..;
done

echo Uploads complete.


