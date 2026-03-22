#!/bin/bash
# Test runner — executes test suites

SUITE=${1:-"all"}

echo "Running tests: $SUITE"
echo "========================"

run_unit() {
    echo "Unit tests..."
    # Replace with your engine's test runner
    # Godot: godot --headless --script tests/unit/run_all.gd
    # Unity: dotnet test
    echo "  (Configure test runner for your engine)"
}

run_integration() {
    echo "Integration tests..."
    echo "  (Configure test runner for your engine)"
}

run_regression() {
    echo "Regression tests..."
    echo "  (Configure test runner for your engine)"
}

case $SUITE in
    unit) run_unit ;;
    integration) run_integration ;;
    regression) run_regression ;;
    all)
        run_unit
        run_integration
        run_regression
        ;;
    *) echo "Unknown suite: $SUITE. Use: unit, integration, regression, or all" ;;
esac

echo "========================"
echo "Test run complete."
