# src/core/ — Engine Core

This directory contains engine-level code only. No game-specific logic.

## Modules
- `game_loop` — Main loop, tick management, frame timing
- `renderer` — Rendering pipeline, draw calls, camera
- `input` — Input handling, key mapping, gamepad support
- `event_bus` — Cross-system event dispatch
- `resource_manager` — Asset loading and caching

## Rules
- Changes require technical-director approval
- No game logic (combat, quests, inventory, etc.)
- 100% test coverage required
- Performance-critical — profile all changes
