''' Script for reading and parsing into single fasta files a multifasta file'''
# Naming the first fasta file
fileNumber = 1
# Open the file
with open("efaecium.contigs.fasta") as f:
    # Open file handle for first file
    file = open(str(fileNumber)+".fasta", "w")
    # Read and write the first line of the first sequence
    file.write(f.readline())
    # Read line by line the file
    for line in f:
        # Find the lines which the header
        if line.startswith(">"):
            # Close the previous file
            file.close()
            fileNumber+=1
            # Open new file
            file = open(str(fileNumber) + ".fasta", "w")
            # and write in it again
            file.write(line)
        else:
            file.write(line)
    # Close the last file
    file.close() 