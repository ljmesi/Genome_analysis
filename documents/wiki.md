# Genome analysis - project wiki

## Project plan

### Aims

Here will be some details.

### Execution

What type of analyses will you perform in order to answer these questions? And in which order? Which softwares will you use? Are there any time bottlenecks? If so, can you identify any analyses that will require longer times?

What is the time frame for your project? Can you define some time checkpoints for when you should have finished certain analyses? When do you need to have finished running all the softwares so you can start to analyze the data?

What types of data will you be handling? How much space do you need in order to store those data? (You might not know that in advance, but pay attention to this as you work and manage your available space!)

(IGV for visualization and sanity checking of the genomes)

1. Reads quality control 

   FastQC for Illumina reads

   Canu for PacBio/MinION reads 

2. Reads preprocessing for removing low quality base-calls and adapters

   Trimmomatic (50 min/file) for Illumina reads

3. Genome sequencing - DNA assembly

   1. Short Illumina reads (Spades 2h/Canu 4,5 h)
   2. Long PacBio RSII & NanoPore (MinION) reads (Spades 2h/Canu 4,5 h)

4. Assembly evaluation (Quast 15 min/MUMmerplot 5 min/BCFtools 90 min)

5. ​

6. Alignment of the reads from transcriptome to the genome

7. Comparison of transcriptome in rich medium and in human serum

8. Tn-seq

6. Gene Annotation

### Data organization

