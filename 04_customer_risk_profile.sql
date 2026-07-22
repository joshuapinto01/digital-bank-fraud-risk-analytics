-- CHAPTER 3: Top 10 High-Risk Customers
-- Goal: Identify which customers represent the highest financial exposure

SELECT TOP 10
    t.customer_id,
    COUNT(t.transaction_id) AS total_transactions,
    SUM(CAST(t.is_fraud AS INT)) AS total_fraud_cases,
    SUM(CASE WHEN t.is_fraud = 1 THEN t.amount ELSE 0 END) AS total_customer_fraud_loss
FROM dbo.transactions t
JOIN dbo.customers c ON t.customer_id = c.customer_id
GROUP BY t.customer_id
ORDER BY total_customer_fraud_loss DESC;