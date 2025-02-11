SELECT 
    (Customer_ID),
    SUM(Total) AS Total_Spending,
    CASE 
        WHEN SUM(Total) >= 500 THEN 'High'
        WHEN SUM(Total) BETWEEN 200 AND 499 THEN 'Medium'
        ELSE 'Low'
    END AS Spending_Tier
FROM walmartsales
GROUP BY (Customer_ID);
