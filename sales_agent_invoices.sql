--  Provide a query that shows the invoices associated with each sales agent. The resultant table should include:
-- Sales Agent's full name
-- Invoice ID

SELECT Employee.Title, Employee.Firstname, Employee.LastName, Invoice.InvoiceId

FROM Invoice 
JOIN Customer ON Invoice.customerId= Customer.CustomerId
JOIN Employee On Customer.SupportRepId = Employee.EmployeeId
WHERE Title = 'Sales Support Agent'