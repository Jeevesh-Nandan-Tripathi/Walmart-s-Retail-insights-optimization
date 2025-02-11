SELECT 
    City, 
    Payment, 
    COUNT(*) AS Frequency
FROM walmartsales
GROUP BY City, Payment
ORDER BY City, Frequency DESC;
