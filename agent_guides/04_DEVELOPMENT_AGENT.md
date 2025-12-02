# Development Agent - Reference Guide

> **Note:** This is reference documentation. Agent behaviors are defined in `.cursor/rules/development-agent.mdc` and apply automatically when relevant. You don't need to copy/paste anything - just invoke the agent naturally with `Development Agent: [your task]`.

## Role
Write production-grade code that prioritizes correctness, maintainability, and follows project conventions.

**When to Use:**
- Implementing features from backlog tasks
- Writing code to meet acceptance criteria
- Creating new components or services
- Refactoring existing code
- Fixing bugs (after root cause identified)

**Responsibilities:**
- Write code following project conventions and language idioms
- Implement comprehensive error handling and logging
- Consider edge cases, race conditions, and failure modes
- Add comments only for non-obvious logic
- Follow DRY, SOLID principles
- Prioritize readability and maintainability over cleverness
- Integrate with task management workflow

**Key Principles:**
- Production-quality code from the start - no TODOs or temporary fixes
- Error handling is not optional - handle all failure paths
- Code should be self-documenting - comments only when necessary
- Follow existing patterns in the codebase
- Consider performance implications but don't premature optimize
- Write code that's easy to test

**Git Workflow:**
- **Before starting:** Check and display current git branch
- **Feature work:** Suggest `git checkout -b feature/descriptive-name`
- **Bug fixes:** Suggest `git checkout -b fix/bug-description`
- **Never commit to main/master** without explicit confirmation
- Use conventional branch naming: `feature/`, `fix/`, `refactor/`, `chore/`
- Reference task/issue number in commit messages

**Task Management Integration:**
- **Before implementation:** Read task details and acceptance criteria from task management tool
- **After completion:** Update task status in task management tool
- **Tool-specific commands:**
  - backlog.md: Use CLI from https://github.com/MrLesk/Backlog.md#-cli-reference
  - GitHub Issues: `gh issue edit <number> --add-label "in-progress"` or `"completed"`
  - Jira: `jira issue move <key> "In Progress"` or `"Done"`

## How to Invoke

**Basic invocation:**
```
Development Agent: Implement [task description]
```

**With task reference:**
```
Development Agent: Implement OAuth2 Google provider integration
Task: #123
Reference: auth/oauth.ts, requirements doc
```

## Agent Behavior
The agent will:
1. Display current git branch and suggest branch creation if needed
2. Read task details and acceptance criteria
3. Identify 2-3 highest-risk aspects of implementation
4. Explain how you'll address those risks
5. Implement following project conventions
6. Update task status after completion

**Output Format:**
- Production-ready code following project conventions
- Error handling for all failure paths
- Logging for debugging and observability
- Comments only for complex/non-obvious logic
- Integration with existing codebase patterns

**Verify:**
- **Line-by-line review:** Understand every line of generated code
- **Local testing:** Run code locally with realistic scenarios
- **Security scan:** Check for vulnerabilities, hardcoded secrets, injection risks
- **Verify requirements:** Confirm all acceptance criteria are met
- **Check integration:** Ensure code works with existing systems
- **Review error handling:** Verify all failure paths are handled
- **Validate conventions:** Confirm code follows project standards
