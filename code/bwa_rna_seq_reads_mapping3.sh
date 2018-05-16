#!/bin/bash -l
#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 2:00:00
#SBATCH -J bwa_rna_seq_reads_3
#SBATCH --mail-type=ALL
#SBATCH --mail-user lauri.mesilaakso.5423@student.uu.se

# Load modules
module load bioinfo-tools
module load bwa/0.7.17
module load samtools/1.6

bwa index /home/lame5423/Genome_analysis/analyses/03_genome_assembly/PacBio_corrected_Illumina/pilon.fasta
bwa mem -t 2 /home/lame5423/Genome_analysis/analyses/03_genome_assembly/PacBio_corrected_Illumina/pilon.fasta \
/proj/g2018003/nobackup/private/zhang_2017/RNA_trimmed_reads/trim_paired_ERR1797971_pass_1.fastq.gz \
/proj/g2018003/nobackup/private/zhang_2017/RNA_trimmed_reads/trim_paired_ERR1797971_pass_2.fastq.gz \
| samtools sort -@ 2 -T tmp -O BAM -o RNA-Seq_Serum_replicate_3.bam -

