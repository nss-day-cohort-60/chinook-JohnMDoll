SELECT InvoiceId, COUNT(InvoiceLineId) as Invoice_Count
FROM InvoiceLine
GROUP BY InvoiceId;