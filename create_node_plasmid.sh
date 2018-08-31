awk -v FS=',' -v OFS='\t' \
'{print "\""$1"\"", ":plasmid", "name:"$1, "group:"$2, "class:\""$4"\"", "order:\""$5"\"", "species:\""$6"\"", "genbank:"$7}' \
data/TableS4.csv > data/node_plasmid.pg

#'{print $1, ":plasmid", "name:"$1, "group:"$2, "class:"$4, "order:"$5, "species:"$6, "genbank:"$7}' \
