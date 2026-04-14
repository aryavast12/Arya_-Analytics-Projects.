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

# Evaluating Plasmid Suitability for Molecular Cloning

## 🧬 Overview
This project evaluates the potential of two natural plasmids, **pAcX50a** and **pAcX50b**, isolated from the nitrogen-fixing bacterium *Azotobacter chroococcum*, for use as molecular cloning vectors. 

The study utilizes in-silico restriction enzyme analysis, restriction map construction, and simulated agarose gel electrophoresis to assess the structural and functional viability of these plasmids for assembling and propagating recombinant DNA.

## 🛠️ Tools & Technologies
* **Sequence Retrieval:** NCBI / PLSDB
* **Restriction Enzyme Analysis:** NEBcutter
* **Plasmid Mapping & Visualization:** SnapGene

## 🔬 Methodology
1. **Sequence Retrieval:** Extracted plasmid sequences for pAcX50a (10,435 bp) and pAcX50b (13,852 bp).
2. **Feature Analysis:** Identified critical vector components, including the origin of replication (ori) and gene organization.
3. **Enzyme Selection:** Performed restriction analysis using NEBcutter to identify unique cut sites in safe zones (away from essential genes).
4. **Map Construction:** Built detailed restriction maps indicating gene regions and enzyme cut sites.
5. **Simulation:** Ran simulated agarose gel electrophoresis for fragment visualization.
6. **Evaluation:** Compared both plasmids against standard cloning vector requirements (ori, selectable markers, Multiple Cloning Sites).

## 📊 Key Findings & Comparative Analysis

### Plasmid 1: pAcX50a (Accession: CP010416)
* **Size:** 10,435 bp
* **Origin of Replication:** Contains a *trfA*-like replication initiator gene.
* **Cloning Features:** Lacks selectable markers, an MCS, and a promoter for inserted genes.
* **Potential Insertion Sites:** `SpeI` and `SrfI` were identified as the best potential sites for gene insertion, as they are unique cutters located away from essential genes.

### Plasmid 2: pAcX50b (Accession: CP010417)
* **Size:** 13,852 bp (Carries a larger genetic load).
* **Origin of Replication:** Contains a *trfA*-like replication initiator protein (Achr_b90).
* **Cloning Features:** Lacks selectable markers, an MCS, and a promoter.
* **Potential Insertion Sites:** `HindIII` and `XbaI` serve as the most viable unique cut sites for potential engineering.

## 💡 Conclusion
Both pAcX50a and pAcX50b are naturally occurring plasmids that are currently **poorly suited** for immediate molecular cloning. While they possess an origin of replication and have potential unique restriction sites located in safe zones, the absence of selectable markers (e.g., antibiotic resistance) and a centralized Multiple Cloning Site (MCS) severely limits their laboratory utility. 

To be utilized effectively as cloning or expression vectors in biotechnology, both plasmids would require significant genetic engineering to introduce these missing essential elements.

## 🤝 Authors
* **Arya Vast** (Project Lead)
* **Nikita Divate** (Collaborator - Group 10)

----
# Structural Modelling, Validation, and Analysis of HeV-g2 Attachment Glycoprotein

## 🧬 Overview
HeV-g2 is a newly discovered Henipavirus variant recently identified in horses and bats. The experimental 3D structure of its attachment glycoprotein is currently unknown, creating a gap in our understanding of the virus. This project generates a 3D homology model for the protein (Accession: UCY33688) to analyse its structural stability compared to the pathogenic Hendra virus. These insights are critical for predicting how the virus interacts with host receptors.

## 🛠️ Tools & Technologies
* **SWISS-MODEL:** Used for homology modelling of the protein structure.
* **ProSA-web:** Utilized for global quality estimation and analyzing the model's energy profile.
* **PROCHECK (SAVES v6.0):** Applied for stereochemical validation and Ramachandran plot generation.
* **UCSF Chimera:** Used for detailed 3D structural analysis and visualization.

## 🔬 Methodology
* **Target Sequence:** Selected the HeV-g2 attachment glycoprotein (Accession: UCY33688) to serve as the target sequence.
* **Structural Template:** Identified the Hendra Virus glycoprotein (PDB ID: 6PDL) as the optimal structural template.
* **Alignment:** Achieved a 92.82% sequence identity match. Ensured high model confidence, since identity scores above 90% typically yield accurate structures with minimal error.

## 📊 Validation & Quality Results

### Stereochemical Validation
* Assessed the stereochemical quality of the protein backbone using the Ramachandran plot via PROCHECK.
* Observed that 88.4% of residues fall within the "Most Favoured Regions", indicating a highly stable structure.
* Outperformed the reference study, which reported a slightly lower score of 86.9% in favoured regions.
* Confirmed excellent model quality, with only 0.3% outliers (a single residue) found in the disallowed regions.

### Global & Local Quality Estimation
* **Global Z-Score:** Evaluated the model's energy profile against experimentally determined protein structures, achieving a Z-Score of -7.91, indicating a stable, native-like conformation. This surpassed the reference study's benchmark of -7.79.
* **Local Quality:** Analyzed the structural reliability of individual amino acids, observing high confidence scores that align with stable beta-sheet regions and confirm the rigidity of the propeller blades. Dips in the graph correspond to flexible loops on the protein surface, demonstrating a realistic biological balance between a stable internal core and surface flexibility.

## 🧩 Structural Insights
* Reveals a classic six-bladed beta-propeller fold, a structural signature typical of the Henipavirus attachment glycoproteins.
* Shows a dominance of anti-parallel beta-sheets, which arrange symmetrically to form the "blades" of the propeller.
* Highlights the conserved architecture required for binding to the host receptor EFNB2, suggesting a shared infection mechanism with the Hendra and Nipah viruses.

## 🎓 Academic Context
This project was completed for the PGD Bioinformatics program at St. Xavier's College.

## ✍️ Author
**Arya Shailesh Vast**
