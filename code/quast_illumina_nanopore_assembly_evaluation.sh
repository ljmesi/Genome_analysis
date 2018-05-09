#!/bin/bash -l
#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J quast_pacbio_assembly_evaluation
#SBATCH --mail-type=ALL
#SBATCH --mail-user lauri.mesilaakso.5423@student.uu.se

# Load modules
module load bioinfo-tools
module load quast/4.5.4

# Your commands
quast.py -o /home/lame5423/Genome_analysis/analyses/03_genome_assembly/Illumina_nanopore_assembly_evaluation/Quast/ \
/home/lame5423/Genome_analysis/analyses/03_genome_assembly/PacBio_assembly/efaecium.contigs.fasta \
-R /home/lame5423/Genome_analysis/data/DNA/RefGenome/efaecium_ref_genome.fasta
