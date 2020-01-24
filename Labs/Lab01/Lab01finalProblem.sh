 head -n 1 PredPreyData.csv > PredPreyDataLAB02.csv
 cut -f 2-4 -d , PredPreyData.csv | tail PredPreyData.csv >> PredPreyDataLAB02.csv 
