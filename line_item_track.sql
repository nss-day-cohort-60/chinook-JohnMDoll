SELECT
i.*,
t.Name
FROM InvoiceLine i
JOIN Track t ON t.TrackId = i.TrackId;