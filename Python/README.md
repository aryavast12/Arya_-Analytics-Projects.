# CLI Restaurant Order System

## 🎯 Objective
To build an interactive Command-Line Interface (CLI) application that processes customer orders, validates menu items, and dynamically calculates the final bill.

## 🛠️ Tools & Concepts Used
* **Python:** Dictionaries, Conditional Statements (`if/else`), User Input Handling, String Formatting (f-strings), and Arithmetic Operators.

## 💻 Project Overview
This is a foundational Python script that simulates a restaurant ordering process. It utilizes a dictionary to store menu items and their corresponding prices. 

### Key Features:
* **Menu Dictionary:** Uses key-value pairs to store and retrieve pricing data efficiently.
* **Input Validation:** Checks user input against the dictionary keys to ensure the ordered item actually exists on the menu before adding it to the bill.
* **Dynamic Calculation:** Maintains a running `order_total` variable that updates in real-time as the user chooses to add subsequent items.
* **Interactive Prompts:** Guides the user through a continuous flow, asking if they would like to add additional items to their order.

## 🚀 How to Run
Run the script in any standard Python environment or terminal. Follow the on-screen text prompts to place an order.

---

# Secure Password Generator

## 🎯 Objective
To create a utility script that generates high-entropy, randomized passwords based on user-defined length requirements.

## 🛠️ Tools & Concepts Used
* **Python Modules:** `string` (for character sets) and `random` (for non-sequential sampling).
* **Data Structures:** Lists and character arrays.
* **Methods:** `list.extend()`, `random.sample()`, and `"".join()`.

## 💻 Project Overview
This script automates the creation of secure passwords by combining lowercase letters, uppercase letters, digits, and punctuation marks into a single character pool.

### Key Features:
* **Comprehensive Character Pool:** Utilizes the full `string` library to ensure passwords meet standard complexity requirements (Alphanumeric + Special Characters).
* **Random Sampling:** Uses `random.sample()` to ensure that characters are picked without replacement from the pool, preventing predictable patterns.
* **Customizable Length:** Allows the user to define exactly how long the password should be via terminal input.

---
# Multi-Tenant Rent & Utility Calculator

## 🎯 Objective
To automate the calculation of individual financial contributions in a shared living space, accounting for fixed rent, variable food costs, and metered electricity usage.

## 🛠️ Tools & Concepts Used
* **Python:** Integer casting (`int`), Variable Assignment, and Arithmetic Operators.
* **Mathematical Logic:** Floor Division (`//`) to ensure clean, whole-number currency outputs.

## 💻 Project Overview
This script acts as a financial organizer for roommates or hostel residents. It takes multiple cost inputs and divides them equally among the total number of occupants.

### Key Features:
* **Utility Metering:** Calculates the electricity bill dynamically by multiplying units spent by the cost per unit.
* **Consolidated Billing:** Aggregates rent, food, and utilities into a single `total_bill` before division.
* **Per-Capita Distribution:** Automatically adjusts the final output based on the number of persons living in the flat.
* **User-Friendly CLI:** Uses clear prompts to guide the user through entering their monthly expenses.

## 🚀 How to Run
Run the script and enter the requested values (Rent, Food, Electricity Units, Charge per Unit, and Number of People). The script will return the exact amount each person owes.
* **Clean Output:** Uses the `.join()` method to convert the randomized list of characters back into a seamless string for the user.

## 🚀 How to Run
Run the script in your terminal. When prompted, enter the desired numerical length for your password (e.g., 12 or 16).

---
# Python Foundations for Biological Data Analysis

## 🎯 Objective
To apply core Python programming logic—including list manipulation, iterative loops, and conditional statements—to solve common computational problems in biological and laboratory settings.

## 🛠️ Tools & Concepts Used
* **Data Structures:** Python Lists and List Comprehensions.
* **Control Flow:** `for` loops, `while` loops, and `if/else` conditional logic.
* **Mathematical Operations:** Aggregation (sum), Cumulative Products, and Power operations.

