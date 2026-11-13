# 🛍️ Customer Shopping Behavior Analysis

📊 Analysis of **3,900 customer purchases** to understand spending patterns, customer
segments, product preferences and subscription behavior.

---

## 🧰 Tools Used
- 🐍 **Python (pandas):** data loading, exploration, cleaning and feature engineering
- 🗄️ **MySQL Workbench:** SQL analysis of business questions
- 📈 **Power BI:** interactive Customer Behavior Dashboard

## 📁 Dataset
- 📋 3,900 rows and 18 columns
- 👥 Customer demographics, purchase details and shopping behavior
- ⚠️ 37 missing values in Review Rating

## 🚀 What I Did

### 🐍 1. Python
- 🔍 Explored the data with `df.info()` and `.describe()`
- 🩹 Filled missing Review Ratings with the median rating of each category
- 🏷️ Renamed columns to snake_case
- ✨ Created `age_group` and `purchase_frequency_days`
- 🗑️ Dropped the redundant `promo_code_used` column

### 🗄️ 2. SQL
Answered business questions on:
- 👫 Revenue by gender
- 🏷️ High-spending discount users
- ⭐ Top-rated products
- 🚚 Shipping type comparison
- 🔔 Subscribers vs non-subscribers
- 💸 Discount-dependent products
- 🧑‍🤝‍🧑 Customer segmentation (New, Returning, Loyal)
- 🔁 Repeat
