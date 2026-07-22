-- Check the distribution of transaction amounts by magnitude
SELECT
    CASE
        WHEN amount < 1000000000000 THEN '1. Below 1 Trillion'
        WHEN amount < 10000000000000 THEN '2. 1T to 10T'
        WHEN amount < 100000000000000 THEN '3. 10T to 100T'
        WHEN amount < 1000000000000000 THEN '4. 100T to 1 Quadrillion'
        WHEN amount < 10000000000000000 THEN '5. 1Q to 10Q'
        ELSE '6. Above 10 Quadrillion'
    END AS transaction_amount_tier,

    COUNT(*) AS total_transactions,

    SUM(CAST(is_fraud AS INT)) AS fraudulent_transactions,

    ROUND(
        AVG(CAST(is_fraud AS FLOAT)) * 100,
        2
    ) AS fraud_rate_percentage,

    SUM(
        CASE
            WHEN is_fraud = 1 THEN amount
            ELSE 0
        END
    ) AS fraudulent_transaction_amount

FROM dbo.transactions

GROUP BY
    CASE
        WHEN amount < 1000000000000 THEN '1. Below 1 Trillion'
        WHEN amount < 10000000000000 THEN '2. 1T to 10T'
        WHEN amount < 100000000000000 THEN '3. 10T to 100T'
        WHEN amount < 1000000000000000 THEN '4. 100T to 1 Quadrillion'
        WHEN amount < 10000000000000000 THEN '5. 1Q to 10Q'
        ELSE '6. Above 10 Quadrillion'
    END

ORDER BY transaction_amount_tier;