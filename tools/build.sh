#!/bin/bash
# Build script — compiles and packages the game

echo "Halo Game Studio — Build Pipeline"
echo "====================================="

# Step 1: Pre-build validation
echo "Step 1: Pre-build validation..."
./tools/run_tests.sh all
if [ $? -ne 0 ]; then
    echo "Tests failed. Aborting build."
    exit 1
fi

# Step 2: Validate asset manifest
echo "Step 2: Validating assets..."
if [ -f "assets/manifest.json" ]; then
    echo "  Asset manifest found"
else
    echo "  No asset manifest — skipping validation"
fi

# Step 3: Build
echo "Step 3: Building..."
# Replace with your engine's build command
# Godot: godot --headless --export-release "Linux" build/game
# Unity: unity -batchmode -buildTarget StandaloneLinux64 -executeMethod BuildScript.Build
echo "  (Configure build command for your engine)"

# Step 4: Tag
echo "Step 4: Tagging build..."
BUILD_NUM=$(git rev-list --count HEAD 2>/dev/null || echo "0")
BUILD_TAG="build-$BUILD_NUM"
echo "  Build: $BUILD_TAG"

echo "====================================="
echo "Build pipeline complete."
