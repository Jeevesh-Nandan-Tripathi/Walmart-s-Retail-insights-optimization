SELECT Branch, Product_Line, Total_Profit
FROM (
    SELECT 
        Branch, 
        Product_Line, 
        SUM(Gross_Income) AS Total_Profit,
        RANK() OVER (PARTITION BY Branch ORDER BY SUM(Gross_Income) DESC) AS RankNum
    FROM walmartsales
    GROUP BY Branch, Product_Line
) AS RankedProfit
WHERE RankNum = 1;
