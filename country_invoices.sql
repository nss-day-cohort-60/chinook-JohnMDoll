SELECT 
BillingCountry, 
Count(InvoiceId) as InvoiceCount
FROM Invoice
GROUP BY BillingCountry;