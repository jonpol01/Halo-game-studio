---
name: balance-check
description: Analyze game balance — damage curves, economy flow, progression pacing
agent: lead-designer
---

# /balance-check — Balance Analysis

## Trigger
Run when tuning gameplay values or before a milestone build.

## Input
- System to analyze (combat, economy, progression, or all)
- Current balance data from src/data/

## Analysis Steps
1. **Load current values** from config files in src/data/
2. **Model curves**: Plot damage-per-second, time-to-kill, resource generation rates
3. **Identify outliers**: Values that break expected ranges
4. **Compare to design targets**: Check against tuning targets in design docs
5. **Simulate edge cases**: Min/max builds, speedrun paths, AFK scenarios
6. **Generate recommendations**: Specific value adjustments with rationale

## Output
- Balance report with charts and data tables
- List of outlier values with suggested corrections
- Risk assessment (what breaks if these values ship as-is)

## Agents Involved
- lead-designer (analysis and recommendations)
- gameplay-programmer (data extraction and simulation)
