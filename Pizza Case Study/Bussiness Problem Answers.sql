create database pizza_project;

use pizza_project;

CREATE TABLE pizza_types (
    pizza_type_id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(100),
    category VARCHAR(50),
    ingredients TEXT
);

CREATE TABLE pizzas (
    pizza_id VARCHAR(50) PRIMARY KEY,
    pizza_type_id VARCHAR(50),
    size VARCHAR(10),
    price DECIMAL(10,2),

    FOREIGN KEY (pizza_type_id)
        REFERENCES pizza_types(pizza_type_id)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    date DATE,
    time TIME
);

CREATE TABLE order_details (
    order_details_id INT PRIMARY KEY,
    order_id INT,
    pizza_id VARCHAR(50),
    quantity INT,

    FOREIGN KEY (order_id)
        REFERENCES orders(order_id),

    FOREIGN KEY (pizza_id)
        REFERENCES pizzas(pizza_id)
);

select count(*) from order_details;  -- order_details_id	order_id	pizza_id	quantity

select * from pizzas; -- pizza_id, pizza_type_id, size, price

select count(*) from orders;  -- order_id, date, time

select * from pizza_types;  -- pizza_type_id, name, category, ingredients


-- Basic:
-- Retrieve the total number of orders placed.
Select Count(*) As "Total Orders" from Orders;

-- Calculate the total revenue generated from pizza sales.
select od.pizza_id, od.quantity, p.price
from order_details od
join pizzas p on p.pizza_id = od.pizza_id;

-- Identify the highest-priced pizza.
SELECT pizza_id, pizza_type_id, size, price  FROM pizzas where price = (select max(price) from pizzas);

-- Identify the most common pizza size ordered.
select p.size, count(distinct od.order_id) as 'No of Orders', sum(od.quantity) as 'Total Quantity Ordered' 
from order_details od
join pizzas p on p.pizza_id = od.pizza_id
group by p.size
order by count(distinct od.order_id) desc;

-- List the top 5 most ordered pizza types along with their quantities.
SELECT pt.name, sum(od.quantity) as 'Total Ordered'
from order_details od 
join pizzas p on p.pizza_id = od.pizza_id
join pizza_types pt on pt.pizza_type_id = p.pizza_type_id
group by pt.name 
order by sum(od.quantity) desc
LIMIT 5;

-- or 

SELECT name, total_ordered
from ( Select pt.name,sum(od.quantity) as total_ordered, 
		dense_rank() over(order by sum(od.quantity) DESC) as rnk from order_details od 
		join pizzas p on p.pizza_id = od.pizza_id
		join pizza_types pt on pt.pizza_type_id = p.pizza_type_id
        Group By pt.name
	 ) t
where rnk <=5
ORDER BY total_ordered DESC;

-- Intermediate:
-- Find the total quantity of each pizza category ordered (this will help us to understand the category which customers prefer the most).
SELECT pt.category, sum(od.quantity) As "Total Quantity"
FROM order_Details od JOIN pizzas p ON p.pizza_id = od.pizza_id 
JOIN pizza_types pt ON pt.pizza_type_id = p.pizza_type_id
Group By pt.Category
Order By sum(od.quantity) DESC;

-- Determine the distribution of orders by hour of the day (at which time the orders are maximum (for inventory management and resource allocation).
select hour(time) as 'Hour of the day', count(distinct order_id) as No_of_Orders
from orders
group by HOUR(time) 
order by No_of_Orders desc;

-- Find the category-wise distribution of pizzas (to understand customer behaviour).
select category, count(distinct pizza_type_id) as 'No of pizzas'
from pizza_types
group by category
order by count(distinct pizza_type_id);


-- Group the orders by date and calculate the average number of pizzas ordered per day.
SELECT AVG(total_pizzas) AS avg_pizzas_per_day
FROM (
    SELECT 
        o.date,
        SUM(od.quantity) AS total_pizzas
    FROM orders o
    JOIN order_details od 
        ON o.order_id = od.order_id
    GROUP BY o.date
) AS daily_orders;

-- Determine the top 3 most ordered pizza types based on revenue (let's see the revenue wise pizza orders to understand from sales perspective which pizza is the best selling)
select pt.name, sum(p.price * od.quantity) as 'Revenue from pizza'
from pizzas p join order_details od on p.pizza_id = od.pizza_id
join pizza_types pt on p.pizza_type_id = pt.pizza_type_id
group by pt.name
order by sum(p.price * od.quantity) desc
limit 3;

-- or 

SELECT name, revenue
FROM (
    SELECT 
        pt.name,
        SUM(p.price * od.quantity) AS revenue,
        DENSE_RANK() OVER (
            ORDER BY SUM(p.price * od.quantity) DESC
        ) AS rnk
    FROM pizzas p
    JOIN order_details od 
        ON p.pizza_id = od.pizza_id
    JOIN pizza_types pt 
        ON p.pizza_type_id = pt.pizza_type_id
    GROUP BY pt.name
) AS t
WHERE rnk <= 3
ORDER BY revenue DESC;


-- Advanced:
-- Calculate the percentage contribution of each pizza type to total revenue (to understand % of contribution of each pizza in the total revenue)
SELECT 
    pt.name,
    CONCAT(ROUND(SUM(od.quantity * p.price)/(SELECT SUM(od2.quantity * p2.price) FROM order_details od2 JOIN pizzas p2 ON p2.pizza_id = od2.pizza_id)*100,2),'%') AS `Revenue contribution from pizza`
FROM order_details od
JOIN pizzas p
    ON p.pizza_id = od.pizza_id
JOIN pizza_types pt
    ON pt.pizza_type_id = p.pizza_type_id
GROUP BY pt.name
ORDER BY `Revenue contribution from pizza` DESC;


-- Analyze the cumulative revenue generated over time.
with cte as ( select o.date, round(sum(p.price*od.quantity),2) as 'Revenue'
			  from pizzas p join order_details od on od.pizza_id = p.pizza_id
              join orders o on od.order_id = o.order_id
              group by o.date
			)
SELECT Date, Revenue, sum(Revenue) over (order by date) as 'Cumulative Sum'
from cte 
group by date, Revenue;


-- Determine the top 3 most ordered pizza types based on revenue for each pizza category (In each category which pizza is the most selling)
SELECT * from order_details;
select * from orders;
select * from pizza_types;
select * from pizzas;
WITH cte AS (
    SELECT 
        category,
        name,
        CAST(SUM(quantity * price) AS DECIMAL(10,2)) AS Revenue
    FROM order_details 
    JOIN pizzas 
        ON pizzas.pizza_id = order_details.pizza_id
    JOIN pizza_types 
        ON pizza_types.pizza_type_id = pizzas.pizza_type_id
    GROUP BY category, name
),
cte1 AS (
    SELECT 
        category,
        name,
        Revenue,
        RANK() OVER (
            PARTITION BY category 
            ORDER BY Revenue DESC
        ) AS rnk
    FROM cte
)
SELECT 
    category,
    name,
    Revenue
FROM cte1
WHERE rnk <= 3
ORDER BY category, Revenue DESC;
