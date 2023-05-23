--Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice.

SELECT InvoiceId, COUNT(*) AS LineItems
FROM InvoiceLine
GROUP BY InvoiceId;
