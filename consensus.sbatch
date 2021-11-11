#!/bin/bash
#SBATCH -p short # Partition or queue. In this case, short!
#SBATCH --job-name=devin_slurm_test # Job name
#SBATCH --mail-type=ALL # Mail events (NONE, BEGIN, END, FAIL, ALL)
#SBATCH --mail-user=debu7497@colorado.edu
#SBATCH --nodes=1 # Only use a single node
#SBATCH --ntasks=8 # Run on a single CPU
#SBATCH --mem=16gb # Memory limit
#SBATCH --time=04:00:00 # Time limit hrs:min:sec
#SBATCH --output=/scratch/Shares/layer/workspace/phylogenetic_sv/log_consensus/slurm_run_%j.out # Standard output and error log
#SBATCH --error=/scratch/Shares/layer/workspace/phylogenetic_sv/log_consensus/slurm_run_%j.err # %j inserts job number

pwd; hostname; date

#rm -r outputs/*
#samtools index ERR3241764.cram -@8
#samtools view ERR3241764.cram "chr1:200857-201046" -@8 > output.sam
#bcftools norm -f hg38.fa -m +any -Oz -o norm_human_sites.smoove.square.vcf human_sites.smoove.square.vcf
#python test.py
#bcftools norm -m-any --check-ref w human_sites.smoove.square.vcf -Ov > human_sites.norm.smoove.square.vcf.gz
#bedtools bamtofastq -i ERR3241764.cram -fq ERR3241764.fastq
#samtools index deletions_human_sites.smoove.square.vcf -@8
#bgzip deletions_human_sites.smoove.square.vcf
#bcftools view -i 'SVTYPE="DEL"' human_sites.smoove.square.vcf -o deletions_human_sites.smoove.square.vcf
#bgzip -c deletions_human_sites.smoove.square.vcf > deletions_human_sites.smoove.square.vcf.gz
#tabix -p vcf deletions_human_sites.smoove.square.vcf.gz

bash consensus.sh


date



