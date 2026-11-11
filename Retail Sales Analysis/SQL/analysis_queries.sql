use retail;

#1. what is the total revenue?
SELECT
    SUM(Sales) AS Total_Revenue
FROM superstore;

#2. what is the total profit?
SELECT
    SUM(Profit) AS Total_Profit
FROM superstore;

#3. what category generates the highest sales?
SELECT
    Category,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Category
ORDER BY Total_Sales DESC
LIMIT 1;

#4. what region generates the highest profit?
SELECT
    Region,
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Region
ORDER BY Total_Profit DESC
LIMIT 1;

#5. what are the top 10 products?
SELECT
    `Product Name`,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;

#6. which month has the highest sales?
SELECT
    YEAR(`Order Date`) AS Year,
    MONTHNAME(`Order Date`) AS Month,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY
    YEAR(`Order Date`),
    MONTH(`Order Date`),
    MONTHNAME(`Order Date`)
ORDER BY Total_Sales DESC
LIMIT 1;

#7. which customers generate the most revenue?
SELECT
    `Customer Name`,
    SUM(Sales) AS Total_Revenue
FROM superstore
GROUP BY `Customer Name`
ORDER BY Total_Revenue DESC
LIMIT 10;

#8. which products are generating losses?
SELECT
    `Product Name`,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY `Product Name`
HAVING SUM(Profit) < 0
ORDER BY Total_Profit ASC;

