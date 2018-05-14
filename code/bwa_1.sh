#!/bin/bash -l
#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 3:00:00
#SBATCH -J bwa
#SBATCH --mail-type=ALL
#SBATCH --mail-user lauri.mesilaakso.5423@student.uu.se

# Load modules
module load bioinfo-tools
module load bwa/0.7.17

bwa index /home/lame5423/Genome_analysis/analyses/03_genome_assembly/PacBio_assembly/efaecium.contigs.fasta \
bwa mem -v 1 -M /home/lame5423/Genome_analysis/analyses/03_genome_assembly/PacBio_assembly/efaecium.contigs.fasta \
/home/lame5423/Genome_analysis/data/DNA/Illumina/WGS_forward.fq.gz \
/home/lame5423/Genome_analysis/data/DNA/Illumina/WGS_reverse.fq.gz \
> aln-pe.sam