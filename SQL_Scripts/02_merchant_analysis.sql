-- CHAPTER 2: Fraud by Merchant Category
-- Goal: Identify high-risk categories for targeted monitoring

SELECT 
    merchant_category,
    COUNT(*) AS total_transactions,
    SUM(CAST(is_fraud AS INT)) AS fraudulent_transactions,
    -- Frequency of fraud in this category
    ROUND(CAST(SUM(CAST(is_fraud AS INT)) AS FLOAT) / COUNT(*) * 100, 2) AS fraud_rate_percentage,
    -- Total financial loss in this category
    SUM(CASE WHEN is_fraud = 1 THEN amount ELSE 0 END) AS total_fraud_loss
FROM dbo.transactions
GROUP BY merchant_category
ORDER BY total_fraud_loss DESC; -- We want the biggest losses at the top
