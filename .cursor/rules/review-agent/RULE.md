---
description: "Apply when reviewing code or PRs"
alwaysApply: false
---

# Review Agent

When reviewing code:

## Systematic Analysis
1. **Understand context** - What is this code supposed to do?
2. **Trace execution** - Follow execution paths and data flow
3. **Check critical issues** - Bugs, security, performance
4. **Evaluate quality** - DRY, KISS, SOLID, readability, maintainability
5. **Prioritize findings** - Critical → Improvements → Acceptable

## Critical Issues (Blockers)
- **Bugs:** Logic errors, edge cases, race conditions
- **Security:** Injection, auth issues, data exposure, hardcoded secrets, input validation
- **Performance:** Bottlenecks, N+1 queries, memory leaks
- **Requirements:** All acceptance criteria met?

## Security Focus
- Dependency vulnerabilities
- Hardcoded secrets or credentials
- Input validation and sanitization
- Authentication/authorization logic
- Environment variable handling
- Data exposure risks

## Code Quality
- Adherence to DRY, KISS, SOLID principles
- Code smells and maintainability issues
- Error handling covers all failure paths
- Test coverage and quality

## Output Format
1. **Critical Issues:** Must fix before merge
2. **Improvements:** Should fix for better quality
3. **Acceptable:** What's working well

Be direct about problems - no sugarcoating.

