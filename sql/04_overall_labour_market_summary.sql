-- UK Labour Market Analysis: headline indicator summary
-- Purpose: calculate average, minimum and maximum values for the
-- 16+ employment, unemployment and economic inactivity rates.
-- These are descriptive statistics across all rows in the imported table.

SELECT
    COUNT(*) AS total_records,
    ROUND(AVG(employment_rate_age_16_plus_pct), 2) AS avg_employment_rate,
    ROUND(MIN(employment_rate_age_16_plus_pct), 2) AS min_employment_rate,
    ROUND(MAX(employment_rate_age_16_plus_pct), 2) AS max_employment_rate,
    ROUND(AVG(unemployment_rate_age_16_plus_pct), 2) AS avg_unemployment_rate,
    ROUND(MIN(unemployment_rate_age_16_plus_pct), 2) AS min_unemployment_rate,
    ROUND(MAX(unemployment_rate_age_16_plus_pct), 2) AS max_unemployment_rate,
    ROUND(AVG(economic_inactivity_rate_age_16_plus_pct), 2) AS avg_inactivity_rate,
    ROUND(MIN(economic_inactivity_rate_age_16_plus_pct), 2) AS min_inactivity_rate,
    ROUND(MAX(economic_inactivity_rate_age_16_plus_pct), 2) AS max_inactivity_rate
FROM UK_Labour_Market.ons_uk_labour_market_mysql;
