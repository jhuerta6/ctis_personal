#!/bin/bash

for z in *.zip;
 do
 filename=$(basename "$z")
 filename="${filename%.*}"
 cd $filename
 cd *
 cd tabular
 rm version.txt
 for file in *.txt;
  do
  sed -i 's/"//g' $file
  mv -v -- "$file" "${file%.txt}.csv";
  done
 
 mv ccancov.csv cocanopycover.csv #
 mv ccrpyd.csv cocropyld.csv
 mv cecoclas.csv coecoclass.csv
 mv ceplants.csv coeplants.csv
 mv cerosnac.csv coerosionacc.csv 
 mv cfprod.csv coforprod.csv
 mv cfprodo.csv coforprodo.csv
 mv cgeomord.csv cogeomordesc.csv
 mv chconsis.csv chconsistence.csv # 
 mv chdsuffx.csv chdesgnsuffix.csv #
 mv chstr.csv chstruct.csv
 mv chstrgrp.csv chstructgrp.csv
 mv chtexgrp.csv chtexturegrp.csv
 mv chtexmod.csv chtexturemod.csv #
 mv chtextur.csv chtexture.csv #
 mv chunifie.csv chunified.csv
 mv chydcrit.csv cohydriccriteria.csv
 mv cinterp.csv cointerp.csv
 mv cmonth.csv comonth.csv #
 mv comp.csv component.csv #
 mv cpmat.csv copm.csv
 mv cpmatgrp.csv copmgrp.csv
 mv cpwndbrk.csv copwindbreak.csv
 mv crstrcts.csv corestrictions.csv ##
 mv csfrags.csv cosurffrags.csv #
 mv csmoist.csv cosoilmoist.csv
 mv csmorgc.csv cosurfmorphgc.csv
 mv csmorhpp.csv cosurfmorphhpp.csv
 mv csmormr.csv cosurfmorphmr.csv #
 mv csmorss.csv cosurfmorphss.csv #
 mv cstemp.csv cosoiltemp.csv
 mv ctext.csv cotext.csv
 mv ctreestm.csv cotreestomng.csv
 mv ctxfmoth.csv cotxfmother.csv #
 mv ctxfmmin.csv cotaxfmmin.csv #
 mv ctxmoicl.csv cotaxmoistcl.csv
 mv distimd.csv distinterpmd.csv
 mv distlmd.csv distlegendmd.csv
 mv lareao.csv laoverlap.csv #
 mv ltext.csv legendtext.csv #
 mv msdomdet.csv mdstatdomdet.csv
 mv msdommas.csv mdstatdommas.csv
 mv msidxdet.csv mdstatidxdet.csv
 mv msidxmas.csv mdstatidxmas.csv #
 mv msrsdet.csv mdstatrshipdet.csv #
 mv msrsmas.csv mdstatrshipmas.csv
 mv mstab.csv mdstattabs.csv
 mv mstabcol.csv mdstattabcols.csv
 mv muareao.csv muaoverlap.csv #
 mv mucrpyd.csv mucropyld.csv #
 mv sacatlog.csv sacatalog.csv
 mv cdfeat.csv codiagfeatures.csv
 cd ../../..;
done

echo All done.
