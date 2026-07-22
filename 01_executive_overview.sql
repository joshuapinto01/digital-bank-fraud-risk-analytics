-- CHAPTER 1: Executive Overview
-- Global transaction and fraud metrics

WITH Global_Metrics AS (
    SELECT
        COUNT(*) AS total_transactions,

        SUM(CAST(is_fraud AS INT)) AS fraudulent_transactions,

        SUM(amount) AS total_transaction_amount,

        SUM(
            CASE
                WHEN is_fraud = 1 THEN amount
                ELSE 0
            END
        ) AS fraudulent_transaction_amount

    FROM dbo.transactions
)

SELECT
    total_transactions AS Total_Transactions,

    total_transaction_amount AS Total_Transaction_Amount,

    fraudulent_transactions AS Fraudulent_Transactions,

    fraudulent_transaction_amount AS Fraudulent_Transaction_Amount,

    ROUND(
        CAST(fraudulent_transactions AS DECIMAL(18, 4))
        / NULLIF(total_transactions, 0) * 100,
        2
    ) AS Fraud_Rate_Percentage,

    ROUND(
        CAST(fraudulent_transaction_amount AS DECIMAL(38, 4))
        / NULLIF(total_transaction_amount, 0) * 100,
        2
    ) AS Fraud_Value_Share_Percentage

FROM Global_Metrics;