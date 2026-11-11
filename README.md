# UK Labour Market Analysis

An analysis of UK labour-market indicators using Office for National Statistics (ONS) data. The project explores changes in employment, unemployment and economic inactivity to provide context for workforce planning and labour-market decision-making.

> **Business context:** Organisations make decisions about recruitment, workforce capacity and skills in a wider labour market. Understanding participation and unemployment trends helps put organisational workforce challenges into context.

## Business problem

What do long-term UK employment, unemployment and economic inactivity trends reveal about the wider labour supply, and how can these indicators be compared consistently over time?

## Project objectives

- Prepare a consistent time-series dataset from ONS source data.
- Examine changes in employment, unemployment and economic inactivity.
- Use SQL to compare selected periods and investigate historical changes.
- Explain how labour-market indicators can inform workforce planning.

## Data and approach

The cleaned analysis dataset contains **943 observations** and four fields: `period`, `employment_rate`, `unemployment_rate` and `economic_inactivity_rate`. The recorded averages are employment **71.76%**, unemployment **6.69%** and economic inactivity **23.11%**. A separate raw MySQL import contained 666 rows; these are different workflow stages and should not be treated as identical datasets.

- **Python / Pandas:** inspect, clean and prepare time-series data.
- **MySQL:** store the data and compare indicators across periods.
- **Excel / CSV:** inspect and organise source and output files.
- **Visualisation:** communicate changes in the three headline indicators.

## Example finding

The annual SQL comparison identified unemployment of **8.46% in 2008**, compared with **11.9%** in the selected early-1980s comparison. This is a descriptive comparison of the selected periods, not a claim that the economic conditions were identical.

## Business interpretation

Labour-market indicators provide context rather than a direct answer to an organisation's hiring problem:

- Employment rates help describe the proportion of the population in work.
- Unemployment measures people without work who are actively seeking and available for work.
- Economic inactivity captures people who are neither employed nor classified as unemployed.
- Considering all three measures gives a broader view of labour-market participation and potential workforce supply.

For an employer, these trends could inform workforce planning assumptions, location strategy and the interpretation of recruitment pressures. Organisation-specific decisions would also require local, occupational and skills-level evidence.

## Limitations and next steps

- Document why the raw MySQL import and cleaned dataset have different row counts.
- Add the final SQL scripts, Python notebook, cleaned CSV and visualisations to this repository.
- Add a data dictionary and cite the exact ONS series and definitions.
- Historical comparisons are descriptive and do not establish causes.

## Business value

This project shows how public economic data can be structured and compared to provide context for workforce decisions. It connects data preparation and SQL analysis with a practical business question: what is happening in the wider supply of labour?

**Skills:** ONS data · time-series analysis · Python · Pandas · MySQL · SQL aggregation · data validation · workforce planning context

---
*Portfolio project by K96-max.*
