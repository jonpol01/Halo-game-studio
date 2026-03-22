# Agent Roster

## Hierarchy

```
┌─────────────────────────────────────────────┐
│              DIRECTORS (Opus)                │
│  creative-director    technical-director     │
└────────────┬────────────────────┬────────────┘
             │                    │
┌────────────┴───────┐  ┌────────┴────────────┐
│   LEADS (Sonnet)   │  │   LEADS (Sonnet)    │
│  lead-designer     │  │  lead-programmer    │
│  lead-artist       │  │  lead-producer      │
└────────┬───────────┘  └────────┬────────────┘
         │                       │
┌────────┴───────────────────────┴────────────┐
│          SPECIALISTS (Sonnet/Haiku)          │
│  gameplay-programmer    ui-developer         │
│  narrative-designer     audio-designer       │
│  qa-tester              devops-engineer      │
└──────────────────────────────────────────────┘
```

## Reporting Lines
- gameplay-programmer → lead-programmer → technical-director
- ui-developer → lead-programmer → technical-director
- narrative-designer → creative-director
- audio-designer → lead-artist → creative-director
- qa-tester → lead-producer → creative-director
- devops-engineer → lead-programmer → technical-director

## Escalation Protocol
```
Specialist → Lead → Director
```

Cross-domain decisions always escalate. No agent makes unilateral decisions outside their lane.

## Agent Files
All agent definitions are in `agents/` organized by tier:
- `agents/directors/` — 2 agents
- `agents/leads/` — 4 agents
- `agents/specialists/` — 6 agents
