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
