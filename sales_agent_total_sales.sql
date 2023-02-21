SELECT 
(e.FirstName || " " || e.LastName) as Employee_FullName,
SUM(i.Total) as TotalSales
FROM Employee e
JOIN Customer ON Customer.SupportRepId = e.EmployeeId
JOIN Invoice i ON i.CustomerId = Customer.CustomerId
GROUP BY Employee_FullName;