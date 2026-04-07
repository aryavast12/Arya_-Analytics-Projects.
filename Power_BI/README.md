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

---

# Global Operations KPI Dashboard

## 🎯 Objective
To provide executive leadership with a consolidated, high-level view of global operational performance, tracking profitability, cost management, and unit volume across international markets and product lines.

## 🛠️ The Tech Stack
* **Business Intelligence:** Power BI Desktop for interactive dashboard design and data modeling.
* **Data Processing:** DAX (Data Analysis Expressions) for calculating dynamic operational metrics and aggregations.
* **Data Visualization:** Matrix tables, column charts, time-series line charts, and KPI summary cards.

## 📊 Project Overview
This dashboard acts as a strategic operations tracker, allowing stakeholders to quickly assess the health of global manufacturing and sales. By contrasting Total Costs against Operational Profit, the tool helps identify which products and regions are driving the business forward and which may require cost-optimization.

### 🌍 Key Operational Insights & Features:
* **Executive Scale KPIs:** High-level tracking of massive operational scale—managing 1.13M total units and $101.83M in costs to successfully generate ~$16.89M in Operational Profit.
* **Product Line Dominance:** A detailed matrix analysis reveals 'Paseo' as the flagship product, driving the highest volume (338K+ units) and yielding the highest operational profit (~$4.79M) compared to lines like Amarilla or Velo.
* **Geographical Profitability:** A column chart comparing international markets shows European regions (France and Germany) leading in operational profitability, closely followed by the Canadian market.
* **Temporal Volatility:** Time-series analysis tracking Total Units by Date identifies critical operational peaks in mid-to-late 2014 (specifically June and October). This historical trend data is essential for future supply chain forecasting and inventory management.

## 📸 Dashboard Preview
<img width="787" height="626" alt="image" src="https://github.com/user-attachments/assets/93e08a0d-6553-4c28-a785-f3f2ca53e7d4" />

---
# Global Financial Audit: Revenue Leakage & Margin Optimization

## 🎯 Objective
To identify and analyze "Revenue Leakage"—the gap between projected and actual revenue—primarily driven by excessive discounting, and to provide data-backed recommendations for margin recovery.

## 🛠️ The Tech Stack
* **Business Intelligence:** Power BI Desktop for complex financial modeling and variance analysis.
* **Data Processing:** DAX (Data Analysis Expressions) used to calculate specific leakage rates, projected vs. actual revenue variances, and percentage distributions.
* **Data Source:** Historical global sales and shipping datasets (1996–1998).

## 📊 Project Overview
This dashboard serves as a strategic risk-management tool. It identifies where projected revenue is being eroded, allowing financial controllers to audit discount approval thresholds and regional sales behavior. By quantifying "leakage," the tool turns abstract losses into a prioritized financial recovery plan.

### 💰 Key Financial Insights & Features:
* **Core Audit KPIs:** High-visibility tracking of the **6.55% Global Leakage Rate**, identifying a total revenue gap of **$88.67K** ($1.35M Projected vs. $1.27M Actual).
* **Geographic Risk Assessment:** A detailed performance table isolating the **USA** as the primary financial hotspot, accounting for ~$17.9K of total leakage.
* **Category Vulnerability:** A pie chart breakdown identifying **Beverages (21.04%)** and Dairy Products as the sectors most susceptible to margin erosion through aggressive discounting.
* **Historical Trend Analysis:** A time-series line chart tracking leakage from 1996–1998, pinpointing a critical peak in 1997 that suggests a need for tighter seasonal fiscal controls.
* **Interactive Auditing:** Slicers for ShipCountry and Category enable stakeholders to drill down from global trends into specific regional sales representative behaviors.

## 💡 Strategic Recommendation
Based on the high leakage volume in US-based Beverage sales, the data suggests an immediate audit of discount approval thresholds is required to mitigate further margin loss and improve the global bottom line.

## 📸 Dashboard Preview
<img width="1330" height="739" alt="image" src="https://github.com/user-attachments/assets/31c6e1cd-e07f-40ac-9e69-f0e39fa89a64" />

