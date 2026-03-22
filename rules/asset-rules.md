# Asset Rules — assets/

## Scope
These rules apply to all files in `assets/`.

## Rules
1. **Manifest required**: Every asset must have an entry in `assets/manifest.json`.
2. **Naming**: `category_name_variant.ext` (e.g., `ui_button_hover.png`, `sfx_sword_swing.ogg`).
3. **Textures**: Max 2048x2048 unless approved by lead-artist. Use power-of-two dimensions.
4. **Audio**: .ogg format only. Normalize to -14 LUFS. SFX under 5 seconds, music loops cleanly.
5. **Shaders**: Must include a comment header with purpose, inputs, and performance notes.
6. **No PSD/source files**: Source files go in a separate repository or cloud storage, not here.
