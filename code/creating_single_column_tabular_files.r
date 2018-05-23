
sampleFile <- "/home/john/pCloudDrive/Opiskelu/Genomianalyysi/Genome_analysis/analyses/05_rna-seq/counts.file"

# Reading the tabular data file into a data frame
dfrm <- read.table(sampleFile, stringsAsFactor=FALSE)

# Checking how the data looks like
#print(dfrm)

# These were unused
#a1_3 <- dfrm[c(1, 2, 3, 4)]
#a4_6 <- dfrm[c(1, 5, 6, 7)]

# Choosing the subsets of columns to be written into a new tabular data file 
a1 <- dfrm[c(1, 2)]
# Checking how the dataframe looks like
#print(a1)

a2 <- dfrm[c(1, 3)]
a3 <- dfrm[c(1, 4)]
a4 <- dfrm[c(1, 5)]
a5 <- dfrm[c(1, 6)]
a6 <- dfrm[c(1, 7)]

write.table(a1, file = "a1.txt", sep = "\t", quote = FALSE, row.names = FALSE, col.names = FALSE)
write.table(a2, file = "a2.txt", sep = "\t", quote = FALSE, row.names = FALSE, col.names = FALSE)
write.table(a3, file = "a3.txt", sep = "\t", quote = FALSE, row.names = FALSE, col.names = FALSE)
write.table(a4, file = "a4.txt", sep = "\t", quote = FALSE, row.names = FALSE, col.names = FALSE)
write.table(a5, file = "a5.txt", sep = "\t", quote = FALSE, row.names = FALSE, col.names = FALSE)
write.table(a6, file = "a6.txt", sep = "\t", quote = FALSE, row.names = FALSE, col.names = FALSE)

# These were unused
#write.table(a1_3, file = "a1_3.txt", sep = "\t", quote = FALSE, row.names = FALSE, col.names = FALSE)
#write.table(a4_6, file = "a4_6.txt", sep = "\t", quote = FALSE, row.names = FALSE, col.names = FALSE)

