#!/bin/bash -l
#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 0:10:00
#SBATCH -J mummerplot_assembly_only_chromosomal
#SBATCH --mail-type=ALL
#SBATCH --mail-user lauri.mesilaakso.5423@student.uu.se

# Load modules
module load bioinfo-tools
module load MUMmer/3.9.4alpha

mummer -mum -b -L /home/lame5423/Genome_analysis/data/DNA/RefGenome/efaecium_ref_genome.fasta \
/home/lame5423/Genome_analysis/analyses/03_genome_assembly/PacBio_assembly/1.fasta \
> matches_assembly.mummer
mummerplot -t png -p mummerplot_assembly_only_chromosomal matches_assembly.mummer