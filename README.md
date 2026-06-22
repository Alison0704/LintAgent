# LintAgent

## Goal

Automate code review by parsing source code for rule violations and using an LLM backend to explain failures and suggest fixes, reducing manual review time and developer friction.

## Why this project matters
This project demonstrates systems architecture and software engineering expertise, specifically:

**Static Code Analysis** : Parsing source code into ASTs and detecting patterns/violations.

**Language-Agnostic Design** : Building abstractions that work across multiple programming languages.

**Plugin Architecture** : Extensible rule system where new checks can be added independently.

**CLI and Tool Development** : Robust command-line interfaces with configuration, multiple output formats, and error handling.

**LLM Integration** : Working with multiple third-party LLM providers (API abstraction, error recovery, prompt engineering).

**DevOps and Automation** : Docker containerization, GitHub Actions CI/CD, automated testing, and quality gates.

**Test Engineering** : Fault injection regression testing, coverage gating, reproducibility validation.

**Production Engineering** : Determinism guarantees, safety checks (git guards for --apply), credential handling, hermetic offline fallbacks.

## Current status

| Area | Status |
|---|---|
| Spec | In Progress |
| Code / RTL | Not Started |
| Tests / Simulation | Not Started |
| Documentation | Not Started |
| Portfolio Ready | No |

## Tools used

## Core Programming & Frameworks

| Tool | Purpose | Why |
|------|---------|-----|
| **Python 3.12** | Main language | Static analysis, LLM SDK support, cross-platform |
| **Click or Typer** | CLI framework | Structured argument parsing, help generation, command routing |
| **TOML** | Configuration format | Human-readable config (lintagent.toml) |

---

## Parsing & AST

| Tool | Purpose | Scope |
|------|---------|-------|
| **Python `ast` module** | Python AST parsing | Built-in, no external dep |
| **Tree-sitter** | Language-agnostic parsing | JavaScript, TypeScript, Go, Rust, etc. |
| **Babel** (optional) | JavaScript/JSX parsing | Alternative to Tree-sitter for JS |
| **tree-sitter-python** | Fallback Python parser | If built-in `ast` insufficient |

---

## LLM Providers & SDKs

| Provider | SDK | Purpose | Cost |
|----------|-----|---------|------|
| **Anthropic** | `anthropic` | Claude models (default: opus-4-8) | Pay-per-token |
| **OpenAI** | `openai` | GPT-4 / GPT-3.5 | Pay-per-token |
| **Ollama** | HTTP client | Local LLM (self-hosted) | Free |
| **Local** | Template-based | Fallback (no API needed) | Free |

---

## Testing & Quality

| Tool | Purpose | Usage |
|------|---------|-------|
| **pytest** | Unit & integration testing | `pytest tests/` |
| **pytest-cov** | Coverage measurement | `pytest --cov=lintagent --cov-fail-under=85` |
| **coverage** | Coverage reporting | coverage.xml for CI upload |

---

## Output & Reporting

| Format | Library | Purpose |
|--------|---------|---------|
| **Text** | Built-in + colorama | Human-readable violations with colors |
| **JSON** | Built-in `json` | Machine parsing |
| **SARIF 2.1.0** | sarif-om (optional) or manual | GitHub code scanning integration |

---

## Containerization & CI/CD

| Tool | Purpose | Usage |
|------|---------|-------|
| **Docker** | Container image | Multi-stage build: builder → slim runtime |
| **Python 3.12-slim** | Base image | Minimal, ~150MB |
| **GitHub Actions** | CI/CD workflow | Triggers: push, pull_request, tags |
| **GHCR** | GitHub Container Registry | Push images: `latest`, `vX.Y.Z`, `sha-<commit>` |

---

## Git & Version Control

| Tool | Purpose |
|------|---------|
| **Git** | Version control; respects `.gitignore`, dirty-tree checks for `--apply` |
| **GitHub Issues** | Issue templates for Epic, Task, Bug |
| **GitHub Projects** | Workflow: Backlog → Ready → In Progress → Blocked → Review → Done |

