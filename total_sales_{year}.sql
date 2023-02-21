-- SELECT SUM(Total)
-- FROM Invoice
-- WHERE InvoiceDate like "2009%"

SELECT 
    CASE 
        WHEN substr(InvoiceDate, 1, 4) = '2009' THEN '2009' 
        WHEN substr(InvoiceDate, 1, 4) = '2011' THEN '2011' 
    END AS Year, 
    Sum(Total) AS Total
FROM Invoice
WHERE InvoiceDate LIKE '2009%' OR InvoiceDate LIKE '2011%'
GROUP BY Year;