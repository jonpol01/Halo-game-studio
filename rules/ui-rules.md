# Coding Rules — src/ui/

## Scope
These rules apply to all files in `src/ui/`.

## Rules
1. **No game logic**: UI reads state and dispatches events. It never mutates game state directly.
2. **Localization**: All displayed text goes through the localization layer. No hardcoded strings.
3. **Separation**: Presentation (layout, styling) is separate from logic (state reading, event dispatch).
4. **Accessibility**: UI must support keyboard/gamepad navigation. Color is never the sole indicator.
5. **Responsive**: UI must handle different resolutions and aspect ratios.
