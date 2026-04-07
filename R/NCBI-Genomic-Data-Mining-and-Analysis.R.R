# Part I: Create and Analyze the Deinococcus radiodurans Gene Data Frame
gene_names <- c("gyrA", "recA", "dnaK", "rpoB", "groEL", "pprA", "sodA", "katA", "mutL", "uvrA")
accession_ids <- c("NC_001263.1", "NC_001263.1", "NC_001263.1", "NC_001263.1", "NC_001263.1", "NC_001264.1", "NC_001263.1", "NC_001263.1", "NC_001263.1", "NC_001263.1")
chromosome_names <- c("I", "I", "I", "I", "I", "II", "I", "I", "I", "I")
sequence_lengths <- c(2460, 1026, 1836, 3441, 1629, 834, 621, 1479, 1968, 2826)
genes_df <- data.frame(
  Gene_Name = gene_names,
  Accession_ID = accession_ids,
  Chromosome = chromosome_names,
  Length_bp = sequence_lengths
)
print("--- The Complete Gene Data Frame ---")
print(genes_df)
longest_gene_index <- which.max(genes_df$Length_bp)
longest_gene_info <- genes_df[longest_gene_index, ]
print("--- Longest Sequence Information ---")
print(longest_gene_info)
shortest_gene_index <- which.min(genes_df$Length_bp)
shortest_gene_info <- genes_df[shortest_gene_index, ]
print("--- Shortest Sequence Information ---")
print(shortest_gene_info)
average_length <- mean(genes_df$Length_bp)
print("--- Average Sequence Length ---")
print(paste("The average sequence length is:", round(average_length, 2), "bp"))

getwd()
setwd("C:/Users/Arya Vast/Desktop/BIOTECHNOLOGY/PGD BIO AND COMPUTER SKILLS/Assignments")
getwd()
getwd()
setwd("C:/Users/Arya Vast/Desktop/BIOTECHNOLOGY/PGD BIO AND COMPUTER SKILLS/Assignments")
setwd("C:/Users/Arya Vast/Desktop/BIOTECHNOLOGY/PGD BIO AND COMPUTER SKILLS/Assignments")


# PART 2: GC Content and Translation
install.packages("seqinr")
library(seqinr)
setwd("C:/Users/Arya Vast/Desktop/BIOTECHNOLOGY/PGD BIO AND COMPUTER SKILLS/Assignments")
# The code looks for the exact filename "recA_gene.fasta.fasta".
sequence_data <- read.fasta(file = "recA_gene.fasta.fasta")
dna_sequence <- sequence_data[[1]]
gc_percentage <- GC(dna_sequence) * 100
cat("--- GC Content Result ---\n")
cat(paste("The GC content of the gene is:", round(gc_percentage, 2), "%\n\n"))
protein_sequence_vector <- translate(dna_sequence)
protein_string <- paste(protein_sequence_vector, collapse = "")
cat("--- Translated Protein Sequence ---\n")
print(protein_string)

# PART 3:  Using rentrez to Fetch NCBI Data
install.packages("rentrez")
library(rentrez)
nuc_search <- entrez_search(db="nucleotide", term="Allobates kingsburyi", retmax=100)
cat("Total nucleotide sequences found:", nuc_search$count, "\n")
cat("First 5 nucleotide sequence IDs:", nuc_search$ids[1:5], "\n")
nuc_fasta <- entrez_fetch(db="nucleotide", id=nuc_search$ids, rettype="fasta", retmode="text")
cat("Preview of nucleotide FASTA:\n")
cat(substr(nuc_fasta, 1, 500), "\n")
write(nuc_fasta, file="Allobates_kingsburyi_nucleotide.fasta")
prot_search <- entrez_search(db="protein", term="Allobates kingsburyi", retmax=100)
cat("Total protein sequences found:", prot_search$count, "\n")
cat("First 5 protein sequence IDs:", prot_search$ids[1:5], "\n")
prot_fasta <- entrez_fetch(db="protein", id=prot_search$ids, rettype="fasta", retmode="text")
cat("Preview of protein FASTA:\n")
cat(substr(prot_fasta, 1, 500), "\n")
write(prot_fasta, file="Allobates_kingsburyi_protein.fasta")
cat("Files saved in:", getwd(), "\n")


