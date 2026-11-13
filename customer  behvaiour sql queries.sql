USE analytics;
SELECT * FROM shopping_trends;

-- 1 what is the total revenue genrated by male vs,  female customers?
select gender, sum(purchase_amount_usd) as revenue from shopping_trends group by gender;

-- 2 which customern used discount but still spent more than the average purchase amt?
SELECT customer_id, purchase_amount_usd
FROM shopping_trends
WHERE discount_applied = 'Yes'
  AND purchase_amount_usd >= (SELECT AVG(purchase_amount_usd) FROM shopping_trends);
  
  -- 3 which are the top 5 products with the highest avg review rating
  
  SELECT item_purchased,
       ROUND(AVG(review_rating), 2) AS avg_rating
FROM shopping_trends
GROUP BY item_purchased
ORDER BY avg_rating DESC
LIMIT 5;

-- 4 compare the avg purchase amt netweeen standard and express shipping-- 
SELECT shipping_type,
       ROUND(AVG(purchase_amount_usd), 2) AS avg_purchase_amount,
       COUNT(*) AS num_orders
FROM shopping_trends
WHERE shipping_type IN ('Standard', 'Express')
GROUP BY shipping_type
ORDER BY avg_purchase_amount DESC;

-- 5 do subscribed cutomers spent mmore? compare avg spend and total revenue between subsribes and non subcribes  
SELECT subscription_status,
       COUNT(customer_id ) AS total_customers,
       ROUND(AVG(purchase_amount_usd), 2) AS avg_spend,
       SUM(purchase_amount_usd) AS total_revenue
FROM shopping_trends
GROUP BY subscription_status;

-- which 5 products have the highest percentage of purcahses with discounts appplied ?
SELECT item_purchased,
       COUNT(*) AS total_purchases,
       SUM(CASE WHEN discount_applied = 'Yes' THEN 1 ELSE 0 END) AS discounted_purchases,
       ROUND(100 * SUM(CASE WHEN discount_applied = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS discount_pct
FROM shopping_trends
GROUP BY item_purchased
ORDER BY discount_pct DESC
LIMIT 5;

-- 7 segmennt custommers into new, returning and loyal based on their total number of previous purchase and show the count of each segement ?
SELECT customer_segment,
       COUNT(*) AS num_customers,
       ROUND(AVG(purchase_amount_usd), 2) AS avg_spend,
       ROUND(100 * AVG(discount_applied = 'Yes'), 1) AS pct_with_discount,
       ROUND(AVG(review_rating), 2) AS avg_rating
FROM (
    SELECT *,
           CASE
               WHEN previous_purchases <= 1 THEN 'New'
               WHEN previous_purchases BETWEEN 2 AND 10 THEN 'Returning'
               ELSE 'Loyal'
           END AS customer_segment
    FROM shopping_trends
) AS segments
GROUP BY customer_segment
ORDER BY FIELD(customer_segment, 'New', 'Returning', 'Loyal');


-- 8 what are the top 3 most purchased products with each category?
SELECT category, item_purchased, total_purchases, product_rank
FROM (
    SELECT category,
           item_purchased,
           COUNT(*) AS total_purchases,
           ROW_NUMBER() OVER (
               PARTITION BY category
               ORDER BY COUNT(*) DESC
           ) AS product_rank
    FROM shopping_trends
    GROUP BY category, item_purchased
) AS ranked
WHERE product_rank <= 3
ORDER BY category, product_rank;

-- are customers who  repeat buuyers (more than 5 pervious purchases )aslo likely to subscribe?
SELECT subscription_status,
COUNT(customer_id) as repeat_buyers
from shopping_trends
where previous_purchases>5
group by subscription_status;

-- what is the revenue contribution by the age group?

select age,
sum(purchase_amount_usd) as total_revenue 
from shopping_trends 
group by age
order by total_revenue desc;

