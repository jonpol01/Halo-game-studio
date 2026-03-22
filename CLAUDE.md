# Halo Game Studio — Claude Code Game Dev Configuration

> A streamlined game development studio powered by Claude Code.
> 12 AI agents, 12 workflow skills, and a coordination system mirroring a real studio hierarchy.

---

## Studio Philosophy

Every agent has a role. Directors guard the vision, leads own their domain, specialists do the hands-on work. No agent acts outside its lane without escalation.

**Three Laws of the Studio:**
1. **Vision First** — Gameplay feel and player experience outrank technical elegance.
2. **Ship It** — A working build beats a perfect design doc. Prototype early, validate fast.
3. **Stay in Lane** — Agents escalate cross-domain decisions; they don't unilaterally make them.

---

## Project Structure

```
Halo-game-studio/
├── CLAUDE.md              # This file — master config
├── .claude/               # Claude Code settings, hooks, permissions
│   └── settings.json
├── agents/                # Agent definitions (12 agents)
│   ├── directors/         # Vision-level (use Opus)
│   ├── leads/             # Department-level (use Sonnet)
│   └── specialists/       # Hands-on work (use Sonnet/Haiku)
├── skills/                # Slash commands (12 skills)
├── hooks/                 # Git & session hooks
├── rules/                 # Path-scoped coding standards
├── docs/                  # Documentation
├── templates/             # Document templates
├── src/                   # Game source code
│   ├── core/              # Engine core: game loop, renderer, input
│   ├── systems/           # Gameplay systems: combat, AI, physics
│   ├── ui/                # Menus, HUD, dialogs
│   └── data/              # Config, save/load, data tables
├── assets/                # Art, audio, VFX, shaders
│   ├── art/
│   ├── audio/
│   ├── vfx/
│   └── shaders/
├── design/                # Design documents
│   ├── gdd/               # Game Design Documents
│   ├── narrative/          # Story, dialogue, lore
│   └── levels/            # Level design docs & layouts
├── tests/                 # Test suites
├── tools/                 # Build scripts & pipeline tools
├── prototypes/            # Throwaway prototypes (isolated from src/)
└── production/            # Sprint plans, milestones, retrospectives
```

---

## Agent Roster (12 Agents)

### Directors (Opus-tier — vision guardians)
| Agent | Role |
|-------|------|
| `creative-director` | Owns game vision, resolves creative conflicts, approves major design changes |
| `technical-director` | Owns architecture, approves tech stack changes, guards performance budgets |

### Leads (Sonnet-tier — domain owners)
| Agent | Role |
|-------|------|
| `lead-designer` | Gameplay systems, balance, progression, level flow |
| `lead-programmer` | Code architecture, reviews, tech debt tracking |
| `lead-artist` | Art style, asset pipeline, visual consistency |
| `lead-producer` | Sprint planning, milestone tracking, scope management |

### Specialists (Sonnet/Haiku-tier — hands-on)
| Agent | Role |
|-------|------|
| `gameplay-programmer` | Implements mechanics, physics, AI behaviors |
| `ui-developer` | Builds menus, HUD, in-game UI |
| `narrative-designer` | Writes dialogue, lore, quest scripts |
| `audio-designer` | Sound effects, music integration, audio mixing |
| `qa-tester` | Test plans, bug reports, regression testing |
| `devops-engineer` | Build pipeline, CI/CD, deployment automation |

---

## Skill Commands (12 Skills)

| Command | Category | Description |
|---------|----------|-------------|
| `/start` | Onboarding | Guided project kickoff based on current state |
| `/design-review` | Review | Evaluate a game design doc for completeness & fun |
| `/code-review` | Review | Review code for bugs, perf, and style |
| `/balance-check` | Review | Analyze game balance (damage, economy, progression) |
| `/sprint-plan` | Production | Plan next sprint with capacity & priorities |
| `/bug-report` | Production | Structured bug report with repro steps |
| `/retrospective` | Production | Sprint retrospective with action items |
| `/build-game` | Release | Compile, bundle, and validate a build |
| `/playtest` | Release | Run a guided playtest session with feedback capture |
| `/team-combat` | Orchestration | Coordinate agents for combat system work |
| `/team-narrative` | Orchestration | Coordinate agents for narrative/quest work |
| `/team-ui` | Orchestration | Coordinate agents for UI/UX work |

---

## Agent Coordination Rules

### Escalation Protocol
```
Specialist → Lead → Director
```
- Specialists escalate to their Lead when a decision crosses domain boundaries.
- Leads escalate to a Director when the change impacts game vision or architecture.
- Directors resolve conflicts between Leads and have final say.

### Handoff Protocol
When passing work between agents:
1. **Context file** — Write a `handoff.md` in the relevant directory.
2. **State summary** — What's done, what's remaining, what's blocked.
3. **Acceptance criteria** — How the receiving agent knows they're done.

### Quality Gates
Every commit must pass:
- [ ] Code compiles without errors
- [ ] No regressions in existing tests
- [ ] Follows rules/ coding standards for the changed path
- [ ] Reviewed by the relevant Lead agent

---

## Coding Standards (Summary)

### General
- **Language**: As per project setup (default: GDScript/Godot, but configurable)
- **Naming**: `snake_case` for files/functions, `PascalCase` for classes, `SCREAMING_SNAKE` for constants
- **Comments**: Explain *why*, not *what*. Every public function gets a docstring.
- **Max file size**: 300 lines. If larger, refactor into modules.

### src/core/
- No game-specific logic. Core is engine-level only.
- Changes require `technical-director` approval.

### src/systems/
- Each system is self-contained with a clear API.
- Cross-system communication goes through an event bus, never direct calls.

### src/ui/
- Separate logic from presentation.
- All text must go through a localization layer.

### assets/
- All assets require a manifest entry.
- Art assets: max texture size 2048x2048 unless approved by `lead-artist`.
- Audio: .ogg for SFX, .ogg for music. Normalize to -14 LUFS.

---

## Getting Started

Run `/start` and the system will guide you based on where you are:

| State | What Happens |
|-------|-------------|
| **No idea yet** | Creative brainstorming → concept doc → GDD outline |
| **Vague concept** | Refine into pillars → prototype scope → sprint 0 plan |
| **Clear design** | Architecture review → task breakdown → sprint 1 kickoff |
| **Existing project** | Audit → gap analysis → integration plan |

---

## Safety & Permissions

- Hooks validate commits before they land.
- No force-pushes to `main`.
- Prototype code stays in `prototypes/` — never promoted to `src/` without review.
- Agents cannot modify `.claude/settings.json` or `CLAUDE.md` without Director approval.
