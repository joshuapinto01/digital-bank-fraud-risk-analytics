# Digital Bank — Fraud & Risk Analytics Report

![SQL Server](https://img.shields.io/badge/SQL%20Server-T--SQL-CC2927?style=for-the-badge&logo=microsoftsqlserver&logoColor=white)
![Power BI](https://img.shields.io/badge/Power%20BI-Data%20Visualization-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![Data Analysis](https://img.shields.io/badge/Data%20Analysis-Fraud%20%26%20Risk-2F80ED?style=for-the-badge)
![GitHub](https://img.shields.io/badge/GitHub-Portfolio-181717?style=for-the-badge&logo=github&logoColor=white)

> End-to-end fraud and risk analysis of 1 million synthetic bank transactions using SQL Server and Power BI.

## 1. Project Overview
This project simulates the workflow of a Data Analyst within the Fraud & Risk Analytics team of a digital bank. The analysis leverages a dataset of 1 million synthetic transactions to identify fraud patterns, high-risk merchant categories, monthly trends, and high-exposure customer profiles. 

The goal is to transform raw transactional data into actionable insights to support data-driven decisions in fraud prevention and risk monitoring.

## 2. Business Problem
The bank's risk management team needs to understand where fraud occurs, how it evolves over time, and which segments require immediate attention. This analysis addresses the following key questions:
*   What is the overall fraud rate across the bank?
*   Which merchant categories show the highest exposure to fraudulent activity?
*   How do fraud cases fluctuate month-over-month?
*   Which transaction value tiers contain the highest concentration of fraud?
*   Which anonymized customers represent the highest accumulated fraudulent transaction value?

## 3. Dataset
The analysis is based on two synthetic datasets provided in CSV format:
*   **Transactions (1,000,000 rows):** Specifics on transaction IDs, dates, merchant categories, amounts, and a fraud flag.
*   **Customers (60,000 rows):** Customer IDs for data mapping and relationship building.

*Note: Transaction amounts are synthetic and follow a non-linear scale. In this project, "amount" is treated as a transaction-value unit rather than a real currency.*

## 4. Tools & Technologies
*   **SQL Server (T-SQL):** Data ingestion, exploratory data analysis (EDA), and complex aggregations.
*   **Power BI:** Imported SQL query outputs and developed an interactive dashboard for KPI tracking and risk analysis.
*   **VS Code:** Documentation and Markdown development.
*   **Git/GitHub:** Version control and portfolio hosting.

## 5. Project Workflow
1.  **Ingestion:** Data was imported into SQL Server using the Flat File Import Wizard.
2.  **Exploratory Data Analysis:** Conducted statistical checks and identified data quality constraints (scientific notation in amounts).
3.  **SQL Processing:** Developed optimized scripts to aggregate executive metrics, monthly trends, and risk rankings.
4.  **Power BI Integration:** Connected Power BI to SQL Server and imported pre-aggregated data for high performance.
5.  **Data Visualization:** Designed a professional executive dashboard focused on high-contrast KPIs and behavioral risk patterns.

## 6. Dashboard Preview

The Power BI dashboard provides an executive overview of fraud activity, including key KPIs, merchant category exposure, monthly fraud trends, transaction value tiers, and a ranking of high-risk customer IDs.

![Digital Bank Fraud & Risk Analytics Dashboard](images/dashboard_preview.png)

## 7. Key Insights
*   **Stable Fraud Rate:** The analysis identified a consistent **3.01% fraud rate** across the total transaction volume.
*   **High-Risk Categories:** **Gaming** and **Travel** were identified as the categories with the highest exposure to fraudulent transaction value.
*   **Temporal Peaks:** Significant spikes in fraud activity were observed in **May** and **October**, suggesting seasonal fraud campaigns.
*   **Amount-Tier Correlation:** Transactions in the highest value tiers (Quadrillion units) show a significant concentration of fraud, indicating that monitoring systems should prioritize large-scale transactions.

## 8. Business Recommendations
*   **Enhanced Verification:** Implement MFA (Multi-Factor Authentication) or biometric verification for any transaction within the **Gaming** and **Travel** sectors.
*   **Real-time Alerts:** Deploy real-time monitoring alerts for the highest transaction value tiers to prevent high-value losses.
*   **Shift Planning:** Increase risk monitoring staff during the identified peak months (May/October) to improve response times.
*   **Customer Audits:** Initiate internal investigations on the Top 10 high-risk IDs to determine if they are "money mule" accounts or victims of identity theft.

## 9. Data Quality Considerations
During the exploration phase, it was identified that the transaction amounts follow a synthetic scientific notation (e.g., 10^20). To maintain analytical integrity, these values were treated as **volume units** to demonstrate risk distribution across merchant categories and timeframes, rather than representing real-world currency values.

## 10. Author

**Joshua Pinto**  
*Aspiring Data Analyst based in the Netherlands.*  

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Joshua%20Caldas-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/joshua-caldas-pinto/)