-- UK Labour Market Intelligence: historical downturn comparison
-- Compares annual average employment and unemployment rates across
-- the 1979-1987 and 2007-2015 periods.
USE ons_uk_labour_market_mysql;

SELECT
    CAST(RIGHT(period, 4) AS UNSIGNED) AS year,
    ROUND(AVG(employment_rate_age_16_plus_pct), 2) AS avg_employment_rate,
    ROUND(AVG(unemployment_rate_age_16_plus_pct), 2) AS avg_unemployment_rate
FROM ons_uk_labour_market_mysql
WHERE RIGHT(period, 4) REGEXP '^(19|20)[0-9]{2}$'
  AND (
      CAST(RIGHT(period, 4) AS UNSIGNED) BETWEEN 1979 AND 1987
      OR CAST(RIGHT(period, 4) AS UNSIGNED) BETWEEN 2007 AND 2015
  )
GROUP BY CAST(RIGHT(period, 4) AS UNSIGNED)
ORDER BY year;
