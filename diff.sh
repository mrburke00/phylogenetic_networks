#diff >(samtools faidx hg38.fa chr1:66986546-66986952) >(samtools faidx hg38.fa chr1:66986546-66986952 | bcftools consensus human_sites.smoove.square.vcf.gz)
#samtools faidx hg38.fa chr14:$1-$2 | bcftools consensus -s $3 ALL.chr14.shapeit2_integrated_v1a.GRCh38.20181129.phased.vcf.gz > $3.txt
#samtools faidx hg38.fa chr14:$1-$2 | bcftools consensus -s $3 deletions_human_sites.smoove.square.vcf.gz > $3.txt
samtools faidx hg38.fa chr14:$1-$2 > ref.txt
