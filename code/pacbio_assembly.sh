#!/bin/bash -l
#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 8:00:00
#SBATCH -J PacBio_assembly
#SBATCH --mail-type=ALL
#SBATCH --lauri.mesilaakso.5423@student.uu.se

# Load modules
module load bioinfo-tools
module load canu

canu \
-p efaecium -d efaecium-pacbio \
genomeSize=3.0m \
-pacbio-raw /proj/g2018003/nobackup/private/zhang_2017/DNA_raw_data/PacBio/m131023_233432_42174_c100519312550000001823081209281335_s1_X0.*.subreads.fastq.gz \
-pacbio-raw /proj/g2018003/nobackup/private/zhang_2017/DNA_raw_data/PacBio/m131024_200535_42174_c100563672550000001823084212221342_s1_p0.*.subreads.fastq.gz
