#!/bin/bash

samples=('HG01055' 'HG02736' 'HG01168' 'HG01942' 'HG02721' 'HG02332' 'HG02272' 'NA18999' 'HG04060' 'NA18997' 'HG00421' 'HG03874' 'HG01686' 'HG01700' 'NA21117' 'HG02348' 'HG00614' 'HG03120' 'HG00378' 'HG01848' 'HG01250' 'HG01435' 'HG01080' 'NA20819' 'HG02724' 'HG02870' 'HG01991' 'HG02010' 'HG03894' 'HG01079' 'HG00096' 'HG00256' 'HG00406' 'HG00698' 'HG01173' 'HG01465' 'HG01704' 'HG01914' 'HG02089' 'HG02309' 'HG02546')
for val1 in ${samples[*]}; do
	echo ">${val1}" >> transp_105430726-105759156/igh_snp.txt
	#echo ""  >> transp_105430726-105759156/igh_snp.txt
	samtools faidx hg38.fa chr14:105430726-105759156 | bcftools consensus -s ${val1} ALL.chr14.shapeit2_integrated_v1a.GRCh38.20181129.phased.vcf.gz |  tail -n +2 >> transp_105430726-105759156/igh_snp.txt 
	echo ""	 >> transp_105430726-105759156/igh_snp.txt
done
