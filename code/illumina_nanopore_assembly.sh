#!/bin/bash -l
#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 07:00:00
#SBATCH -J illumina_nanopore_assembly
#SBATCH --mail-type=ALL
#SBATCH --mail-user lauri.mesilaakso.5423@student.uu.se

# Load modules
module load bioinfo-tools
module load spades/3.11.1

# Your commands
spades.py \
--pe1-1 /home/lame5423/Genome_analysis/data/DNA/Illumina/WGS_forward.fq.gz \
--pe1-2 /home/lame5423/Genome_analysis/data/DNA/Illumina/WGS_reverse.fq.gz \
--nanopore /home/lame5423/Genome_analysis/data/DNA/NanoPore/E745_all.fasta.gz \
-k 21,31,41,51,61,71,81 \
-o /home/lame5423/Genome_analysis/analyses/03_genome_assembly/Illumina_nanopore_assembly/