## 💻 Project Overview
This collection of scripts demonstrates the ability to translate scientific questions into efficient code. By using descriptive variable naming, the logic remains clear for both developers and researchers.

### Key Applications:
* **DNA Fragment Analysis:** Utilizing the `sum()` function to calculate the total length of multiple DNA fragments.
* **Cell Morphology Statistics:** Implementing list comprehensions to calculate the "Sum of Squares" for cell count variance.
* **Microbiological Modeling:** Using loops to calculate total bacterial growth based on multiple growth factors.
* **Genomic Sequencing:** Manually reversing gene sequences using `while` loops to demonstrate a deep understanding of index manipulation.
* **Data Filtering:** Sorting and aggregating sample weights and petal counts based on specific numeric criteria (even/odd/max/min).

## 🚀 How to Run
These snippets can be run in any standard Python environment or a Jupyter/Colab notebook. Each block is self-contained with print statements showing the input data vs. the calculated output.

---
# Object-Oriented System Simulations (OOP & File I/O)

## 🎯 Objective
To implement robust, reusable code structures using Object-Oriented Programming (OOP) principles and persistent data storage through File I/O operations.

## 🛠️ Tools & Concepts Used
* **OOP Principles:** Class Inheritance, Encapsulation (Private Variables), and Constructor Methods (`__init__`).
* **Persistent Storage:** File reading (`r`) and appending (`a`) to maintain data across sessions.
* **Error Handling:** `try-except` blocks to prevent crashes during FileNotFoundError or ValueError.
* **Modular Logic:** Function-based architecture for clean, readable code.

## 💻 Integrated Modules:

### 1. Student Management System
* **Concept:** Demonstrates **Inheritance** by creating a `Student` subclass that inherits attributes from a base `Person` class.
* **Functionality:** Collects user input and saves student records to a permanent `students.txt` database.

### 2. Encapsulated Banking Simulation
* **Concept:** Showcases **Encapsulation** by using private attributes (`__balance`) to protect sensitive data from direct external modification.
* **Functionality:** Features a complete transaction system with deposits, withdrawals (with limit checks), and a persistent `transactions.txt` log for auditing history.

### 3. Temperature Conversion Utility
* **Logic:** Implements mathematical conversions for Celsius, Fahrenheit, and Kelvin scales with user-driven input validation.

  ---
  # Exploratory Data Analysis (EDA): Restaurant Tipping Behavior

## 🎯 Objective
To perform a comprehensive statistical and visual analysis of consumer tipping patterns to identify key revenue drivers and behavioral trends.

## 🛠️ Tools & Libraries Used
* **Python:** Data manipulation and statistical computation.
* **Pandas & NumPy:** Data cleaning, type conversion, and descriptive statistics.
* **Seaborn & Matplotlib:** Advanced data visualization (Heatmaps, Violin plots, Boxplots).

## 📊 Project Workflow

### 1. Data Sanitization
* **Cleaning:** Identified and handled missing values to ensure data integrity.
* **Normalization:** Renamed features for business clarity (e.g., `TotalBill`, `SmokerStatus`) and ensured correct data types for mathematical analysis.

### 2. Statistical Profiling
* Calculated central tendency (Mean/Median) and dispersion (Standard Deviation) to understand the "average" customer profile.
* **Distribution Analysis:** Discovered that both bills and tips follow a **right-skewed distribution**, indicating a high volume of standard transactions with a few high-value outliers.

### 3. Visual Insights & Bi-Variate Analysis
* **Correlation:** Used a Heatmap to confirm a strong positive correlation (0.68) between bill size and tip amount.
* **Categorical Trends:** Identified that weekends and dinner times are peak periods for both customer volume and higher total expenditure.
* **Outlier Detection:** Used Boxplots to isolate anomalies in party sizes and extreme tipping behavior.

## 💡 Conclusion & Business Impact
The analysis suggests that tipping behavior is most strongly influenced by the total bill and the time of day rather than the smoking status of the guest. This data could be used to build a **Predictive Linear Regression model** to forecast weekly staffing needs based on projected revenue.
