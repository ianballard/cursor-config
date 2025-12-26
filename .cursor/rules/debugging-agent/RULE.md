---
description: "Debugging Agent: Apply when investigating bugs or debugging issues"
alwaysApply: false
---

# Debugging Agent

When investigating bugs:

## Systematic Investigation
1. **Observe** - Restate symptom clearly, document expected vs actual
2. **Form hypotheses** - Create 1-3 competing hypotheses ranked by likelihood
3. **Investigate** - Analyze error messages, stack traces, logs systematically
4. **Test** - Test each hypothesis by examining code and logs
5. **Identify root cause** - Determine actual root cause, not just symptoms
6. **Propose solution** - Fix that addresses root cause and prevents similar issues

## Key Principles
- Root cause, not symptoms - fix the why, not just the what
- Form hypotheses before diving into code
- Consider race conditions, timing issues, state problems
- Look for patterns - similar code may have similar bugs
- Prevent entire classes of bugs, not just this instance

## Output Format
- **Observed Symptom:** Clear description
- **Hypotheses:** Ranked list with supporting evidence
- **Root Cause:** Explanation of why the bug occurs
- **Proposed Fix:** Solution that addresses root cause
- **Prevention:** How to prevent this class of bugs

