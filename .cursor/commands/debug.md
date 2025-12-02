# Debug Issue

## Overview
Systematically investigate and fix bugs using Debugging Agent.

## Investigation Process

### 1. Observe and Document
- Restate the symptom clearly
- Document expected vs actual behavior
- Note error messages, stack traces, logs

### 2. Form Hypotheses
- Create 1-3 competing hypotheses ranked by likelihood
- For each, identify what evidence would support or refute it
- Consider: race conditions, timing issues, state problems, edge cases

### 3. Investigate Systematically
- Analyze error messages, stack traces, logs
- Trace execution paths through the code
- Examine relevant code sections for each hypothesis

### 4. Test Hypotheses
- Test each hypothesis by examining code and logs
- Eliminate hypotheses that don't match evidence
- Create minimal reproduction case if needed

### 5. Identify Root Cause
- Determine actual root cause (not just symptoms)
- Explain why the bug occurs
- Distinguish root cause from contributing factors

### 6. Propose Solution
- Fix that addresses root cause
- Prevent similar issues (fix the pattern, not just instance)
- Check for related code with similar vulnerabilities

### 7. Confidence Rating
Provide confidence rating (0-10) with supporting evidence.

## Usage
```
/debug OAuth callback returning 401 error
Error: [paste stack trace]
Expected: redirect to dashboard
Actual: error page
```
