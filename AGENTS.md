# AI Agents - Quick Reference

This project uses specialized AI agents for different SDLC tasks. Each agent has specific behaviors defined in `.cursor/rules/` that apply automatically when relevant.

## Available Agents

### Prompt Engineering Agent
**When to use:** Unsure which agent to use, need help structuring prompts, learning workflow patterns

**How to invoke:**
```
Prompt Engineering Agent: I need to [describe task]
```

**What it does:** Analyzes your request, suggests optimal agent/mode/model, provides optimized prompts

---

### Requirements Agent
**When to use:** Starting new features, clarifying requirements, defining acceptance criteria

**How to invoke:**
```
Requirements Agent: [Describe feature/project]
```

**What it does:** Extracts requirements, identifies gaps, creates acceptance criteria, asks critical questions

---

### Project Management Agent
**When to use:** Breaking down features, creating task lists, planning sprints

**How to invoke:**
```
Project Management Agent: Break down [feature] into tasks
```

**What it does:** Decomposes work into 1-3 day tasks, identifies dependencies, estimates effort

---

### Architecture Agent
**When to use:** Designing systems, making architectural decisions, evaluating approaches

**How to invoke:**
```
Architecture Agent: Design system architecture for [feature]
Context: [requirements, constraints, scale]
```

**What it does:** **Researches existing solutions first (AWS/Azure/GCP, SaaS, open-source)**, conducts build vs. buy analysis, proposes alternatives, analyzes tradeoffs, recommends approach with confidence rating

---

### Development Agent
**When to use:** Implementing features, writing code, refactoring

**How to invoke:**
```
Development Agent: Implement [task description]
Task: #[task-id]
Reference: [related files, requirements]
```

**What it does:** Writes production-quality code, handles errors, follows conventions, updates task status

---

### Testing Agent
**When to use:** Creating test suites, improving test coverage, testing strategies

**How to invoke:**
```
Testing Agent: Create tests for [component/feature]
Focus: [unit tests, integration tests, edge cases]
```

**What it does:** Identifies failure modes, writes comprehensive tests, focuses on meaningful coverage

---

### Review Agent
**When to use:** Code reviews, PR reviews, quality checks

**How to invoke:**
```
Review Agent: Review [code/PR]
Focus: [security, performance, maintainability]
Files: [specific files to examine]
```

**What it does:** Systematic code analysis, identifies bugs/security/quality issues, provides confidence rating

---

### DevOps Agent
**When to use:** Infrastructure setup, CI/CD, deployment, monitoring

**How to invoke:**
```
DevOps Agent: [Design/Implement] [infrastructure/deployment]
Context: [requirements, constraints, scale]
Tool: [Terraform, CloudFormation, CDK]
```

**What it does:** Creates IaC, configures CI/CD, sets up monitoring, implements security best practices

---

### Debugging Agent
**When to use:** Investigating bugs, root cause analysis, troubleshooting

**How to invoke:**
```
Debugging Agent: Investigate [bug description]
Error: [stack trace, error message, logs]
Context: [expected vs actual behavior]
System: [tech stack, environment]
```

**What it does:** Forms hypotheses, identifies root cause, proposes fix with confidence rating

---

### Tech Lead Agent
**When to use:** Technical decisions, architecture choices, technical guidance

**How to invoke:**
```
Tech Lead Agent: [Question/Decision/Review]
Context: [background, constraints, requirements]
Focus: [architecture, technology choice, etc.]
```

**What it does:** **Evaluates existing solutions before proposing custom builds**, conducts build vs. buy analysis, provides technical guidance, makes informed decisions, identifies technical debt, challenges "not invented here" syndrome

---

### UI/UX Designer Agent
**When to use:** Designing interfaces, creating prototypes, improving UX

**How to invoke:**
```
UI/UX Designer Agent: [Design/Create] [interface/flow]
Context: [user needs, constraints, target devices]
```

**What it does:** Creates interactive prototypes in `ui_ux_design/`, applies accessibility standards

---

## Commands (Workflows)

Reusable workflows that combine agents into structured processes. Trigger with `/` in chat:

- `/plan-feature` - Requirements → **Solution Evaluation** → Architecture → Task breakdown
- `/evaluate-solutions` - **NEW:** Systematic build vs. buy analysis for any problem
- `/tech-decision` - Technical decision-making with **mandatory solution research**
- `/implement-task` - Implement with proper git workflow
- `/review-code` - Systematic code review
- `/debug-issue` - Systematic bug investigation
- `/create-tests` - Comprehensive test suite creation
- `/setup-infrastructure` - Infrastructure and deployment setup
- `/design-ui` - UI/UX design and prototyping
- `/optimize-prompt` - Get help crafting effective prompts
- `/full-feature-workflow` - End-to-end feature implementation

## Detailed Documentation

For complete agent behavior and detailed guides, see:
- `.cursor/rules/` - Behavioral rules that apply automatically
- `.cursor/commands/` - Reusable workflow commands
- `agent_guides/` - Detailed reference documentation for each agent (if available)
