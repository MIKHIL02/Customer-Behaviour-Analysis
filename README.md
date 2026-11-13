# Customer Shopping Behavior Analysis

Analysis of 3,900 customer purchases to understand spending patterns, customer
segments, product preferences and subscription behavior.

## Tools Used
- **Python (pandas):** data loading, exploration, cleaning and feature engineering
- **MySQL Workbench:** SQL analysis of business questions
- **Power BI:** interactive Customer Behavior Dashboard

## Dataset
- 3,900 rows and 18 columns
- Customer demographics, purchase details and shopping behavior
- 37 missing values in Review Rating

## What I Did
**1. Python:** explored the data with `df.info()` and `.describe()`, filled missing
Review Ratings with the median rating of each category, renamed columns to snake_case,
created `age_group` and `purchase_frequency_days`, and dropped the redundant
`promo_code_used` column.

**2. SQL:** answered business questions on revenue by gender, high-spending discount
users, top-rated products, shipping type comparison, subscribers vs non-subscribers,
discount-dependent products, customer segmentation, repeat buyers and revenue by age.

**3. Power BI:** built a dashboard with KPI cards, a subscription donut chart,
revenue and sales by category, revenue by age group, and slicers for subscription,
gender, category and shipping type.

## Key Findings
- Male customers generate about 68% of revenue.
- Only 27% of customers subscribe, and subscribers spend about the same as non-subscribers.
- Express shipping customers spend slightly more ($60.48 vs $58.46).
- 80% of customers are Loyal; they use discounts the most and give the lowest ratings.
- Clothing is the top category, and revenue is spread evenly across ages.

## Files
- `Customer_Shopping_Behavior_Analysis.pdf` - full report with results
- `customer-behaviour-analysis.sql` - SQL queries
- `dashboard.pbix` - Power BI dashboard
- `data-cleaning.ipynb` - Python notebook (if you have one)
