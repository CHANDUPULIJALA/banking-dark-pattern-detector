
SELECT 
    c.customer_id,
    c.name,
    c.city,
    t.description,
    COUNT(*) AS times_charged,
    SUM(t.amount) AS total_loss
FROM transactions t
JOIN customers c 
    ON t.customer_id = c.customer_id
WHERE t.txn_type = 'debit'
  AND t.amount < 200
GROUP BY c.customer_id, t.description
HAVING COUNT(*) >= 3;
