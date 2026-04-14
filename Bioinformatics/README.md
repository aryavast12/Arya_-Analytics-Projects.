# Protein Classification and Analysis: GPCRs

## 🧬 Overview
This project focuses on the classification and analysis of G-protein coupled receptors (GPCRs) using data extracted from the Human Protein Atlas (HPA). GPCRs are a massive family of membrane proteins responsible for transmitting cellular signals and currently serve as the target for 30% to 40% of medicinal drugs in personalized and targeted therapies. 

This repository documents the data mining process and the subsequent analysis of these proteins based on their chromosome origin, subcellular locations, and molecular functions.

## 🛠️ Methodology
The data was collected and processed using the following bioinformatics workflow:
* **Database Mining:** Accessed the Human Protein Atlas and filtered for the "G-protein coupled receptors" protein class.
* **Data Selection:** Applied column filters to isolate gene production, biological filters, and gene origin.
* **Processing:** Downloaded the filtered dataset in TSV format and processed it using Microsoft Excel.
* **Analysis:** Sorted and analyzed the dataset to identify peak gene counts by chromosome, major subcellular locations (e.g., plasma membrane), and primary biological and molecular functions.

## 📊 Key Findings

### 1. Chromosome Distribution
* **Chromosome 3** contains the highest concentration of GPCR genes in this dataset, holding a total of three.
* Chromosomes 5, 12, and X each carry two GPCR genes, while chromosomes 4, 6, 7, 10, and 19 have a single gene each.

### 2. Subcellular Localization
* As expected, the **plasma membrane** was the most frequent location. 
* Interestingly, a surprising number of proteins showed localization in the cytosol, neoplasm, and rarer areas like actin filaments and nuclear speckles.
* This dual localization in somatic compartments suggests that GPCRs may have more complex, compartment-specific signaling roles or internal trapping mechanisms beyond traditional transmembrane signaling.

### 3. Molecular & Biological Function
* **Molecular:** The primary role of these proteins was confirmed as receptor and signal transducer activity, acting as the cell's signal detectors to translate external messages. 
* **Biological:** Specific biological

---
