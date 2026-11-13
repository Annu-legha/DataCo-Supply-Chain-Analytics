# DataCo Supply Chain Analytics

An end-to-end Data Analytics project focused on analyzing supply chain delivery performance, operational risks, customer segments, and product profitability.

## Project Overview

This project uses the DataCo Supply Chain dataset to identify delivery delays and understand how shipping modes, customer segments, product categories, regions, and time periods relate to supply chain performance.

## Tools & Technologies

- **Python:** Pandas, NumPy, Matplotlib, Seaborn
- **MySQL:** Data storage and SQL-based analysis
- **Power BI:** Interactive delivery performance dashboard
- **Excel:** Dataset inspection

## Project Workflow

1. Data loading, cleaning, and validation using Python.
2. Exploratory Data Analysis (EDA).
3. Importing the cleaned dataset into MySQL.
4. Executing 20 SQL business analysis queries.
5. Building a Power BI delivery performance dashboard.
6. Documenting findings and business recommendations.

## Key Findings

| Metric | Result |
|---|---:|
| Valid records analyzed | 760 |
| Unique orders | 667 |
| Unique customers | 642 |
| Late delivery rate | 52.11% |
| On-time / early rate | 47.89% |
| Average recorded delivery days | 3.85 |
| Average delivery delay | 0.59 days |

### Important Insights

- Second Class shipping has an 81.67% late-delivery rate across 240 records.
- Standard Class has a 36.49% late-delivery rate across 496 records.
- Home Office customers have the highest late-delivery rate among customer segments (73.73%).
- Sporting Goods has a 70.21% late-delivery rate across 47 records.

## Repository Structure

- `01_Dataset/` – Cleaned analytical dataset
- `03_SQL_Analysis/` – SQL import and analysis scripts
- `04_PowerBI_Dashboard/` – Power BI dashboard
- `05_Visualizations/` – Analysis charts
- `06_Reports/` – Project report
- `07_Documentation/` – Project documentation

## Data Quality & Limitations

The original working file contained 999 records. After date-sequence validation, 760 records were retained for analysis.

Some source calendar-date fields were inconsistent with the recorded shipping-duration values. Delivery performance was therefore calculated using the recorded actual and scheduled shipping-duration fields.

Estimated product profit was calculated using `Order Item Total × Order Item Profit Ratio`; it should not be interpreted as verified accounting profit.

## Business Recommendations

- Investigate delays associated with Second Class shipping.
- Review delivery performance for the Home Office segment.
- Monitor high-volume Standard Class operations.
- Investigate category- and region-level delivery risks while considering sample sizes.

## Author

**Annu Legha**  
Data Analytics Project | Python • MySQL • Power BI