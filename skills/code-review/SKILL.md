---
name: code-review
description: Review code for bugs, performance issues, style violations, and architecture compliance
agent: lead-programmer
---

# /code-review — Code Review

## Trigger
Run on any PR or code change before merge.

## Input
- File paths or git diff of changes

## Review Checklist
1. **Correctness**: Does the code do what the design doc specifies?
2. **Architecture**: Does it follow the system boundaries in src/?
3. **Performance**: Any obvious hot paths, unnecessary allocations, or N+1 patterns?
4. **Style**: Follows naming conventions and file size limits?
5. **Testing**: Are there tests? Do they cover happy path and edge cases?
6. **Event bus**: Cross-system calls go through events, not direct references?
7. **Documentation**: Public APIs have docstrings?
8. **Security**: No hardcoded secrets, no unsafe operations?

## Output
- Review verdict: APPROVE / REQUEST CHANGES / BLOCK
- Line-by-line comments grouped by severity
- Suggested fixes for critical issues

## Agents Involved
- lead-programmer (primary reviewer)
- technical-director (consulted for core/ changes)
