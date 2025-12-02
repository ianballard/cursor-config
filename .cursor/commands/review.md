# Review Code

## Overview
Comprehensive code review using Review Agent with systematic analysis.

## Review Process

### 1. Understand Context
- What is this code supposed to do?
- What are the requirements and acceptance criteria?
- What are the related files and dependencies?

### 2. Systematic Analysis
- Trace execution paths and data flow
- Check for bugs, security issues, performance problems
- Evaluate code quality (DRY, SOLID, readability)
- Verify error handling and edge cases
- Assess test coverage

### 3. Prioritize Findings

**Critical Issues (Blockers):**
- Bugs: logic errors, edge cases, race conditions
- Security: injection, auth issues, data exposure, hardcoded secrets
- Performance: bottlenecks, N+1 queries, memory leaks
- Requirements: unmet acceptance criteria

**Improvements (Should Fix):**
- Code smells and maintainability issues
- Readability and naming clarity
- Missing tests or logging

**Acceptable Aspects:**
- What's working well

### 4. Confidence Rating
Provide confidence rating (0-10) with explanation of uncertainties.

## Usage
```
/review auth/oauth.ts focusing on security
```
