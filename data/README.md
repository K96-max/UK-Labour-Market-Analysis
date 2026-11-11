# Labour market data

## `ons_uk_labour_market_clean.csv`

The cleaned time-series file contains 943 observations and 9 columns: one reporting-period field and eight labour-market rate fields.

| Column | Meaning |
|---|---|
| `period` | ONS reporting period, shown as a three-month period label |
| `economic_activity_rate_age_16_plus_pct` | Economic activity rate for people aged 16 and over (%) |
| `employment_rate_age_16_plus_pct` | Employment rate for people aged 16 and over (%) |
| `unemployment_rate_age_16_plus_pct` | Unemployment rate for people aged 16 and over (%) |
| `economic_inactivity_rate_age_16_plus_pct` | Economic inactivity rate for people aged 16 and over (%) |
| `economic_activity_rate_age_16_to_64_pct` | Economic activity rate for people aged 16–64 (%) |
| `employment_rate_age_16_to_64_pct` | Employment rate for people aged 16–64 (%) |
| `unemployment_rate_age_16_to_64_pct` | Unemployment rate for people aged 16–64 (%) |
| `economic_inactivity_rate_age_16_to_64_pct` | Economic inactivity rate for people aged 16–64 (%) |

All rate values are percentages, not proportions. The 16+ and 16–64 measures use different population age ranges and should not be compared as though they share the same denominator.

The CSV is a prepared analysis file. The repository does not yet contain the original ONS download or the Python cleaning notebook, so the complete preparation workflow cannot currently be reproduced from this repository alone. Refer to the project README for the distinction between this 943-row cleaned file and the separate 666-row MySQL import.
