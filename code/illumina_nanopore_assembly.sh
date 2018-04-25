#!/bin/bash -l
#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 07:00:00
#SBATCH -J job_name
#SBATCH --mail-type=ALL
#SBATCH --lauri.mesilaakso.5423@student.uu.se

# Load modules
module load bioinfo-tools
module load ....

# Your commands
fastqc -o /proj/g2018003/nobackup/private/ /proj/b2014097/nobackup/combine2raw/Sample_HC60b/*gz
<Command_2...>
