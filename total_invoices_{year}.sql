-- SELECT COUNT(InvoiceDate)
-- FROM Invoice
-- GROUP BY substr(InvoiceDate,1,4)
-- HAVING InvoiceDate like "2009%" OR InvoiceDate like "2011%"

SELECT 
    CASE 
        WHEN substr(InvoiceDate, 1, 4) = '2009' THEN '2009' 
        WHEN substr(InvoiceDate, 1, 4) = '2011' THEN '2011' 
    END AS Year, 
    COUNT(InvoiceDate) AS Count
FROM Invoice
WHERE InvoiceDate LIKE '2009%' OR InvoiceDate LIKE '2011%'
GROUP BY Year;