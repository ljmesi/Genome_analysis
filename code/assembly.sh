#!/bin/bash -l
#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 6:00:00
#SBATCH -J PacBio_assembly
#SBATCH --mail-type=ALL
#SBATCH --lauri.mesilaakso.5423@student.uu.se

# Load modules
module load bioinfo-tools
module load canu/1.7


canu \
-p efaecium 
-d ../efaecium-pacbio \
genomeSize=3m \
-pacbio-raw /proj/g2018003/nobackup/private/data/*.subreads.fastq.gz

