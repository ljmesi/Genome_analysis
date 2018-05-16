#!/bin/bash -l
#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 8:00:00
#SBATCH -J bwa_rna_seq_reads_1
#SBATCH --mail-type=ALL
#SBATCH --mail-user lauri.mesilaakso.5423@student.uu.se

# Load modules
module load bioinfo-tools
module load bwa/0.7.17
module load samtools/1.6

bwa index /home/lame5423/Genome_analysis/analyses/03_genome_assembly/PacBio_corrected_Illumina/pilon.fasta
bwa mem -t 2 /home/lame5423/Genome_analysis/analyses/03_genome_assembly/PacBio_corrected_Illumina/pilon.fasta \
/home/lame5423/Genome_analysis/analyses/02_preprocessing/RNA-Seq_trim_paired_1.fg.gz \
/home/lame5423/Genome_analysis/analyses/02_preprocessing/RNA-Seq_trim_paired_2.fg.gz \
| samtools sort -@ 2 -T tmp1 -O BAM -o RNA-Seq_Serum_replicate_1.bam -