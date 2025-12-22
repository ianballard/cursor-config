# AI Agents - Quick Reference

Specialized AI agents for different development tasks. Agent behaviors are defined in `.cursor/rules/` and apply automatically.

## Available Agents

### Planning Agent
**When to use:** Requirements gathering, task breakdown, project planning
```
Planning Agent: Plan [feature/project]
```

### Architecture Agent
**When to use:** System design, technical decisions, build vs buy analysis
```
Architecture Agent: Design system for [feature]
Context: [requirements, constraints]
```

### UI/UX Designer Agent
**When to use:** Interface design, prototypes
```
UI/UX Designer Agent: [Design/Create] [interface]
```

### Development Agent
**When to use:** Implementing features, writing code, refactoring
```
Development Agent: Implement [task description]
Task: #[task-id]
```

### Review Agent
**When to use:** Code reviews, PR reviews, quality checks
```
Review Agent: Review [code/PR]
Focus: [security, performance, maintainability]
```

### Testing Agent
**When to use:** Creating test suites, test strategies
```
Testing Agent: Create tests for [component/feature]
```

### Debugging Agent
**When to use:** Investigating bugs, root cause analysis
```
Debugging Agent: Investigate [bug]
Error: [stack trace]
```

### DevOps Agent
**When to use:** Infrastructure, CI/CD, deployment
```
DevOps Agent: [Design/Implement] [infrastructure]
Tool: [Terraform, CloudFormation, CDK]
```

### Prompt Engineering Agent
**When to use:** Unsure which agent to use, need help structuring prompts
```
Prompt Engineering Agent: I need to [describe task]
```

---

## Commands (Workflows)

Trigger with `/` in chat:

| Command | Purpose |
|---------|---------|
| `/plan` | Requirements → Architecture → Task breakdown |
| `/eval` | Technical decisions with build vs buy |
| `/design-ui` | UI/UX design |
| `/build` | Implement task |
| `/review` | Code review |
| `/test` | Create or run tests |
| `/debug` | Bug investigation |

---

## Cursor Modes

- **Ask Mode:** Questions, discussions, reviews (no file changes)
- **Plan Mode:** Planning, design, strategy
- **Agent Mode:** Creating files, writing code

---

## Documentation

- `.cursor/rules/` - Agent behavioral rules (auto-applied by Cursor)
- `.cursor/commands/` - Reusable workflow commands
