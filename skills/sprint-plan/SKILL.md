---
name: sprint-plan
description: Plan the next sprint with capacity estimation, task breakdown, and priority assignment
agent: lead-producer
---

# /sprint-plan — Sprint Planning

## Trigger
Run at the start of each sprint (typically 1-2 weeks).

## Flow
1. **Review backlog**: Gather open tasks, bugs, and design requests
2. **Assess capacity**: Which agents are available? Any blockers?
3. **Prioritize**: P0 (must ship), P1 (should ship), P2 (stretch goals)
4. **Break down**: Each task gets an owner, estimate, and acceptance criteria
5. **Validate scope**: Total estimates vs. available capacity (aim for 80% utilization)
6. **Write sprint doc**: Save to production/sprint-{N}.md

## Output
- Sprint plan document with task assignments
- Sprint goal (1-2 sentences)
- Risk items and mitigation plans

## Agents Involved
- lead-producer (facilitates)
- lead-designer (design task scoping)
- lead-programmer (technical task scoping)
