#!/bin/bash
# Pre-commit hook: validates code quality before allowing commits

echo "🔍 Running pre-commit checks..."

ERRORS=0

# Check for files exceeding 300 lines
for file in $(git diff --cached --name-only --diff-filter=ACM | grep -E '\.(gd|py|js|ts|cs)$'); do
    lines=$(wc -l < "$file" 2>/dev/null || echo 0)
    if [ "$lines" -gt 300 ]; then
        echo "❌ $file exceeds 300 line limit ($lines lines)"
        ERRORS=$((ERRORS + 1))
    fi
done

# Check for game logic in src/core/
for file in $(git diff --cached --name-only --diff-filter=ACM | grep '^src/core/'); do
    if grep -qE '(combat|inventory|quest|dialogue|enemy|player_stats)' "$file" 2>/dev/null; then
        echo "❌ $file contains game-specific logic in core/ — move to src/systems/"
        ERRORS=$((ERRORS + 1))
    fi
done

# Check for hardcoded secrets
for file in $(git diff --cached --name-only --diff-filter=ACM); do
    if grep -qiE '(api_key|secret|password|token)\s*=\s*["\x27][^"\x27]+["\x27]' "$file" 2>/dev/null; then
        echo "❌ $file may contain hardcoded secrets"
        ERRORS=$((ERRORS + 1))
    fi
done

# Check for missing asset manifest entries
for file in $(git diff --cached --name-only --diff-filter=ACM | grep '^assets/'); do
    manifest="assets/manifest.json"
    if [ -f "$manifest" ]; then
        basename=$(basename "$file")
        if ! grep -q "$basename" "$manifest" 2>/dev/null; then
            echo "⚠️  $file not found in asset manifest (add to $manifest)"
        fi
    fi
done

if [ $ERRORS -gt 0 ]; then
    echo "❌ Pre-commit failed with $ERRORS error(s). Fix issues and try again."
    exit 1
fi

echo "✅ Pre-commit checks passed."
exit 0
