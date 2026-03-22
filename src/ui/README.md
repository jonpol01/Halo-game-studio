# src/ui/ — User Interface

All player-facing interfaces: menus, HUD, dialogs, inventory screens, settings.

## Architecture
- UI reads game state through events — never mutates state directly
- All text goes through the localization layer
- Presentation (layout) is separate from logic (data binding)

## Planned Modules
- `hud/` — In-game heads-up display
- `menus/` — Main menu, pause menu, settings
- `dialogs/` — Dialogue boxes, prompts, confirmations
- `inventory/` — Inventory and equipment screens

## Rules
- No game logic in UI code
- All strings localized
- Must support keyboard and gamepad navigation
