SELECT DISTINCT ws1.Customer_ID, ws1.Branch, ws1.City
FROM walmartsales ws1
JOIN walmartsales ws2 
    ON ws1.Customer_ID = ws2.Customer_ID 
    AND ws1.Invoice_ID <> ws2.Invoice_ID  -- Exclude same transactions
    AND ABS(DATEDIFF(ws1.Date, ws2.Date)) <= 30  -- Check for purchases within 30 days
ORDER BY ws1.Customer_ID;