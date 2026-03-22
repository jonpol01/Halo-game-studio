# src/systems/ — Gameplay Systems

Each system is a self-contained module with a clear API. Systems communicate exclusively through the Event Bus.

## Planned Systems
- `combat/` — Damage, health, weapons, abilities
- `ai/` — Enemy behaviors, pathfinding, decision trees
- `inventory/` — Items, equipment, crafting
- `progression/` — XP, leveling, skill trees
- `physics/` — Movement, collision, environmental interactions
- `save_load/` — Game state serialization and persistence

## Rules
- No direct imports between systems — use EventBus
- Each system needs a design doc in design/gdd/
- Max 300 lines per file
- Minimum 80% test coverage
