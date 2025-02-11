SELECT 
    Customer_Type, 
    Product_Line, 
    SUM(Total) AS Total_Sales
FROM walmartsales
GROUP BY Customer_Type, Product_Line
ORDER BY Customer_Type, Total_Sales DESC;
