# SQL scripts

Run these scripts against the MySQL table `UK_Labour_Market.ons_uk_labour_market_mysql`.

| File | Purpose | Main SQL techniques |
|---|---|---|
| `01_data_exploration.sql` | Inspect the database, table structure, record count and sample rows | `SHOW TABLES`, `DESCRIBE`, `COUNT`, `SELECT`, `ORDER BY`, `LIMIT` |
| `02_financial_crisis_comparison.sql` | Calculate annual average employment and unemployment rates for selected historical periods | `AVG`, `CAST`, `REGEXP`, `GROUP BY` |
| `03_crisis_period_comparison.sql` | Inspect the imported table, compare annual rates and summarise unemployment range/highest rate across the early 1980s and 2008 crisis periods | `CASE`, `MAX`, `MIN`, `AVG`, conditional filtering |
| `04_overall_labour_market_summary.sql` | Produce headline average, minimum and maximum values for employment, unemployment and inactivity | `COUNT`, `AVG`, `MIN`, `MAX` |

## Run order and database note

1. Confirm the schema and table exist before running the analysis.
2. Run `01_data_exploration.sql` first to inspect the table.
3. Run the remaining scripts to produce the summary and historical comparisons.

The scripts use the schema name `UK_Labour_Market`, matching the table reference supplied for this project. If your local MySQL schema has a different name, replace the schema prefix in the scripts consistently. The earlier scripts in this repository used `ons_uk_labour_market_mysql` as the schema name, so confirm the actual schema in MySQL Workbench before running them.

The period comparisons are descriptive. They do not prove that one crisis caused a particular labour-market outcome, and the selected date windows are not necessarily equivalent economic periods.
