SELECT 
    Customer_ID,
    SUM(Total) AS Total_Sales
FROM walmartsales
GROUP BY Customer_ID
ORDER BY Total_Sales DESC
LIMIT 5;
