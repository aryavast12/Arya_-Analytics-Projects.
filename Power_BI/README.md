# Genomic Data Analytics: ALB Mutation Profiling (COSMIC)

## 🎯 Objective
To develop an interactive Business Intelligence dashboard that translates complex genomic mutation data from the COSMIC (Catalogue Of Somatic Mutations In Cancer) database into actionable clinical and demographic insights focusing on the ALB (Albumin) gene.

## 🛠️ The Tech & Bio Stack
* **Business Intelligence:** Power BI Desktop for interactive dashboard design and DAX measure calculations.
* **Data Processing:** Power Query for data sanitization, shaping, and structuring raw genomic datasets.
* **Data Source:** COSMIC Database (Targeted ALB gene extraction).

## 📊 Project Overview
This dashboard serves as a high-level analytical tool for clinical researchers, providing an immediate visual summary of mutation frequencies, affected primary tissue sites, somatic statuses, and patient demographics. It empowers users to slice complex biological data without needing to write backend queries.

### 🧬 Key Clinical Insights & Features:
* **High-Level Genomic KPIs:** Instant tracking of scale, displaying 956 Total Samples, 967 Tumours, and 1,236 Total Mutations.
* **Tissue Specificity:** A horizontal bar chart reveals that the **Liver** is the overwhelmingly dominant primary site for ALB mutations, accounting for nearly 50% (602/1236) of all recorded mutations.
* **Mutation Hotspots (CDS):** A targeted bar chart isolates the most frequent coding DNA sequence (CDS) mutations, identifying **C.1194C>T** and **C.1300C>T** as primary hotspots.
* **Demographic Vulnerability:** A histogram mapping age distribution shows a significant peak in mutation frequency within the **50–70 age demographic**.
* **Somatic Profiling:** A donut chart visualizes mutation classifications, confirming that a vast majority (78.4%) are Confirmed Somatic Variants.
* **Interactive Drill-Down:** Dynamic slicers allow researchers to filter the entire dashboard by Primary Site, Somatic Status, and specific Age Bins to isolate granular trends.

## 📸 Dashboard Preview
<img width="1024" height="551" alt="image" src="https://github.com/user-attachments/assets/85c1776e-0e44-4383-b7a8-3215d7f277aa" />

