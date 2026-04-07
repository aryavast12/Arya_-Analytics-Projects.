# Predictive Machine Learning for Triple-Negative Breast Cancer (TNBC)

## 🎯 Objective
To develop and compare robust Machine Learning models for the classification of Triple-Negative Breast Cancer (TNBC) cases, focusing on accuracy, precision, and model interpretability in a clinical diagnostic setting.

## 🛠️ The Data Science Stack
* **Python:** Core programming and logic.
* **Scikit-Learn:** Implementation of Random Forest and Logistic Regression algorithms, cross-validation, and performance metrics.
* **Pandas & NumPy:** Feature engineering and data pre-processing.
* **Matplotlib & Seaborn:** Visualizing confusion matrices, ROC curves, and feature importance.

## 🧬 Project Workflow

### 1. Data Engineering
* Performed data sanitization and feature scaling to ensure model stability.
* Handled class imbalances and performed feature selection to isolate the most significant biological markers.

### 2. Model Architecture: Comparative Analysis
* **Logistic Regression:** Implemented as a baseline linear classifier to establish a statistical probability of classification.
* **Random Forest:** Deployed an ensemble learning approach to capture non-linear relationships between biological features, utilizing multiple decision trees to reduce overfitting.

### 3. Evaluation & Metrics
* Utilized **Confusion Matrices** and **Classification Reports** (Precision, Recall, F1-Score) to assess diagnostic reliability.
* Analyzed **ROC-AUC curves** to determine the trade-off between sensitivity and specificity, critical for medical diagnostic tools.

## 📊 Key Findings
* **Random Forest** outperformed Logistic Regression in capturing complex interactions between gene expression/clinical features.
* Identified key "Feature Importance" metrics, pinpointing which specific biological variables were the strongest predictors of TNBC classification.
