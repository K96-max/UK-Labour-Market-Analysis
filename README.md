# UK Labour Market Analysis

An exploratory analysis of UK labour-market indicators using Office for National Statistics (ONS) data. This project demonstrates data preparation, MySQL querying and interpretation of employment, unemployment and economic inactivity trends.

## Business question
How has the UK labour market changed over time, and what do the headline indicators tell us about workforce participation and economic conditions?

## Tools and workflow
- Python and Pandas: inspect, clean and prepare time-series data.
- MySQL: store the data and compare indicators across periods.
- Excel / CSV: inspect and organise source and output files.
- Visualisation: communicate changes in the three headline indicators; final dashboard exports should be added when complete.

## Dataset
The cleaned analysis dataset contains 943 observations and four fields: period, employment_rate, unemployment_rate and economic_inactivity_rate. Recorded averages are employment 71.76%, unemployment 6.69% and economic inactivity 23.11%. A separate raw MySQL import contained 666 rows. These are different workflow stages and should not be described as identical datasets.

## Example finding
The annual SQL comparison identified unemployment of 8.46% in 2008, compared with 11.9% in the selected early-1980s comparison. Explain the periods and query logic when presenting this finding; the comparison is descriptive, not a claim that the economic conditions were identical.

## Interview walkthrough
**30-second summary:** I used ONS labour-market data to practise an end-to-end analytical workflow. I cleaned and checked the time-series data in Python, prepared a consistent dataset, loaded it into MySQL and used SQL to compare employment, unemployment and inactivity across periods. The aim was to turn public data into a clear explanation of labour-market trends.

**Relevance to HR / People Analytics:** workforce supply context, data quality, reproducible preparation, SQL aggregation, time-based comparisons and communicating metrics to non-technical stakeholders.

**Likely questions:** Why these indicators? How did you validate the cleaned data? What is the difference between unemployment and economic inactivity? How would you explain the 2008 comparison? How could this inform workforce planning?

Be ready to explain the source, the different row counts at each stage, your cleaning decisions, SQL query logic and one result you can reproduce without notes.

## Limitations and next steps
- Document why the raw import and cleaned dataset have different row counts.
- Add the final SQL scripts, Python notebook, cleaned CSV and visualisations to this repository.
- Add a data dictionary and cite the exact ONS series and definitions.
- Historical comparisons are descriptive and do not establish causes.

## Planned structure
Data/ · Python/ · SQL/ · Visualisations/ · Interview/

---
Portfolio project by K96-max.
