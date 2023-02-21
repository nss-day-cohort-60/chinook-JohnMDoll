SELECT 
(e.FirstName || " " || e.LastName) as FullName,
i.InvoiceId
FROM Employee e
JOIN Customer c ON c.SupportRepId = e.EmployeeId
JOIN Invoice i ON i.CustomerId = c.CustomerId