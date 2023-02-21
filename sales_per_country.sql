SELECT 
BillingCountry as Country,
COUNT(BillingCountry) as SalesCount,
SUM(Total) as SalesTotal
FROM Invoice
GROUP BY Country;