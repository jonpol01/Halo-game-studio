<div align="center">

# 🎮 Halo Game Studio

### A streamlined game dev studio — 12 AI agents, 12 workflow skills, and a complete coordination system mirroring real studio hierarchy.

<br>

[![Agents](https://img.shields.io/badge/AI_Agents-12-blueviolet?style=for-the-badge&logo=robot&logoColor=white)](agents/)
[![Skills](https://img.shields.io/badge/Workflow_Skills-12-blue?style=for-the-badge&logo=terminal&logoColor=white)](skills/)
[![Hooks](https://img.shields.io/badge/Git_Hooks-3-green?style=for-the-badge&logo=git&logoColor=white)](hooks/)
[![Rules](https://img.shields.io/badge/Coding_Rules-4-orange?style=for-the-badge&logo=eslint&logoColor=white)](rules/)
[![Templates](https://img.shields.io/badge/Templates-5-red?style=for-the-badge&logo=files&logoColor=white)](templates/)

[![Godot](https://img.shields.io/badge/Engine-Godot_4.x-478CBF?style=for-the-badge&logo=godot-engine&logoColor=white)](https://godotengine.org)
[![Unity](https://img.shields.io/badge/Engine-Unity_2022+-222222?style=for-the-badge&logo=unity&logoColor=white)](https://unity.com)
[![Unreal](https://img.shields.io/badge/Engine-Unreal_5.x-313131?style=for-the-badge&logo=unreal-engine&logoColor=white)](https://unrealengine.com)

[![License](https://img.shields.io/badge/License-MIT-yellow?style=for-the-badge)](LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-Welcome-brightgreen?style=for-the-badge)](https://github.com/jonpol01/Halo-game-studio/pulls)
[![Stars](https://img.shields.io/github/stars/jonpol01/Halo-game-studio?style=for-the-badge&logo=github&color=gold)](https://github.com/jonpol01/Halo-game-studio/stargazers)

<br>

</div>

---

## ⚡ Quick Start

```bash
# 1. Clone the repo
git clone https://github.com/jonpol01/Halo-game-studio.git
cd Halo-game-studio

# 2. Run the kickoff wizard
/start
```

The `/start` command detects your project state and guides you:

| State | What Happens |
|-------|-------------|
| 🆕 **No idea yet** | Creative brainstorming → concept doc → GDD outline |
| 💡 **Vague concept** | Refine pillars → prototype scope → sprint 0 plan |
| 📐 **Clear design** | Architecture review → task breakdown → sprint 1 |
| 🔧 **Existing project** | Audit → gap analysis → integration plan |

---

## 🏗️ Studio Hierarchy

```
┌──────────────────────────────────────────────────────┐
│                DIRECTORS                               │
│     🎬 creative-director    🔧 technical-director     │
└───────────────┬──────────────────────┬───────────────┘
                │                      │
┌───────────────┴──────────┐ ┌─────────┴───────────────┐
│     LEADS     │ │     LEADS     │
│  🎯 lead-designer        │ │  💻 lead-programmer      │
│  🎨 lead-artist          │ │  📋 lead-producer        │
└───────────────┬──────────┘ └─────────┬───────────────┘
                │                      │
┌───────────────┴──────────────────────┴───────────────┐
│           SPECIALISTS                                  │
│  ⚔️  gameplay-programmer    🖥️  ui-developer          │
│  📖 narrative-designer     🔊 audio-designer          │
│  🧪 qa-tester              🚀 devops-engineer         │
└──────────────────────────────────────────────────────┘
```

**Escalation protocol:** `Specialist → Lead → Director` — agents stay in their lane and escalate cross-domain decisions up the chain.

---

## 🎯 Skill Commands

### 🔍 Reviews & Analysis
| Command | Description |
|---------|-------------|
| `/design-review` | Evaluate a design doc for completeness, fun, and feasibility |
| `/code-review` | Review code for bugs, perf, style, and architecture |
| `/balance-check` | Analyze damage curves, economy flow, progression pacing |

### 📋 Production
| Command | Description |
|---------|-------------|
| `/sprint-plan` | Plan next sprint with capacity, priorities, and task breakdown |
| `/bug-report` | Structured bug report with repro steps and severity |
| `/retrospective` | Sprint retro with metrics, wins, and action items |

### 🚀 Release
| Command | Description |
|---------|-------------|
| `/build-game` | Compile, bundle, validate, and produce a build |
| `/playtest` | Guided playtest session with structured feedback capture |

### 🤝 Team Orchestration
| Command | Description |
|---------|-------------|
| `/team-combat` | Coordinate agents for combat system work |
| `/team-narrative` | Coordinate agents for narrative/quest content |
| `/team-ui` | Coordinate agents for UI/UX features |

---

## 📁 Project Structure

```
Halo-game-studio/
├── 📄 README.md                 # You are here
├── ⚙️  config/settings.json     # Permissions, hooks, safety rules
│
├── 🤖 agents/                   # 12 Agent definitions
│   ├── directors/               #   2 vision guardians (Opus)
│   ├── leads/                   #   4 domain owners (Sonnet)
│   └── specialists/             #   6 hands-on workers (Sonnet/Haiku)
│
├── ⚡ skills/                   # 12 Slash commands
│   ├── start/                   design-review/    code-review/
│   ├── balance-check/           sprint-plan/      bug-report/
│   ├── retrospective/           build-game/       playtest/
│   └── team-combat/             team-narrative/   team-ui/
│
├── 🪝 hooks/                    # Git & session hooks
│   ├── pre-commit.sh            #   File size, secrets, core/ checks
│   ├── post-commit.sh           #   Commit logging
│   └── session-start.sh         #   Studio status dashboard
│
├── 📏 rules/                    # Path-scoped coding standards
│   ├── core-rules.md            systems-rules.md
│   ├── ui-rules.md              asset-rules.md
│
├── 📝 templates/                # Document templates
│   ├── design/                  #   GDD, level design
│   ├── production/              #   Sprint plan, bug report
│   └── technical/               #   Architecture decisions
│
├── 💾 src/                      # Game source code
│   ├── core/                    #   Engine: game loop, events, input
│   ├── systems/                 #   Gameplay: combat, AI, inventory
│   ├── ui/                      #   Menus, HUD, dialogs
│   └── data/                    #   Config, saves, localization
│
├── 🎨 assets/                   # Art, audio, VFX, shaders
├── 📐 design/                   # GDDs, narrative, level designs
├── 🧪 tests/                    # Unit, integration, regression
├── 🔨 tools/                    # Build scripts & test runners
├── 🧫 prototypes/               # Throwaway prototypes
└── 📋 production/               # Sprint docs & tracking
```

---

## 🔄 Core Workflow

```
┌─────────────┐     ┌──────────────┐     ┌─────────────┐
│ /sprint-plan │ ──→ │  Implement   │ ──→ │ /code-review │
└─────────────┘     └──────────────┘     └──────┬──────┘
                                                 │
       ┌─────────────────────────────────────────┘
       ▼
┌──────────────┐     ┌────────────┐     ┌───────────────┐
│ /build-game  │ ──→ │ /playtest  │ ──→ │ /retrospective │
└──────────────┘     └────────────┘     └───────────────┘
```

---

## 🛡️ Safety & Quality

- **Pre-commit hooks** validate file size, check for secrets, enforce `core/` purity
- **Protected branches** — no force-pushes to `main` or `release/*`
- **Prototype isolation** — `prototypes/` code never leaks into `src/` without review
- **Quality gates** — every commit must compile, pass tests, follow rules, and be reviewed

---

## 🎮 Supported Engines

This studio is **engine-agnostic** — the agents, skills, and workflows work with any engine. Starter code is provided in GDScript (Godot), but easily adapts to:

- **Godot 4.x** — Recommended for rapid prototyping
- **Unity 2022+** — Recommended for 3D projects
- **Unreal 5.x** — Recommended for AAA-quality visuals

---

## 🤝 Contributing

PRs are welcome! If you want to add agents, skills, or engine-specific templates:

1. Fork the repo
2. Create a feature branch
3. Follow the coding rules in `rules/`
4. Submit a PR with a clear description

---

## 📄 License

This project is licensed under the MIT License — see [LICENSE](LICENSE) for details.

---

