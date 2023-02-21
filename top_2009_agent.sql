-- how best to use MAX() to achieve 1 top sales result?

SELECT 
(e.FirstName || " " || e.LastName) as Employee_FullName,
SUM(i.Total) as TotalSales
FROM Employee e
JOIN Customer ON Customer.SupportRepId = e.EmployeeId
JOIN Invoice i ON i.CustomerId = Customer.CustomerId
WHERE substr(i.InvoiceDate,1,4) LIKE "2009" 
GROUP BY Employee_FullName
ORDER BY TotalSales DESC
LIMIT 1;