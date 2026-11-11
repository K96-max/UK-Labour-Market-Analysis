-- UK Labour Market Intelligence: data exploration
USE ons_uk_labour_market_mysql;

SHOW TABLES;
DESCRIBE ons_uk_labour_market_mysql;

SELECT COUNT(*) AS total_records
FROM ons_uk_labour_market_mysql;

SELECT
    period,
    employment_rate_age_16_plus_pct,
    unemployment_rate_age_16_plus_pct,
    economic_inactivity_rate_age_16_plus_pct
FROM ons_uk_labour_market_mysql
ORDER BY period
LIMIT 10;

SELECT *
FROM ons_uk_labour_market_mysql
LIMIT 10;
