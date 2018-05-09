#!/bin/bash -l
#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J RNA-Seq_trim1
#SBATCH --mail-type=ALL
#SBATCH --mail-user lauri.mesilaakso.5423@student.uu.se

# Load modules
module load bioinfo-tools
module load trimmomatic/0.36

# Your commands 
java -jar /sw/apps/bioinfo/trimmomatic/0.36/rackham/trimmomatic-0.36.jar \
PE -phred64 \
-trimlog /home/lame5423/Genome_analysis/analyses/02_preprocessing/RNA-Seq_trim_log.txt \
/home/lame5423/Genome_analysis/data/RNA/RNA-Seq_Serum_replicate_1_forward.fastq.gz \
/home/lame5423/Genome_analysis/data/RNA/RNA-Seq_Serum_replicate_1_reverse.fastq.gz \
/home/lame5423/Genome_analysis/analyses/02_preprocessing/RNA-Seq_trim_paired_1.fg.gz \
/home/lame5423/Genome_analysis/analyses/02_preprocessing/RNA-Seq_trim_unpaired_1.fg.gz \
/home/lame5423/Genome_analysis/analyses/02_preprocessing/RNA-Seq_trim_paired_2.fg.gz \
/home/lame5423/Genome_analysis/analyses/02_preprocessing/RNA-Seq_trim_unpaired_2.fg.gz \
ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 LEADING:20 TRAILING:20 SLIDINGWINDOW:4:15 MINLEN:36
