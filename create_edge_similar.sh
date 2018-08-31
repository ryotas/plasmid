#!/bin/bash

rm data/edge_similar.pg

for col in {10..64}; do

plasmid_id=`awk -v FS=',' '{if (NR == 2) print $'$col'}' data/SupplementaryTableS2.csv`
plasmid_id=${plasmid_id%% (*}

awk -v FS=',' -v OFS='\t' -v "P=$plasmid_id" \
'{if (NR > 2) { if ($'$col' != 0) print "\""P"\"", "\""$1"\"", ":\"similar\"", "\"score\":"$'$col'""}}' \
data/SupplementaryTableS2.csv >> data/edge_similar.pg 

done
