#!/bin/bash -l
#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 8:00:00
#SBATCH -J htseq5
#SBATCH --mail-type=ALL
#SBATCH --mail-user lauri.mesilaakso.5423@student.uu.se

# Load modules
module load bioinfo-tools
module load htseq/0.9.1

htseq-count -f bam \
/home/lame5423/Genome_analysis/analyses/05_rna_seq/RNA-Seq_Serum_replicate_2.bam \
/home/lame5423/Genome_analysis/analyses/04_annotation/Prokka/PROKKA_05172018.gff