--Provide a query that shows the top 5 most purchased tracks over all.

SELECT Track.Name, COUNT(InvoiceLine.TrackId) AS NumOfPurchases
FROM InvoiceLine
JOIN Track ON Track.TrackId = InvoiceLine.TrackId
GROUP BY InvoiceLine.TrackId
ORDER BY NumOfPurchases DESC
LIMIT 5
