-- Monthly Fraud Ranking by Loss Value
SELECT 
    year, 
    month,
    COUNT(*) AS total_transactions,
    SUM(CAST(is_fraud AS INT)) AS fraud_cases,
    SUM(CASE WHEN is_fraud = 1 THEN amount ELSE 0 END) AS monthly_fraud_loss
FROM dbo.transactions
GROUP BY year, month
ORDER BY monthly_fraud_loss DESC; -- biggest losses at the top
