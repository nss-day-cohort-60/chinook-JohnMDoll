SELECT 
t.Name,
SUM(il.Quantity) as SalesCount
FROM Track t
JOIN InvoiceLine il ON il.TrackId = t.TrackId
GROUP BY t.TrackId
ORDER BY SalesCount DESC
LIMIT 5;