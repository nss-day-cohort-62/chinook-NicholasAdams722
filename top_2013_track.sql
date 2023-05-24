-- Provide a query that shows the most purchased track(s) of 2013.

SELECT Track.Name, SUM(Invoice.Total) AS TotalPurchases, Invoice.InvoiceId
FROM InvoiceLine
Join Invoice ON Invoice.InvoiceId = InvoiceLine.InvoiceId
JOIN Track ON Track.TrackId = InvoiceLine.TrackId
WHERE Invoice.InvoiceDate LIKE '2013%'
GROUP BY Track.Name
ORDER BY Invoice.Total DESC