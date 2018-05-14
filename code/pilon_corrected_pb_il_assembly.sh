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
module load Pilon/1.22

java -Xmx16G -jar /sw/apps/bioinfo/Pilon/1.22/rackham/pilon-1.22.jar \
--genome /home/lame5423/Genome_analysis/analyses/03_genome_assembly/PacBio_assembly/efaecium.contigs.fasta \
--bam /home/lame5423/Genome_analysis/code/aln-pb.sorted.bam