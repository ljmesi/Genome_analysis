#!/bin/bash -l
#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 07:00:00
#SBATCH -J illumina_nanopore_assembly
#SBATCH --mail-type=ALL
#SBATCH --lauri.mesilaakso.5423@student.uu.se

# Load modules
module load bioinfo-tools
module load spades/3.11.1

# Your commands
spades.py --pe<1>-1 /home/lame5423/Genome_analysis/data/DNA/WGS_forward.fq.gz --pe<2>-2 /home/lame5423/Genome_analysis/data/DNA/WGS_reverse.fq.gz --nanopore /home/lame5423/Genome_analysis/data/DNA/NanoPore/E745_all.fasta.gz -o /home/lame5423/Genome_analysis/analyses/03_genome_assembly/