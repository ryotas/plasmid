#!/bin/bash

rm data/edge_simirality.pg

for col in {10..64}; do

plasmid_id=`awk -v FS=',' '{if (NR == 2) print $'$col'}' data/SupplementaryTableS2.csv`

awk -v FS=',' -v OFS='\t' -v "P=$plasmid_id" \
'{if (NR > 2) { if ($'$col' != 0) print P, $1, "similarity:"$'$col'}}' \
data/SupplementaryTableS2.csv >> data/edge_simirality.pg 

done
