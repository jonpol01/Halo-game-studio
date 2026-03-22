# tests/ — Test Suites

## Structure
- `unit/` — Unit tests for individual functions and classes
- `integration/` — Integration tests for system interactions
- `regression/` — Regression tests for fixed bugs

## Conventions
- Test file mirrors source file: `src/systems/combat.gd` → `tests/unit/test_combat.gd`
- Every bug fix gets a regression test
- Run all tests before /build-game

## Running Tests
```bash
# Run all tests
./tools/run_tests.sh

# Run specific suite
./tools/run_tests.sh unit
./tools/run_tests.sh integration
```
