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

| 🔎 Analysis | 📈 Result |
|---|---|
| 👫 Revenue by gender | Male $157,890 vs Female $75,191 |
| 🏷️ High-spending discount users | 839 customers used a discount and still spent above average |
| ⭐ Top-rated products | Gloves 3.86, Sandals 3.84, Boots 3.82, Hat 3.80, Skirt 3.79 |
| 🚚 Shipping | Express $60.48 vs Standard $58.46 |
| 🔔 Subscription | Subscribers $59.49 vs non-subscribers $59.87 average spend |
| 💸 Discount-dependent products | Hat 50.00%, Sneakers 49.66%, Coat 49.07%, Sweater 48.17%, Pants 47.37% |
| 🧑‍🤝‍🧑 Segments | Loyal 3,116, Returning 701, New 83 |
| 🔁 Repeat buyers | 958 subscribed vs 2,518 not subscribed |

---

## 💡 Business Insights
1. 👨 **Gender:** Male customers generate about **68%** of total revenue
2. 🏷️ **Discounts:** About half of discount users still spent above the average purchase, so discounts do not always mean smaller baskets
3. ⭐ **Top-rated products:** Gloves, Sandals, Boots, Hat and Skirt are rated 3.79 to 3.86
4. 🚚 **Shipping:** Express customers spend slightly more per order
5. 🔔 **Subscriptions:** Only **27%** subscribe, and subscribers spend the same as non-subscribers
6. 💸 **Discount-dependent products:** Hat, Sneakers, Coat, Sweater and Pants are bought with a discount 47% to 50% of the time
7. 🧑‍🤝‍🧑 **Segments:** **80%** of customers are Loyal; they use discounts the most (43.6%) and give the lowest ratings (3.74)
8. 🔁 **Repeat buyers:** Customers with many purchases are not more likely to subscribe
9. 🎂 **Age and category:** Revenue is spread evenly across ages, and Clothing is the top category

## ✅ Recommendations
- 📣 **Boost subscriptions:** improve the subscription offer and target the 2,518 repeat buyers who have not subscribed
- 💰 **Review discount dependence:** test loyalty rewards that do not rely on price cuts
- 👩 **Reach female customers:** run campaigns and product ranges for them, since they bring in about a third of revenue
- ⚡ **Promote Express shipping** to higher-value baskets
- 😊 **Protect satisfaction among loyal customers:** ratings fall with tenure (3.84 to 3.74)

---

## 📂 Files
- 📄 `Customer_Shopping_Behavior_Analysis.pdf` - full report with results and insights
- 🗒️ `customer-behaviour-analysis.sql` - SQL analysis script
- 📊 `dashboard.pbix` - Power BI dashboard file
- 🖼️ `dashboard.png` - dashboard screenshot
- 📓 `data-cleaning.ipynb` - Python notebook (if you have one)

## 🖼️ Dashboard Preview
![Dashboard](dashboard.png)

---

⭐ If you found this project useful, give it a star!
