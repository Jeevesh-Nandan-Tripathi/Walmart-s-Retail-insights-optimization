SELECT 
    DATE_FORMAT(Date, '%Y-%m') AS Month,
    Gender,
    SUM(Total) AS Total_Sales
FROM walmartsales
GROUP BY Month, Gender
ORDER BY Month, Gender;
