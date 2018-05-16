#!/bin/bash -l
#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 8:00:00
#SBATCH -J bwa_rna_seq_reads
#SBATCH --mail-type=ALL
#SBATCH --mail-user lauri.mesilaakso.5423@student.uu.se

# Load modules
module load bioinfo-tools
module load bwa/0.7.17

bwa index /home/lame5423/Genome_analysis/analyses/03_genome_assembly/PacBio_corrected_Illumina/pilon.fasta
bwa mem rna_seq_index \
/home/lame5423/Genome_analysis/analyses/02_preprocessing/RNA-Seq_trim_paired_1.fg.gz \
/home/lame5423/Genome_analysis/analyses/02_preprocessing/RNA-Seq_trim_paired_2.fg.gz \
/home/lame5423/Genome_analysis/analyses/02_preprocessing/RNA-Seq_trim_unpaired_1.fg.gz \
/home/lame5423/Genome_analysis/analyses/02_preprocessing/RNA-Seq_trim_unpaired_2.fg.gz \
> aln-rna_seq.sam