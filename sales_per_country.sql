SELECT 
BillingCountry as Country,
COUNT(BillingCountry) as SalesPerCountry
FROM Invoice
GROUP BY Country;