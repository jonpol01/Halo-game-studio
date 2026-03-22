---
name: bug-report
description: File a structured bug report with reproduction steps, severity, and assignment
agent: qa-tester
---

# /bug-report — Bug Report

## Trigger
Run when a bug is discovered during testing or development.

## Template
```markdown
# Bug: [Short Title]

**Severity**: Critical / Major / Minor / Cosmetic
**Component**: [src/systems/combat, src/ui/hud, etc.]
**Found by**: [agent-id]
**Found in**: [build version or commit hash]

## Description
[What's wrong — 1-2 sentences]

## Steps to Reproduce
1. [Step 1]
2. [Step 2]
3. [Step 3]

## Expected Behavior
[What should happen]

## Actual Behavior
[What actually happens]

## Screenshots / Logs
[Attach if applicable]

## Environment
- Platform: [OS/device]
- Build: [version]
```

## Output
- Bug report saved to production/bugs/
- Assigned to relevant agent based on component
- Added to sprint backlog if severity >= Major
