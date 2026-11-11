-- UK Labour Market Analysis: historical crisis comparison
-- Purpose: compare annual labour-market averages and the unemployment
-- range across the early-1980s downturn and the 2008 financial-crisis period.
--
-- The user's original query references the UK_Labour_Market schema.
-- If your local schema has a different name, replace it consistently below.

-- 1. Inspect the imported table
SELECT *
FROM UK_Labour_Market.ons_uk_labour_market_mysql;

-- 2. Annual average employment and unemployment rates across both periods
SELECT
    RIGHT(period, 4) AS year,
    ROUND(AVG(employment_rate_age_16_plus_pct), 2) AS avg_employment,
    ROUND(AVG(unemployment_rate_age_16_plus_pct), 2) AS avg_unemployment
FROM UK_Labour_Market.ons_uk_labour_market_mysql
WHERE RIGHT(period, 4) REGEXP '^(19|20)[0-9]{2}$'
  AND (
      CAST(RIGHT(period, 4) AS UNSIGNED) BETWEEN 1979 AND 1987
      OR CAST(RIGHT(period, 4) AS UNSIGNED) BETWEEN 2007 AND 2015
  )
GROUP BY RIGHT(period, 4)
ORDER BY year;

-- 3. Compare the unemployment range and highest unemployment
-- within each selected period. The range is maximum minus minimum.
SELECT
    CASE
        WHEN CAST(RIGHT(period, 4) AS UNSIGNED) BETWEEN 1979 AND 1987
            THEN 'Early 1980s'
        WHEN CAST(RIGHT(period, 4) AS UNSIGNED) BETWEEN 2007 AND 2015
            THEN '2008 Financial Crisis'
    END AS crisis_period,
    ROUND(
        MAX(unemployment_rate_age_16_plus_pct)
        - MIN(unemployment_rate_age_16_plus_pct), 2
    ) AS unemployment_range,
    ROUND(MAX(unemployment_rate_age_16_plus_pct), 2)
        AS highest_unemployment
FROM UK_Labour_Market.ons_uk_labour_market_mysql
WHERE RIGHT(period, 4) REGEXP '^(19|20)[0-9]{2}$'
  AND (
      CAST(RIGHT(period, 4) AS UNSIGNED) BETWEEN 1979 AND 1987
      OR CAST(RIGHT(period, 4) AS UNSIGNED) BETWEEN 2007 AND 2015
  )
GROUP BY crisis_period;
