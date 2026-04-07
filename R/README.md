# NCBI Genomic Data Mining & Sequence Analysis

## 🎯 Objective
To develop an automated pipeline for retrieving genomic data from the NCBI database, calculating key sequence metrics (GC content), and performing in-silico translation.

## 🛠️ Specialized Libraries Used
* **SeqinR:** Utilized for sophisticated biological sequence retrieval, GC content calculation, and DNA-to-Protein translation.
* **REntrez:** Employed to interface directly with the NCBI E-utilities API for automated data mining of nucleotide and protein databases.

## 🧬 Project Breakdown

### 1. Genomic Data Profiling (*Deinococcus radiodurans*)
* Built a comprehensive data frame to analyze gene accession IDs, chromosomal locations, and sequence lengths for the extremophile *Deinococcus radiodurans*.
* Implemented statistical functions to isolate specific genomic landmarks, including the longest and shortest sequence fragments within the dataset.

### 2. In-Silico Sequence Processing
* **GC Content Analysis:** Developed a script to calculate the Guanine-Cytosine (GC) percentage, a critical factor in understanding DNA stability and gene expression.
* **Proteomics:** Automated the translation of raw DNA sequences into functional protein strings to facilitate downstream structural analysis.

### 3. Automated NCBI Data Mining (*Allobates kingsburyi*)
* Programmed a retrieval system to search the NCBI "nucleotide" and "protein" databases for specific species.
* Implemented automated file-writing logic to save retrieved FASTA sequences locally for further bioinformatic research.
