#!/bin/bash
# Session start hook: displays studio status on launch

echo "========================================"
echo "  🎮 Halo Game Studio — Session Start"
echo "========================================"
echo ""

# Show project stats
if [ -d "src" ]; then
    SRC_FILES=$(find src/ -type f 2>/dev/null | wc -l)
    echo "📁 Source files: $SRC_FILES"
fi

if [ -d "assets" ]; then
    ASSET_FILES=$(find assets/ -type f 2>/dev/null | wc -l)
    echo "🎨 Asset files: $ASSET_FILES"
fi

if [ -d "tests" ]; then
    TEST_FILES=$(find tests/ -type f 2>/dev/null | wc -l)
    echo "🧪 Test files: $TEST_FILES"
fi

# Show recent activity
echo ""
echo "📋 Recent commits:"
git log --oneline -5 2>/dev/null || echo "  (no commits yet)"

# Show open bugs
if [ -d "production/bugs" ]; then
    BUG_COUNT=$(ls production/bugs/*.md 2>/dev/null | wc -l)
    echo ""
    echo "🐛 Open bugs: $BUG_COUNT"
fi

echo ""
echo "Run /start to begin or /sprint-plan to plan your next sprint."
echo "========================================"
