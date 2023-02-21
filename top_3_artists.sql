SELECT 
a.Name,
SUM(il.Quantity) as SalesCount
FROM Artist a
JOIN Album al ON al.ArtistId = a.ArtistId
JOIN Track t ON t.AlbumId = al.AlbumId
JOIN InvoiceLine il ON il.TrackId = t.TrackId
GROUP BY a.ArtistId
ORDER BY SalesCount DESC
LIMIT 3;