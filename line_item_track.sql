-- Provide a query that shows each Invoice line item, with the name of the track that was purchased.

SELECT InvoiceLine.InvoiceLineId, Track.TrackId, Track.Name 
FROM InvoiceLine 
JOIN Track ON Track.TrackId = InvoiceLine.TrackId
ORDER BY InvoiceLine.InvoiceLineId ASC;