---

## Development & Debugging

| Tool | Purpose |
|------|---------|
| **MkDocs** | Documentation site (docs/ folder) |
| **pytest-xdist** (optional) | Parallel test execution |
| **black** (optional) | Code formatting |
| **ruff** (optional) | Linting (ironic: linting the linter!) |

---

## Dependency Management

### Runtime (`requirements.txt`)
```
anthropic>=0.7.0
openai>=1.0.0
click>=8.1.0
pyyaml>=6.0
tree-sitter>=0.20.0
colorama>=0.4.6
pydantic>=2.0
```

### Development (`requirements-dev.txt`)
```
pytest>=7.0
pytest-cov>=4.0
coverage>=7.0
black>=23.0
ruff>=0.1.0
mkdocs>=1.5.0
pytest-xdist>=3.0
```

---

## Regression Harness Tools

| Tool | Purpose |
|------|---------|
| **patch** | Unix utility; applies .patch files for fault injection |
| **difflib** | Python built-in; generate/parse diff format |
| **YAML** | regress.yaml manifest format |

---

## Optional/Advanced Tools

| Tool | Purpose | When |
|------|---------|------|
| **Graphviz** | Visualize rule dependencies | If building rule execution DAGs |
| **sqlalchemy** | Caching violation results | If scaling to huge codebases |
| **redis** | Distributed caching | If multi-worker violation dedup |
| **prometheus** | Metrics export | If building observability |

---

## Minimal Setup (MVP)

```bash
pip install anthropic click pyyaml
# Python has ast built-in
# Output: text/JSON (no SARIF needed yet)
# Testing: pytest
```

---

## Full Production Setup

```bash
pip install -r requirements.txt
pip install -r requirements-dev.txt

# Optional: Local Ollama
docker run -d -p 11434:11434 ollama/ollama

# CI: GitHub Actions + GHCR (configured in .github/workflows/)
# Container: Docker multi-stage build
```

---

## Tool Learning Curve

| Tool | Time | Criticality |
|------|------|---|
| Click (CLI) | 2-3 hours | HIGH |
| Python AST | 4-6 hours | HIGH |
| Tree-sitter | 8-12 hours | HIGH (multi-lang) |
| pytest | 2-4 hours | HIGH |
| Anthropic SDK | 2-4 hours | MEDIUM |
| GitHub Actions | 4-6 hours | MEDIUM |
| Docker | 4-6 hours | MEDIUM |
| SARIF spec | 6-10 hours | LOW (late-stage) |

---

## Installation Checklist

- [ ] Python 3.12+ (check: `python --version`)
- [ ] pip or uv (check: `pip --version`)
- [ ] Git (check: `git --version`)
- [ ] Docker (optional, check: `docker --version`)
- [ ] GitHub CLI (optional, check: `gh --version`)

---

## Resources & Documentation

### Official Docs
- [Click documentation](https://click.palletsprojects.com/)
- [Python AST module](https://docs.python.org/3/library/ast.html)
- [Tree-sitter](https://tree-sitter.github.io/tree-sitter/)
- [Anthropic API docs](https://docs.anthropic.com/)
- [pytest documentation](https://docs.pytest.org/)
- [GitHub Actions docs](https://docs.github.com/en/actions)
- [SARIF specification](https://sarifweb.azurewebsites.net/)

### Helpful Articles
- Static Analysis: https://en.wikipedia.org/wiki/Static_program_analysis
- AST Parsing: https://blog.logrocket.com/how-to-work-with-abstract-syntax-trees/
- CLI Best Practices: https://www.twelve-factor.app/
- Testing Strategy: https://martinfowler.com/articles/testing-strategies.html


## Project structure
TBD

## How to run

```bash
# TBD
```

## Testing / verification

 TBD

## Results
 TBD

