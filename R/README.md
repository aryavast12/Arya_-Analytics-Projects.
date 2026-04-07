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
---


# Differential Gene Expression (DEG) Pipeline: Neurological Disorders

## 🎯 Objective
To build an end-to-end automated pipeline in R that identifies, filters, and visualizes differentially expressed genes (DEGs) between Duchenne Muscular Dystrophy (DMD) patients and healthy controls using public microarray data.

## 🛠️ The Tech & Bio Stack
* **R Programming:** Core statistical processing and data wrangling.
* **Bioconductor Libraries:** `GEOquery` (Automated data fetching), `limma` (Linear modeling and empirical Bayes statistics), and `Biobase`.
* **Data Visualization:** `ggplot2` for high-resolution statistical graphics.
* **Data Export:** `writexl` for automated, multi-sheet Excel reporting.

## 🧬 Pipeline Workflow

### 1. Automated Data Ingestion
* Successfully interfaced with the NCBI GEO database to dynamically retrieve the `GSE38417` transcriptomic dataset.
* Extracted and structured the expression matrix and phenotype metadata for 22 specific muscle biopsy samples (16 Disease, 6 Control).

### 2. Advanced Statistical Modeling
* Constructed a precise design matrix to contrast DMD samples against Control samples.
* Utilized the `limma` package to fit linear models (`lmFit`) and apply Empirical Bayes smoothing (`eBayes`) to calculate accurate statistical significance across thousands of genes.

### 3. Data Segmentation & Export
* **Thresholding:** Filtered the comprehensive results using strict scientific criteria (Adjusted p-value < 0.05 and |Log2FC| > 1).
* **Automated Reporting:** Wrote a script to automatically split the significant genes into "Upregulated" and "Downregulated" dataframes, exporting them directly into a cleanly formatted Excel workbook for immediate stakeholder review.

### 4. Data Visualization
* Generated a professional-grade **Volcano Plot** to visually represent the log-fold change against statistical significance, mapping the clearest biomarkers at the top corners of the plot.
