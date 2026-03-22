# src/data/ — Game Data

Configuration files, balance tables, save/load logic, and data schemas.

## Structure
- `config/` — Game configuration (settings, defaults)
- `tables/` — Balance tables (damage, XP, loot)
- `saves/` — Save/load implementation
- `localization/` — Translation strings

## Format
- Config and tables use JSON
- Localization uses CSV (key, en, es, fr, ...)
- Save files use a versioned binary or JSON format
