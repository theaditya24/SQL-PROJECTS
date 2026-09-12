CREATE DATABASE walmart_sales;
USE walmart_Sales;

SELECT * FROM walmart_sales;

-- Count total records
select count(*) from walmart_Sales;

-- Count payment methods and number of transactions by payment method
SELECT payment_method, COUNT(*) AS "Number of transactions"
FROM walmart_Sales
GROUP BY payment_method;

-- Count distinct branches
SELECT COUNT(distinct branch) FROM walmart_sales;

-- Find the minimum quantity sold
SELECT MIN(quantity) FROM walmart_sales;

-- Business Problem Q1: Find different payment methods, number of transactions, and quantity sold by payment method
SELECT payment_method, COUNT(*) AS no_payments, SUM(quantity) AS no_qty_sold
FROM walmart_sales
GROUP BY payment_method;

-- Project Question #2: Identify the highest-rated category in each branch Display the branch, category, and avg rating
SELECT branch, category, avg_Rating
FROM (SELECT branch,category,AVG(rating) as avg_Rating, Rank() OVER(partition by branch order by avg(Rating) desc) as rnk from walmart_Sales group by branch,category) as t
where rnk = 1;

-- Q3: Identify the busiest day for each branch based on the number of transactions
-- SELECT branch,quantity, total_Sales, date from walmart_Sales where branch='WALM003';
-- SELECT date, COUNT(*) , dense_rank() over(partition by date order by count(*) desc) as rnk from walmart_Sales where branch='WALM003';
WITH daily_transactions AS (
    SELECT branch, date, COUNT(*) AS transactions
    FROM walmart_sales
    GROUP BY branch, date
),
ranked AS (
    SELECT branch, date, transactions, DENSE_RANK() OVER (PARTITION BY branch ORDER BY transactions DESC) AS rnk
    FROM daily_transactions
)
SELECT branch, date, transactions FROM ranked WHERE rnk = 1;


-- Q4: Calculate the total quantity of items sold per payment method
SELECT 
    payment_method,
    SUM(quantity) AS no_qty_sold
FROM walmart_sales
GROUP BY payment_method;

-- Q5: Determine the average, minimum, and maximum rating of categories for each city
SELECT 
    city,
    category,
    MIN(rating) AS min_rating,
    MAX(rating) AS max_rating,
    AVG(rating) AS avg_rating
FROM walmart
GROUP BY city, category;

-- Q6: Calculate the total profit for each category
SELECT 
    category,
    SUM(unit_price * quantity * profit_margin) AS total_profit
FROM walmart_sales GROUP BY category
ORDER BY total_profit DESC;

-- Q7: Determine the most common payment method for each branch
WITH cte AS (
    SELECT 
        branch,
        payment_method,
        COUNT(*) AS total_trans,
        RANK() OVER(PARTITION BY branch ORDER BY COUNT(*) DESC) AS rank
    FROM walmart_Sales
    GROUP BY branch, payment_method
)
SELECT branch, payment_method AS preferred_payment_method
FROM cte
WHERE rank = 1;

-- Q8: Categorize sales into Morning, Afternoon, and Evening shifts
SELECT
    branch,
    CASE 
        WHEN HOUR(TIME(time)) < 12 THEN 'Morning'
        WHEN HOUR(TIME(time)) BETWEEN 12 AND 17 THEN 'Afternoon'
        ELSE 'Evening'
    END AS shift,
    COUNT(*) AS num_invoices
FROM walmart_sales
GROUP BY branch, shift
ORDER BY branch, num_invoices DESC;