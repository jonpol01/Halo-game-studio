---
name: team-combat
description: Coordinate multiple agents to work on the combat system
agent: lead-designer
---

# /team-combat — Combat Team Orchestration

## Trigger
Run when starting a combat feature that spans design, code, art, and audio.

## Team
- lead-designer → combat design doc, balance values
- gameplay-programmer → implementation in src/systems/
- lead-artist → combat VFX and animations
- audio-designer → combat sound effects
- qa-tester → combat test plan

## Workflow
1. lead-designer writes the combat design doc
2. All team members review and flag concerns
3. gameplay-programmer implements core mechanics
4. lead-artist and audio-designer work on assets in parallel
5. qa-tester writes test plan during implementation
6. Integration: merge code + assets + audio
7. /playtest the combat system
8. Iterate based on feedback

## Handoff Protocol
Each agent writes a handoff.md in their work area when passing to the next stage.
