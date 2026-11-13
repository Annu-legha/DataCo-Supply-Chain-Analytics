# DataCo Supply Chain Analytics

An end-to-end Data Analytics project analyzing supply chain delivery performance, operational risks, customer segments, and product profitability using Python, MySQL, and Power BI.

## Project Overview

This project analyzes the DataCo Supply Chain dataset to identify delivery delays, evaluate shipping performance, understand customer and regional trends, and investigate product profitability.

The analysis covers records from 2015–2018 and combines data cleaning, exploratory data analysis, SQL-based business analysis, and interactive Power BI reporting.

## Business Objectives

- Analyze late delivery patterns across shipping modes and time periods.
- Identify customer segments and regions with higher delivery risks.
- Evaluate product and category-level profitability.
- Understand order status and operational performance.
- Develop actionable business recommendations through analytics.

## Tools & Technologies

| Tool | Purpose |
|---|---|
| Python | Data cleaning and analysis |
| Pandas, NumPy | Data manipulation |
| Matplotlib, Seaborn | Data visualization |
| MySQL | SQL-based business analysis |
| Power BI | Interactive dashboards |
| Excel | Dataset inspection |

## Project Structure

- `01_Dataset` – Raw and cleaned datasets
- `02_Python_Analysis` – Google Colab analysis notebook
- `03_SQL_Analysis` – Data import and 20 business analysis queries
- `04_PowerBI_Dashboard` – Power BI dashboard and PDF
- `05_Visualizations` – Supporting charts and visualizations
- `06_Reports` – Project reports
- `07_Documentation` – Project documentation

## Key Findings

The final analytical dataset contains:

| Metric | Result |
|---|---:|
| Valid records analyzed | 760 |
| Unique orders | 667 |
| Unique customers | 642 |
| Late delivery rate | 52.11% |
| On-time/early delivery rate | 47.89% |
| Average recorded delivery days | 3.85 |
| Average delivery delay | 0.59 days |

### Delivery Performance

- 396 records were classified as late.
- 364 records were classified as on-time or early.
- First Class had a 100% late delivery rate across 12 records.
- Second Class had an 81.67% late delivery rate.
- Standard Class had a 36.49% late delivery rate and the highest record volume.

### Customer Segment Analysis

Home Office had the highest late delivery rate at 73.73%, followed by Consumer at 51.74% and Corporate at 39.01%.

### Data Quality

The analysis retained 760 valid records after date-sequence validation. Delivery performance was evaluated using recorded actual and scheduled shipping days.

## Project Workflow

1. Dataset inspection and data cleaning using Python.
2. Data validation and exploratory data analysis.
3. Business analysis using MySQL.
4. Interactive dashboard development using Power BI.
5. Documentation of findings and recommendations.

## Repository Contents

Explore the folders above to access the datasets, notebook, SQL scripts, dashboard, visualizations, and project reports.

## Author

**Annu Legha**

[GitHub](https://github.com/Annu-legha)

---

*This project demonstrates an end-to-end data analytics workflow, from raw data preparation to business insights and dashboard reporting.*
