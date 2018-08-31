awk -v FS=',' -v OFS='\t' \
'{if (NR > 2) print $1, ":bacteria", "genbank:"$1, "domain:"$2, "phylum:"$3, "class:"$4, "order:"$5, "family:"$6, "genus:"$7, "species:"$8, "strain:\""$9"\""}' \
data/SupplementaryTableS2.csv > data/node_bacteria.pg
