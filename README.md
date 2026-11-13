# 🛍️ Customer Shopping Behavior Analysis

📊 An end-to-end data analysis project on **3,900 customer purchases**: cleaned the data with Python, analyzed it with SQL, built an interactive Power BI dashboard, extracted business insights and wrote a full PDF report.

---

## 🎯 Project Goal
Uncover insights into 💸 spending patterns, 🧑‍🤝‍🧑 customer segments, 👕 product preferences and 🔔 subscription behavior to guide strategic business decisions.

## 🧰 Tools Used
- 🐍 **Python (pandas):** data loading, exploration, cleaning and feature engineering
- 🗄️ **MySQL Workbench:** SQL analysis of business questions
- 📈 **Power BI:** interactive Customer Behavior Dashboard
- 📄 **PDF report:** documented the full process, results and insights

## 📁 Dataset
- 📋 3,900 rows and 18 columns
- 👥 Customer demographics (Age, Gender, Location, Subscription Status)
- 🛒 Purchase details (Item Purchased, Category, Purchase Amount, Season, Size, Color)
- 🏷️ Shopping behavior (Discount Applied, Previous Purchases, Frequency of Purchases, Review Rating, Shipping Type)
- ⚠️ 37 missing values in Review Rating

---

## 🚀 What I Did

### 🐍 1. Python (Data Cleaning and EDA)
- 📥 Loaded the dataset using pandas
- 🔍 Explored the data with `df.info()` and `.describe()`
- 🩹 Filled the 37 missing Review Ratings with the median rating of each category
- 🏷️ Renamed all columns to snake_case
- ✨ Created new columns: `age_group` and `purchase_frequency_days`
- 🗑️ Checked for redundancy and dropped `promo_code_used`
- 🗄️ Loaded the cleaned data into MySQL for SQL analysis

### 🗄️ 2. SQL (Business Analysis)
Answered business questions on:
- 👫 Revenue by gender
- 🏷️ High-spending discount users (customers who used a discount but still spent above average)
- ⭐ Top 5 products by review rating
- 🚚 Standard vs Express shipping
- 🔔 Subscribers vs non-subscribers
- 💸 Discount-dependent products
- 🧑‍🤝‍🧑 Customer segmentation (New, Returning, Loyal)
- 🔁 Repeat buyers and subscription
- 🎂 Revenue by age

🛠️ Techniques used: aggregation (SUM, AVG, COUNT), GROUP BY, filtering, subqueries, CASE segmentation and ranking.

### 📈 3. Power BI (Dashboard)
Built a **Customer Behavior Dashboard** with:
- 🔢 **KPI cards:** number of customers, average purchase amount, average review rating
- 🍩 **Donut chart:** subscription status
- 📊 **Bar charts:** revenue by category and sales by category
- 📉 **Age charts:** revenue by age group
- 🎛️ **Slicers:** subscription status, gender, category and shipping type
- 🎨 **Design:** rounded cards, navy and blue theme and a title banner

### 📄 4. PDF Report
- 📝 Wrote a full report covering the project overview, dataset summary, Python steps, SQL results, dashboard results, key insights and recommendations

---

## 📌 Dashboard Results
- 👥 **3,900** customers
- 💵 Average purchase of **$59.76**
- ⭐ Average review rating of **3.75**
- 🍩 **73%** of customers are not subscribed and **27%** are subscribed
- 👕 Clothing is the top category for both revenue and number of purchases
- 🎂 Revenue is spread evenly across ages 18 to 70

## 📊 SQL Results Summary

| 🔎
