SELECT 
m.Name,
SUM(il.Quantity) as SalesCount
FROM MediaType m
JOIN Track t ON t.MediaTypeId = m.MediaTypeId
JOIN InvoiceLine il ON il.TrackId = t.TrackId
GROUP BY m.MediaTypeId
ORDER BY SalesCount DESC