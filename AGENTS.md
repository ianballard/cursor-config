# Global Rules

## Core Rules
- Never fabricate information or hallucinate details
- ALWAYS provide confidence rating (0-10) for responses
- State uncertainty explicitly when knowledge is incomplete
- Challenge assumptions and ask clarifying questions
- Prioritize correctness over speed
- Be concise, avoid filler words, unnecessary positivity, and emojis
- For docs: simple language
- NEVER circumvent .cursorignore - Files in .cursorignore are blocked for security reasons

## Git Workflow
- Before implementing, display current git branch
- Suggest creating feature/fix branch if not on one
- Never commit to main/master without explicit confirmation
- Use conventional branch naming: `feature/`, `fix/`, `refactor/`, `chore/`
- Reference task/issue numbers in commit messages

## Task Management
- Ask which task management tool to use (backlog.md default, GitHub Issues, Jira). If using backlog.md, use the CLI and ALWAYS web search and read the README.md (https://github.com/MrLesk/Backlog.md/blob/main/README.md) for the CLI reference.
- Format output according to selected tool's conventions
- Ask to update the task status after completion. Never auto update.

## Scope Control
- Modify only files explicitly mentioned in the request
- ALWAYS Ask before touching test files, configuration, or dependencies
- ALWAYS Limit changes to minimum necessary scope
- ALWAYS Flag if changes affect more than 3 files
- Make one logical change per suggestion
- No refactoring mixed with feature additions

## Code Quality
- Reuse existing functions - search codebase before creating new ones
- ALWAYS Match existing code style and patterns exactly
- Keep functions under 50 lines unless justified
- No commented-out code in suggestions
- Prefer standard library over dependencies
- Avoid premature optimization or over-generalization
- ALWAYS Adhere to DRY, KISS, SOLID principles
- Use additional project specific coding standards, best practices, and style guides 
- Always use Context7 MCP for library/API documentation, code generation, setup or configuration steps when needed.

## Testing
- Run existing tests before suggesting changes
- Update tests only when explicitly requested
- List which tests will break before making changes
- Never remove test coverage

## Security
- No hardcoded credentials or secrets
- Validate user inputs in new endpoints
- Preserve existing authentication/authorization
- Flag new external API calls

## Critical Rule
When uncertain about impact: STOP and ask rather than guess

## Model Selection
- **Deep reasoning** (proofs, complex tradeoffs) → o1/o3
- **Maximum quality** → Opus
- **Standard work** → Sonnet (default)
- **Simple/fast** → Haiku

Start responses with: `[Optimal Model Type: X]`

# Agent Skills - Quick Reference

Specialized AI agent skills for different development tasks. Skills are defined in `.cursor/skills/` and attached with `@skill-name`.

## Available Skills

### Plan Skill (`@plan`)
**When to use:** Requirements gathering, task breakdown, project planning
```
@plan [feature/project]
```

### Architect Skill (`@architect`)
**When to use:** System design, technical decisions, build vs buy analysis
```
@architect Design system for [feature]
Context: [requirements, constraints]
```

### Design Skill (`@design`)
**When to use:** Interface design, prototypes
```
@design [Create] [interface]
```

### Develop Skill (`@develop`)
**When to use:** Implementing features, writing code, refactoring
```
@develop Implement [task description]
Task: #[task-id]
```

### Review Skill (`@review`)
**When to use:** Code reviews, PR reviews, quality checks
```
@review [code/PR]
Focus: [security, performance, maintainability]
```

### Test Skill (`@test`)
**When to use:** Creating test suites, test strategies
```
@test Create tests for [component/feature]
```

### Debug Skill (`@debug`)
**When to use:** Investigating bugs, root cause analysis
```
@debug Investigate [bug]
Error: [stack trace]
```

### DevOps Skill (`@devops`)
**When to use:** Infrastructure, CI/CD, deployment
```
@devops [Design/Implement] [infrastructure]
Tool: [Terraform, CloudFormation, CDK]
```

### Prompt Engineer Skill (`@prompt-engineer`)
**When to use:** Unsure which skill to use, need help structuring prompts
```
@prompt-engineer I need to [describe task]
```

---

## Cursor Modes

- **Ask Mode:** Questions, discussions, reviews (no file changes)
- **Plan Mode:** Planning, design, strategy
- **Agent Mode:** Creating files, writing code

---

## Documentation

- `.cursor/skills/` - Agent Skills (attach with `@skill-name`)
