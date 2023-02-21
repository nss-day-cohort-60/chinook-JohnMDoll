SELECT
i.*,
COUNT(il.InvoiceLineId) as LineItems
FROM Invoice i
JOIN InvoiceLine il ON il.InvoiceId = i.InvoiceId
GROUP BY i.InvoiceId;