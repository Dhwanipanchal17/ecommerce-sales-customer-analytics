
-- E-Commerce Sales & Customer Analytics
-- SQL Analysis Queries

SELECT * FROM sales LIMIT 10;

SELECT COUNT(*) AS Total_Records
FROM sales;

SELECT ROUND(SUM(Revenue), 2) AS Total_Revenue
FROM sales;

SELECT COUNT(DISTINCT InvoiceNo) AS Total_Orders
FROM sales;

SELECT COUNT(DISTINCT CustomerID) AS Total_Customers
FROM sales
WHERE CustomerID IS NOT NULL;

SELECT ROUND(
    SUM(Revenue) / COUNT(DISTINCT InvoiceNo), 2
) AS Average_Order_Value
FROM sales;

SELECT Description AS Product,
       ROUND(SUM(Revenue), 2) AS Revenue
FROM sales
GROUP BY Description
ORDER BY Revenue DESC
LIMIT 10;

SELECT Country,
       ROUND(SUM(Revenue), 2) AS Revenue
FROM sales
GROUP BY Country
ORDER BY Revenue DESC
LIMIT 10;

SELECT Month,
       ROUND(SUM(Revenue), 2) AS Revenue
FROM sales
GROUP BY Month
ORDER BY Month;

SELECT CustomerID,
       ROUND(SUM(Revenue), 2) AS Total_Spending
FROM sales
WHERE CustomerID IS NOT NULL
GROUP BY CustomerID
ORDER BY Total_Spending DESC
LIMIT 10;
