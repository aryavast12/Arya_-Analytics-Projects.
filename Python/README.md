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
