SELECT 
Track.Name,
SUM(InvoiceLine.Quantity) as SalesCount
FROM InvoiceLine
JOIN Invoice ON Invoice.InvoiceId = InvoiceLine.InvoiceId
JOIN Track ON Track.TrackId = InvoiceLine.TrackId
JOIN (
    SELECT 
    TrackId,
    SUM(InvoiceLine.Quantity) as SalesCount
    FROM InvoiceLine
    GROUP BY TrackId
    HAVING SalesCount = (
        SELECT MAX(SalesCount) FROM (
        SELECT 
        TrackId,
        SUM(InvoiceLine.Quantity) as SalesCount
        FROM InvoiceLine
        GROUP BY TrackId
        )
    )
) MaxSalesFiltering ON MaxSalesFiltering.TrackId = Track.TrackId
WHERE substr(InvoiceDate, 1, 4) LIKE "2013"
GROUP BY Track.TrackId;
