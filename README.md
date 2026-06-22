# Project Template

This repository is meant to be used as a GitHub template repository. 
Use it to start new projects with the same basic folder structure, issue templates, pull request checklist, label setup script, and workflow notes.

---

## What this template includes

```text
.
├── .github/
│   ├── ISSUE_TEMPLATE/
│   │   ├── project_epic.yml
│   │   ├── task.yml
│   │   └── bug.yml
│   └── pull_request_template.md
├── docs/
│   └── workflow.md
├── scripts/
│   └── setup-labels.sh
├── src/
│   └── .gitkeep
├── tests/
│   └── .gitkeep
├── results/
│   └── .gitkeep
├── .gitignore
└── README.md
```

---

## Purpose

This template helps every new project start with the same structure.

It is useful for:

- System Design
- Game Development
- Layout Electrical Design
- RTL and Verification 
- AI and ML
- Web Development

The goal is to avoid rebuilding the same planning files every time a new repository is created.

---

## How to use this template

1. Open this repository on GitHub.
2. Click **Use this template**.
3. Select **Create a new repository**.
4. Give the new repository a real project name.
5. Clone the new repository locally.
6. Replace this README content with a project-specific README.
7. Create a Project / Epic issue for the new project.
8. Add the `master-track` label if the project should appear in the Master GitHub Project.

---

## First steps after creating a new project

```bash
git clone https://github.com/Alison0704/NEW_REPO.git
cd NEW_REPO
```

If GitHub CLI is installed, run:

```bash
bash scripts/setup-labels.sh
```

Then update the README and start creating issues.

---

## Folder usage

| Folder | Purpose |
|---|---|
| `src/` | Source code, RTL, scripts, or main implementation files |
| `tests/` | Testbenches, unit tests, simulations, or verification files |
| `docs/` | Notes, specs, workflow documentation, diagrams |
| `scripts/` | Automation scripts and helper commands |
| `results/` | Logs, screenshots, waveform notes, output files, reports |
| `.github/ISSUE_TEMPLATE/` | GitHub issue forms |
| `.github/pull_request_template.md` | Pull request checklist |

---

## Recommended labels

Important project issues should use this pattern:

```text
master-track + type:* + area:* + priority:*
```

Example:

```text
master-track
type:epic
area:verification
priority:P1
```

---

## Standard labels

```text
master-track

type:epic
type:task
type:bug
type:docs
type:test
type:cleanup

area:rtl
area:verification
area:software
area:game-dev
area:ai
area:portfolio
area:hardware

priority:P0
priority:P1
priority:P2
priority:P3

blocked
resume-ready
```

---

## When to use `master-track`

Use `master-track` only for issues that should appear in the Master GitHub Project.

Use it for:

- Main project issues
- Important features
- Resume-worthy work
- Portfolio cleanup
- Blocking bugs
- Documentation needed before publishing

Do not use it for:

- Tiny fixes
- Random notes
- Minor cleanup
- Experiments that may be deleted

---

## Issue structure

Each serious project should start with one Project / Epic issue.

Example:

```text
[Project]: Build cocotb bus/register verification environment
```

Then break it into smaller task issues.

Example:

```text
[Task]: Create register map
[Task]: Add read/write tests
[Task]: Add reset test
[Task]: Generate waveform output
[Task]: Update README
```

---

## Pull request rule

Every pull request should link to an issue.

Example:

```text
Closes #12
```

A pull request should not be merged until the checklist is complete.

---

## Definition of Done

A project or task should only be marked as Done when:

- The work is complete
- Code, design, or documentation has been checked
- Tests or simulations pass, if applicable
- The README is updated
- Useful results are documented
- No important cleanup remains

For hardware or verification projects, Done usually means:

- RTL or code runs
- Testbench runs
- Simulation passes
- VCD, waveform, log, or result file is generated if relevant
- README explains how to run it
- Terminal output or result summary is included

---

## Project-specific README replacement

When creating a real project from this template, replace this README with something like:

```markdown
# Project Name

## Goal

Describe the main goal in one sentence.

## Why this project matters

Explain what skill this project demonstrates.

## Current status

| Area | Status |
|---|---|
| Spec | Not Started |
| Code / RTL | Not Started |
| Tests / Simulation | Not Started |
| Documentation | Not Started |
| Portfolio Ready | No |

## Tools used

- Tool 1
- Tool 2
- Tool 3

## Project structure
.
├── src/
├── tests/
├── docs/
├── scripts/
└── results/


## How to run

```bash
# Add commands here
#```

## Testing / verification

Explain how the project is checked.

## Results

Add screenshots, logs, terminal output, waveform notes, or demo links.

```

