SELECT InvoiceId, Total
FROM invoices
WHERE BillingCity IN ('Paris', 'London');
