#source("http://bioconductor.org/biocLite.R")
#biocLite()
#biocLite("DESeq2")

#Load DESeq2 library
library("DESeq2")
sampleFile <- "/home/john/pCloudDrive/Opiskelu/Genomianalyysi/Genome_analysis/analyses/05_rna-seq/counts.file"

directory <- "/home/john/pCloudDrive/Opiskelu/Genomianalyysi/Genome_analysis/code"
#setwd(directory)

# a6 i.e. the last column was dropped because it contained only zeros.
sampleFiles<- c("a1.txt","a2.txt","a3.txt","a4.txt","a5.txt")
sampleNames <- c("BHI_Replicate_1","BHI_Replicate_2","BHI_Replicate_3","Serum_Replicate_1","Serum_Replicate_2")
sampleCondition <- c("BHI","BHI","BHI","Serum","Serum")
sampleTable <- data.frame(sampleName = sampleNames, fileName = sampleFiles, condition = sampleCondition)

ddsHTSeq <- DESeqDataSetFromHTSeqCount(sampleTable = sampleTable, directory = directory, design= ~ condition)

# Calculating the actual differential expression
dds <- DESeq(ddsHTSeq)

res <- results(dds)

rld <- rlog(dds, blind=FALSE)

# Nice simple heatmap to illustrate the differences
source("http://bioconductor.org/biocLite.R") 
biocLite("pheatmap") 
library("pheatmap") 
select <- order(rowMeans(counts(dds,normalized=TRUE)), decreasing=TRUE)[1:20]

pheatmap(assay(rld)[select,], cluster_rows=TRUE, show_rownames=TRUE,
         cluster_cols=TRUE)
