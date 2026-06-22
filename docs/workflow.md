# Workflow

## Master GitHub Project flow

Use this project flow:

```text
Backlog → Ready → In Progress → Blocked → Review → Done
```

## Meaning of each status

| Status | Meaning |
|---|---|
| Backlog | Idea exists, but it is not ready to start |
| Ready | Clear enough to start |
| In Progress | Currently being worked on |
| Blocked | Cannot continue because something is missing or broken |
| Review | Work is mostly done, final check needed |
| Done | Finished, checked, and documented |

## Issue types

| Label | Meaning |
|---|---|
| `type:epic` | Big parent issue or full project |
| `type:task` | Smaller piece of work |
| `type:bug` | Something broken |
| `type:docs` | Documentation work |
| `type:test` | Testing, simulation, or verification work |
| `type:cleanup` | Cleanup, refactor, or organization |

## Areas

| Label | Area |
|---|---|
| `area:system-design` | System Design |
| `area:game-development` | Game Development |
| `area:layout-design` | Layout Design |
| `area:rtl-verification` | RTL and Verification |
| `area:ai-ml` | AI and ML |
| `area:web-development` | Web Development |

## Priority

| Label | Meaning |
|---|---|
| `priority:P0` | Urgent, blocking, or job-critical |
| `priority:P1` | Important |
| `priority:P2` | Useful but not urgent |
| `priority:P3` | Someday or nice-to-have |

## Recommended issue labels

Every important project issue should have:

```text
master-track
type:*
area:*
priority:*
```

Example:

```text
master-track
type:epic
area:rtl-verification
priority:P1
```

## Definition of Done

A task is Done only when:

- The work is complete
- Tests or checks pass, if applicable
- README or docs are updated
- Results are documented
- No important cleanup remains
