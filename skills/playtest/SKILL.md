---
name: playtest
description: Run a guided playtest session with structured feedback capture
agent: lead-designer
---

# /playtest — Playtest Session

## Trigger
Run after /build-game produces a valid build.

## Flow
1. **Define scope**: Which features/levels are being tested?
2. **Set goals**: What questions do we want answered?
3. **Play session**: Walk through the content as a player
4. **Capture feedback**: Structured notes on feel, fun, confusion points, bugs
5. **Analyze**: Group feedback by theme, prioritize by impact
6. **Report**: Save to production/playtest-{N}.md

## Feedback Categories
- **Fun factor**: Was it enjoyable? Would you play again?
- **Clarity**: Did you understand what to do?
- **Difficulty**: Was it too easy/hard? Fair?
- **Bugs**: Anything broken?
- **Polish**: What felt rough or unfinished?

## Output
- Playtest report with prioritized findings
- Bug reports auto-filed via /bug-report
- Design revision suggestions
