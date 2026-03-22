---
name: start
description: Guided project kickoff — detects your current state and routes you to the right workflow
agent: creative-director
---

# /start — Project Kickoff

## Trigger
Run at the beginning of a new project or when onboarding an existing one.

## Flow
1. **Detect state**: Check for existing files in design/, src/, assets/
2. **Route based on state**:
   - **Empty project**: Run creative brainstorming → generate concept doc → outline GDD
   - **Concept only** (design/gdd/ has docs but src/ empty): Refine pillars → define prototype scope → create sprint 0 plan
   - **In development** (src/ has code): Run architecture audit → gap analysis → create integration plan
   - **Has a build** (tools/ has build scripts): Run /build-game → /playtest → retrospective
3. **Output**: A kickoff document in production/ with next steps and assigned agents

## Agents Involved
- creative-director (leads the process)
- technical-director (architecture assessment)
- lead-producer (sprint planning)
