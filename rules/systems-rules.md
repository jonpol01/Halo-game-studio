# Coding Rules — src/systems/

## Scope
These rules apply to all files in `src/systems/`.

## Rules
1. **Self-contained**: Each system is a module with a clear public API.
2. **Event bus only**: Cross-system communication goes through the event bus. No direct imports between systems.
3. **Design doc required**: No system is implemented without a corresponding doc in `design/gdd/`.
4. **Max 300 lines**: Files exceeding this limit must be refactored into sub-modules.
5. **Docstrings**: Every public function needs a docstring explaining what, why, and edge cases.
6. **Test coverage**: Minimum 80% test coverage for system logic.
