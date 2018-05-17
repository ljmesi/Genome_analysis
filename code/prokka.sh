#!/bin/bash -l
#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 0:30:00
#SBATCH -J prokka
#SBATCH --mail-type=ALL
#SBATCH --mail-user lauri.mesilaakso.5423@student.uu.se

# Load modules
module load bioinfo-tools
module load prokka/1.12-12547ca

prokka \
--outdir /pica/h1/lame5423/Genome_analysis/analyses/04_annotation/Prokka \
--addgenes --rfam \
/home/lame5423/Genome_analysis/analyses/03_genome_assembly/PacBio_corrected_Illumina/pilon.fasta