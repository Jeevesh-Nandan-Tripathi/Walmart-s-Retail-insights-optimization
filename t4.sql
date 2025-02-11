WITH Stats AS (
    SELECT 
        Product_Line,
        AVG(Total) AS Avg_Sales,
        STDDEV(Total) AS StdDev_Sales
    FROM walmartsales
    GROUP BY Product_Line
)
SELECT 
    ws.*,
    s.Avg_Sales,
    s.StdDev_Sales,
    CASE 
        WHEN ws.Total > s.Avg_Sales + 2 * s.StdDev_Sales THEN 'High Anomaly'
        WHEN ws.Total < s.Avg_Sales - 2 * s.StdDev_Sales THEN 'Low Anomaly'
        ELSE 'Normal'
    END AS Anomaly_Flag
FROM walmartsales ws
JOIN Stats s ON ws.Product_Line = s.Product_Line;
