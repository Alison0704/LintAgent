#!/bin/bash

set -e

if ! command -v gh >/dev/null 2>&1; then
  echo "GitHub CLI is not installed."
  echo "Install it with:"
  echo "  brew install gh"
  echo "Then log in with:"
  echo "  gh auth login"
  exit 1
fi

echo "Creating standard labels..."

gh label create "master-track" --color "5319E7" --description "Track this issue in the Master GitHub Project" --force

gh label create "type:epic" --color "D4C5F9" --description "Large project or parent issue" --force
gh label create "type:task" --color "D4C5F9" --description "Normal task" --force
gh label create "type:bug" --color "D4C5F9" --description "Bug or broken behavior" --force
gh label create "type:docs" --color "D4C5F9" --description "Documentation work" --force
gh label create "type:test" --color "D4C5F9" --description "Testing, simulation, or verification work" --force
gh label create "type:cleanup" --color "D4C5F9" --description "Cleanup, refactor, or organization" --force

gh label create "area:system-design" --color "1D76DB" --description "System Design work" --force
gh label create "area:game-development" --color "1D76DB" --description "Game Development work" --force
gh label create "area:layout-design" --color "1D76DB" --description "Layout Design work" --force
gh label create "area:rtl-verification" --color "1D76DB" --description "RTL and Verification work" --force
gh label create "area:ai-ml" --color "1D76DB" --description "AI and ML work" --force
gh label create "area:web-development" --color "1D76DB" --description "Web Development work" --force

gh label create "priority:P0" --color "B60205" --description "Urgent, blocking, or job-critical" --force
gh label create "priority:P1" --color "D93F0B" --description "Important" --force
gh label create "priority:P2" --color "FBCA04" --description "Useful but not urgent" --force
gh label create "priority:P3" --color "0E8A16" --description "Someday or nice-to-have" --force

gh label create "blocked" --color "B60205" --description "Cannot continue until something is fixed or decided" --force
gh label create "resume-ready" --color "0E8A16" --description "Ready to show on resume or portfolio" --force

echo "Done."
