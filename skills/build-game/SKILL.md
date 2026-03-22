---
name: build-game
description: Compile, bundle, validate, and produce a game build
agent: devops-engineer
---

# /build-game — Build Pipeline

## Trigger
Run when producing a playable build (for testing or release).

## Steps
1. **Pre-build checks**: Run all tests, lint all code, validate asset manifests
2. **Compile**: Build the game from src/ with current configuration
3. **Bundle assets**: Package assets/ according to platform targets
4. **Validate**: Launch build, check for crashes, verify load times
5. **Performance check**: FPS, memory, load times against budgets
6. **Tag**: Create git tag with build number
7. **Report**: Generate build report

## Output
- Build artifact (platform-specific)
- Build report with pass/fail status
- Performance metrics vs. budgets

## Agents Involved
- devops-engineer (runs the pipeline)
- technical-director (approves performance results)
- qa-tester (runs smoke tests on the build)
