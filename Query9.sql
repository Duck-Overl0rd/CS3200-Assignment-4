/* Creative addition: Define a new meaningful query using at
least three tables, and some window function.
Explain clearly what your query achieves, and what the results mean
*/

SELECT cust.FirstName, cust.LastName, cust.Email,
SUM(inv.Total) AS "Total Spent",
RANK() OVER (ORDER BY SUM(inv.Total) DESC) AS "Spending Rank"
FROM customers cust
JOIN invoices inv ON cust.CustomerId = inv.CustomerId
JOIN invoice_items invitem ON inv.InvoiceId = invitem.InvoiceId
WHERE cust.FirstName IS NOT NULL
    AND cust.LastName IS NOT NULL
    AND cust.Email IS NOT NULL
GROUP BY cust.CustomerId, cust.FirstName, cust.LastName, cust.Email
ORDER BY "Spending Rank";