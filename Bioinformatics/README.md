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

---

# Differential Gene Expression Analysis in Duchenne Muscular Dystrophy (DMD)

## 🧬 Overview
This repository contains an R-based differential gene expression (DGE) analysis pipeline investigating Duchenne Muscular Dystrophy (DMD), a rare neuromuscular disorder. Using publicly available transcriptomic data from the GEO database, this project identifies statistically significant genes that are differentially expressed between DMD patients and healthy controls.

## 📊 Dataset Details
* **GEO Accession:** GSE38417
* **Organism:** *Homo sapiens*
* **Sample Type:** Skeletal Muscle Biopsies
* **Platform:** Affymetrix Human Genome U133 Plus 2.0
* **Study Design:** 22 total samples (16 DMD patient biopsies vs. 6 pathologically normal control biopsies).

## 🛠️ Tech Stack & Libraries
* **Language:** R
* **Data Retrieval:** `GEOquery`
* **Statistical Analysis:** `limma`, `Biobase`
* **Data Visualization:** `ggplot2`

## 🔬 Methodology Workflow
1. **Data Acquisition:** Retrieved the GSE38417 expression matrix and sample metadata directly from the GEO database using R.
2. **Data Preprocessing:** Extracted, organized, and classified the samples into two distinct groups: `DMD` and `Control`.
3. **Statistical Modelling:** Constructed a design matrix and utilized a linear model (`lmFit`) combined with Empirical Bayes statistics (`eBayes`) via the `limma` package to evaluate differential expression.
4. **Significance Thresholding:** Filtered for statistically significant dysregulated genes using a strict threshold of **|log₂ Fold Change| > 1** and an **Adjusted P-value (FDR) < 0.05**.

## 📈 Results & Visualizations
The analysis output includes a comprehensive list of differentially expressed genes, saved as `DMD_DEG_results.csv`. 

To visualize the distribution of these dysregulated genes, a **Volcano Plot** was generated (`Volcano_DMD.png`). In this plot:
* The x-axis represents the log₂ fold change.
* The y-axis represents the statistical significance (−log₁₀ adjusted p-value).
* Genes exhibiting significant differential expression are highlighted in blue, distinctly separating them from non-significant genes.

