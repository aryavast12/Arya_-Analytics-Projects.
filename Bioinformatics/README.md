# [cite_start]Protein Classification and Analysis: GPCRs [cite: 5, 7]

## 🧬 Overview
[cite_start]This project focuses on the classification and analysis of G-protein coupled receptors (GPCRs) using data extracted from the Human Protein Atlas (HPA)[cite: 5, 6, 7]. [cite_start]GPCRs are a massive family of membrane proteins responsible for transmitting cellular signals and currently serve as the target for 30% to 40% of medicinal drugs in personalized and targeted therapies[cite: 9, 10, 12]. 

[cite_start]This repository documents the data mining process and the subsequent analysis of these proteins based on their chromosome origin, subcellular locations, and molecular functions[cite: 24, 31, 39].

## 🛠️ Methodology
The data was collected and processed using the following bioinformatics workflow:
* [cite_start]**Database Mining:** Accessed the Human Protein Atlas and filtered for the "G-protein coupled receptors" protein class[cite: 13, 17].
* [cite_start]**Data Selection:** Applied column filters to isolate gene production, biological filters, and gene origin[cite: 20].
* [cite_start]**Processing:** Downloaded the filtered dataset in TSV format and processed it using Microsoft Excel[cite: 21, 23].
* [cite_start]**Analysis:** Sorted and analyzed the dataset to identify peak gene counts by chromosome, major subcellular locations (e.g., plasma membrane), and primary biological and molecular functions[cite: 15, 16, 19].

## 📊 Key Findings

### 1. Chromosome Distribution
* [cite_start]**Chromosome 3** contains the highest concentration of GPCR genes in this dataset, holding a total of three[cite: 27, 51].
* [cite_start]Chromosomes 5, 12, and X each carry two GPCR genes, while chromosomes 4, 6, 7, 10, and 19 have a single gene each[cite: 28, 30].

### 2. Subcellular Localization
* [cite_start]As expected, the **plasma membrane** was the most frequent location[cite: 33]. 
* [cite_start]Interestingly, a surprising number of proteins showed localization in the cytosol, neoplasm, and rarer areas like actin filaments and nuclear speckles[cite: 34, 35, 52].
* [cite_start]This dual localization in somatic compartments suggests that GPCRs may have more complex, compartment-specific signaling roles or internal trapping mechanisms beyond traditional transmembrane signaling[cite: 36, 37, 38].

### 3. Molecular & Biological Function
* [cite_start]**Molecular:** The primary role of these proteins was confirmed as receptor and signal transducer activity, acting as the cell's signal detectors to translate external messages[cite: 42, 43]. 
* [cite_start]**Biological:** Specific biological process data was highly limited within the dataset; however, the `CALY` gene was notably associated with endocytosis and identified as an FDA-approved drug target[cite: 40, 41, 58].

### 4. Protein Classifications
* [cite_start]The dataset primarily consisted of 'predicted membrane proteins' (12 entries), aligning with standard GPCR expectations[cite: 46]. 
* [cite_start]A smaller subset (4 proteins) was classified as 'predicted intracellular proteins,' alongside a few transporters and plasma proteins[cite: 47, 48, 49].

## 🎓 Academic Context
[cite_start]This analysis was completed as part of **Module 2: Biological Databases** for the PGD Bioinformatics program at St. Xavier's College[cite: 2, 3, 4].

## ✍️ Author
[cite_start]**Arya Shailesh Vast** [cite: 1]
