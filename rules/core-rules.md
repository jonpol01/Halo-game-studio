# Coding Rules — src/core/

## Scope
These rules apply to all files in `src/core/`.

## Rules
1. **No game logic**: Core is engine-level only. Combat, inventory, quests, etc. belong in `src/systems/`.
2. **Approval required**: All changes to core/ must be approved by `technical-director`.
3. **100% test coverage**: Every public function must have a unit test.
4. **No external dependencies**: Core should be self-contained. Wrap any external libs in an adapter.
5. **Performance-critical**: Profile any change that touches the game loop or renderer.
