SELECT
i.*,
t.Name,
Artist.Name
FROM InvoiceLine i
JOIN Track t ON t.TrackId = i.TrackId
JOIN Album a ON a.AlbumId = t.AlbumId
JOIN Artist ON Artist.ArtistId = a.ArtistId;