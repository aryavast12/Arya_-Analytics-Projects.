# Healthcare Revenue Audit: Claims Rejection Analysis

## 🎯 Objective
To identify and quantify financial "leakage" in healthcare billing by analyzing insurance claim rejections, isolating root causes for denials, and calculating the total impact on hospital revenue.

## 🛠️ SQL Technical Stack
* **Data Aggregation:** Utilized `SUM()`, `COUNT()`, and `AVG()` to calculate total financial losses and rejection frequencies.
* **Complex Joins:** Implemented `INNER JOIN` and `LEFT JOIN` to link Patient records, Claims data, and Rejection reason codes across multiple database tables.
* **Filtering & Logic:** Used `WHERE` clauses and `CASE` statements to categorize rejections into actionable groups (e.g., "Coding Errors," "Eligibility Issues," "Documentation Gaps").
* **Performance Optimization:** Leveraged `GROUP BY` and `ORDER BY` to generate ranked lists of the most "expensive" rejection reasons for executive review.

## 📊 Business Logic & Workflow
This script simulates a real-world financial audit within a clinical setting. By querying the claims database, the analysis reveals which specific rejection codes are causing the most significant delays in cash flow.

### Key Analysis Milestones:
1. **Denial Rate Calculation:** Isolating the percentage of total claims that were rejected versus those successfully processed.
2. **Revenue at Risk:** Quantifying the total dollar amount currently held in "Rejection Status" to prioritize follow-ups.
3. **Provider Performance:** Segmenting rejections by department or physician to identify where additional training in clinical documentation is required.
---

# Healthcare Lab Operations & Performance Analysis

## 🎯 Objective
To build a robust relational database for hospital laboratory management and perform advanced analytical queries to monitor Turnaround Time (TAT), test distribution, and financial performance.

## 🛠️ Advanced SQL Techniques Used
* **Data Definition (DDL):** Designed and implemented a relational schema with Primary/Foreign key constraints for Hospital Departments and Lab Results.
* **Window Functions:** Leveraged `ROW_NUMBER()`, `RANK()`, and `DENSE_RANK()` for result sequencing and `LAG/LEAD` for comparative period-over-period revenue analysis.
* **Complex Joins:** Utilized `INNER JOIN` for operational analysis and `LEFT JOIN` for comprehensive auditing and data coverage checks.
* **Conditional Logic:** Implemented `CASE WHEN` statements to categorize performance metrics (e.g., classifying Turnaround Times as 'Fast', 'Moderate', or 'Critical Delay').
* **Statistical Aggregation:** Applied `GROUP BY` and `HAVING` filters to calculate departmental averages, minimums, and maximums for lab efficiency reporting.

## 📊 Business Logic & Clinical Insights
This suite demonstrates the ability to translate raw clinical timestamps into operational intelligence.

### Key Analysis Milestones:
1. **Turnaround Time (TAT) Optimization:** Identified departments with "Critical Delays" (TAT > 24 hours) using automated case logic.
2. **Departmental Efficiency:** Segmented lab tests by volume and average speed to isolate bottlenecks in specialized departments like Microbiology and Hematology.
3. **Revenue Growth Tracking:** Utilized `LAG()` functions on sales data to compare current-day revenue against previous performance, enabling real-time growth monitoring.
