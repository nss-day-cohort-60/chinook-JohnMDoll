SELECT (c.FirstName || " " || c.LastName) as FullName,
i.InvoiceId,
i.InvoiceDate,
i.BillingCountry
FROM Invoice i
JOIN customer c ON c.CustomerId = i.CustomerId
WHERE c.Country LIKE 'Brazil'