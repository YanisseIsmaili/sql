SELECT Customers.FirstName, Customers.LastName
FROM Customers
JOIN Employees ON Customers.SupportRepId = Employees.EmployeeId
WHERE Employees.FirstName = 'Jane' AND Employees.LastName = 'Peacock'
AND Customers.Country = 'USA';
