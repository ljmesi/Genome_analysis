#!/bin/bash -l
#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 4:00:00
#SBATCH -J bwa
#SBATCH --mail-type=ALL
#SBATCH --mail-user lauri.mesilaakso.5423@student.uu.se

# Load modules
module load bioinfo-tools
module load bwa/

bwa index -p pacbio_index /home/lame5423/Genome_analysis/analyses/03_genome_assembly/PacBio_assembly/efaecium.contigs.fasta
bwa mem pacbio_index \
/home/lame5423/Genome_analysis/data/DNA/Illumina/WGS_forward.fq \
/home/lame5423/Genome_analysis/data/DNA/Illumina/WGS_reverse.fq \
> aln-pe.sam