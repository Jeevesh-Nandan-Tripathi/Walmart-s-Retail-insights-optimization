SELECT 
    DAYNAME(Date) AS Day_Of_Week,
    SUM(Total) AS Total_Sales
FROM walmartsales
GROUP BY Day_Of_Week
ORDER BY FIELD(Day_Of_Week, 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday');
