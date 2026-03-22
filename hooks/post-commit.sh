#!/bin/bash
# Post-commit hook: logs commit and updates production tracking

echo "📝 Post-commit: logging commit..."

COMMIT_HASH=$(git rev-parse --short HEAD)
COMMIT_MSG=$(git log -1 --pretty=format:"%s")
COMMIT_DATE=$(date +"%Y-%m-%d %H:%M")

# Append to commit log
LOG_FILE="production/commit-log.md"
mkdir -p production

if [ ! -f "$LOG_FILE" ]; then
    echo "# Commit Log" > "$LOG_FILE"
    echo "" >> "$LOG_FILE"
    echo "| Date | Hash | Message |" >> "$LOG_FILE"
    echo "|------|------|---------|" >> "$LOG_FILE"
fi

echo "| $COMMIT_DATE | $COMMIT_HASH | $COMMIT_MSG |" >> "$LOG_FILE"

echo "✅ Commit $COMMIT_HASH logged."