## 🚀 Usage
To reproduce this analysis, run the provided R script. Ensure you have the necessary CRAN and Bioconductor packages installed:
```R
install.packages(c("rlang", "vctrs", "scales", "gtable", "ggplot2"))
BiocManager::install(c("GEOquery", "limma", "Biobase"))






---
# Molecular Docking Protocol Validation and Rational Ligand Modification of EGFR Kinase Domain (1M17)

## 🧬 Overview
This project focuses on validating a molecular docking protocol and applying rational ligand modifications to the Epidermal Growth Factor Receptor (EGFR) kinase domain. Using PDB ID: 1M17, a highly validated oncology target, the study aims to establish a reliable docking procedure and explore how specific structural changes to a native inhibitor (AQ4) affect binding affinity within the ATP-binding pocket.

## 🛠️ Tools & Technologies
* **UCSF Chimera (v1.16):** Used for receptor preparation, RMSD validation calculations, and generating 3D receptor-ligand interaction visualizations.
* **MolView (Web Server):** Utilized for sketching rational modifications and applying the UFF force field for energy minimization.
* **PyRx (AutoDock Vina):** Applied for file format conversion, defining grid box parameters, and executing batch docking.

## 🔬 Methodology

### 1. Receptor Preparation
The 1M17 receptor was prepared using UCSF Chimera. Missing residues and incomplete side chains were repaired using the Dock Prep tool. Polar hydrogens were added to assign physiological protonation states, and AMBER charges were computed.

### 2. Validation Protocol
A redocking procedure was performed to validate the protocol and the selected grid box. The extracted native ligand (AQ4) was redocked into the prepared active site using AutoDock Vina via PyRx. The maximized grid box allowed the ligand to freely sample alternative conformations.

### 3. Rational Ligand Modification Strategy
Based on Structure-Activity Relationship (SAR) principles, ten rational modifications were designed and applied to the native AQ4 ligand. These modifications aimed to:
* Probe the steric boundaries of the hydrophobic cleft.
* Introduce novel hydrogen-bonding interactions.
* Evaluate the effects of bio isosteric substitutions.

## 📊 Key Results

* **Baseline Validation:** The native ligand (AQ4) achieved a baseline binding affinity of -6.8 kcal/mol. Structural alignment of the redocked ligand against the original conformation yielded an RMSD of 5.119 Å, reflecting the use of a maximized grid box.
* **Best Modification (Mod 9):** Chain shortening optimized the distance for ideal solvent-channel interaction, resulting in the highest binding affinity improvement to **-7.6 kcal/mol**. Visual analysis confirmed a deep, high-affinity fit within the hydrophobic cleft.
* **Neutral/Worst Modification (Mod 3):** The addition of a hydroxyl (-OH) group failed to yield an energetic advantage (remaining at -6.8 kcal/mol), likely due to a lack of proximity to appropriate polar residues in the binding pocket.
* **Other Findings:** Several modifications, including terminal carbon addition, halogen substitutions (Fluorine, Chlorine), and ethoxy side-chain extensions, consistently improved binding affinities compared to the baseline.

## 🎓 Academic Context
This docking and ligand modification project was completed as part of the PG Diploma in Bioinformatics program at St. Xavier's College.

## ✍️ Author
**Arya Vast**




---

# Comparative Molecular Dynamics Analysis of Viral Attachment Proteins

## 🧬 Overview
This project investigates the binding dynamics between viral attachment proteins (Virus A and Virus B) and the host cell's E2 receptor. By performing a 200-nanosecond (ns) Molecular Dynamics (MD) simulation, the physical movements of these complexes were tracked over time to determine which virus establishes a more effective and stable attachment to the host. 

The comparative analysis evaluates structural stability, compactness, solvent exposure, and interaction strength to draw conclusions about viral infectivity mechanisms.

## 🛠️ Tools & Technologies
* **GROMACS:** Utilized for executing the 200-ns Molecular Dynamics (MD) simulations.
* **Trajectory Analysis:** Assessment of Root Mean Square Deviation (RMSD), Radius of Gyration (Rg), Solvent Accessible Surface Area (SASA), and Hydrogen Bond formations.

## 📊 Key Findings

### 1. Structural Stability (RMSD)
* **Virus A:** Demonstrated exceptional structural stability, maintaining a steady, low average RMSD of approximately 0.30 nm, indicating a rigid and secure backbone.
* **Virus B:** Experienced higher initial fluctuations before stabilizing at a higher average of 0.45 nm, indicating a more flexible backbone structure.

### 2. Complex Compactness (Radius of Gyration - Rg)
* **Virus B** maintained a significantly lower Rg value (~2.45 nm) compared to **Virus A** (~2.70 nm). 
* This indicates that while Virus B has a flexible backbone, it folds into a much tighter, securely packed conformation when locked onto the E2 receptor.

### 3. Solvent Exposure (SASA)
* **Virus B** exhibited a lower SASA profile (averaging ~235-245 nm²) compared to **Virus A** (~260-270 nm²).
* This corroborates the Rg data: Virus B's tight packing against the receptor buries its interacting surfaces, leaving less of its internal structure exposed to the surrounding solvent.

### 4. Interaction Strength (Hydrogen Bonds)
* **Virus B** consistently formed a higher number of hydrogen bonds with the E2 receptor (averaging >410 bonds) compared to **Virus A** (averaging <400 bonds).
* This higher bond density provides Virus B with a stronger, more resilient grip on the host cell.

## 💡 Conclusion
The comparative simulation reveals a distinct dynamic between the two viruses. While Virus A presents a more rigid overall backbone, Virus B compensates for its initial flexibility by forming a remarkably compact interaction interface (lower Rg and SASA) and establishing a significantly stronger network of hydrogen bonds. 

Based on these computational models, the tighter packing and superior hydrogen-bonding network strongly suggest that **Virus B forms a more efficient, high-affinity connection** with the host E2 receptor.

## 🎓 Academic Context
This Molecular Dynamics simulation and analysis project was completed as part of the PG Diploma in Bioinformatics program at St. Xavier's College.

## ✍️ Author
**Arya Vast**
