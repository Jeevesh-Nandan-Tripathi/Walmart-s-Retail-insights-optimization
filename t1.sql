SELECT 
    Branch,
    DATE_FORMAT(Date, '%Y-%m') AS Month,
    SUM(Total) AS Total_Sales,
    (SUM(Total) - LAG(SUM(Total)) OVER (PARTITION BY Branch ORDER BY DATE_FORMAT(Date, '%Y-%m'))) /
    LAG(SUM(Total)) OVER (PARTITION BY Branch ORDER BY DATE_FORMAT(Date, '%Y-%m')) * 100 AS Growth_Rate
FROM walmartsales
GROUP BY Branch, Month
ORDER BY Branch, Month;
