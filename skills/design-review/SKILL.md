---
name: design-review
description: Evaluate a game design document for completeness, fun factor, and feasibility
agent: lead-designer
---

# /design-review — Design Document Review

## Trigger
Run when a new design doc is ready for review, or when revisiting an existing system.

## Input
- Path to the design document (in design/gdd/ or design/levels/)

## Review Checklist
1. **Pillars alignment**: Does this support the core gameplay pillars?
2. **Player motivation**: Why would a player engage with this system?
3. **Core loop**: Is the gameplay loop clearly defined (action → feedback → reward)?
4. **Edge cases**: What happens at extremes (level 1 vs max level, 0 items vs full inventory)?
5. **Scope**: Is this achievable within the current sprint/milestone?
6. **Dependencies**: What other systems does this require?
7. **Balance**: Are initial tuning values defined with rationale?
8. **Fun test**: Describe the "30-second pitch" of why this is fun.

## Output
- Review summary with PASS / NEEDS WORK / BLOCKED status
- Specific feedback items with severity (critical, major, minor)
- Suggested revisions

## Agents Involved
- lead-designer (primary reviewer)
- creative-director (final approval for major systems)
- gameplay-programmer (feasibility check)
