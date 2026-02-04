# Production Project Workflow Guide

A step-by-step guide for using AI agents to build production-grade projects from vision to deployment.

## Overview

This guide walks through the complete lifecycle of a production project using specialized AI agents. Follow this workflow to maintain quality, consistency, and efficiency throughout development. The key is to plan heavily and to continuously create and update artifacts as refinement and development progress, so they can be used as context for further AI-driven development.

---

## Phase 1: Initial Setup & Infrastructure

### *Start by reading the [README.md](./README.md) for context.*

**Phase 1 Goals:**
1. Define project vision, requirements, and architecture
2. Break down work into tasks
3. Scaffold core infrastructure before feature development begins

### 1.1 Install Backlog.md CLI

Backlog.md is a lightweight task management system that integrates with your codebase.

```bash
# Install backlog.md CLI
npm install -g backlog.md

# Initialize in your project
cd /path/to/your/project
backlog init

# Verify installation
backlog --help
```

**Resources:**
- [Backlog.md GitHub](https://github.com/MrLesk/Backlog.md)
- [Backlog.md CLI Reference](https://github.com/MrLesk/Backlog.md/blob/main/README.md)

### 1.2 Gather Requirements and Define Vision

Start by gathering requirements and understanding the problem space before defining solutions.

**Step 1: Requirements Gathering**


**Prompt:**
```
@plan gather requirements for [project name]
```

**Step 2: Define the Vision**

Using the requirements gathered, create a clear vision document.


**Prompt:**
```
@plan create a vision doc for [project name] using requirements: [requirements]
```


**Step 3: Create Visual Mockups (optional)**

Once requirements and vision are clear, translate them into visual designs.

**Prompt:**
```
@design create mockups for [project name]
```

**Step 4: Review Requirements, Vision, and Mockups Together**

**Prompt:**
```
@plan review requirements, vision, and mockups for [project name] and identify any gaps
```

**Note:** For exploratory projects where the problem is unclear, you may create rough mockups first to help crystallize the vision. In that case, iterate: mockups → requirements → vision → refined mockups.

### 1.3 Write Architecture & Specifications

Define system architecture and technical specifications.

**Prompt:**
```
@architect create project specs and system architecture for [project name]
@architect build vs. buy [task name]
```

### 1.4 Break Down into Tasks

Convert specifications into actionable tasks in backlog.md.


**Prompt:**
```
@plan create all tasks in backlog.md for [project name] based on project spec document
@plan review all tasks for [project name] for gaps
```

### 1.5 Scaffold Infrastructure (`@devops`)

*Skip if you want to have dedicated tasks to capture this*

Before starting the development loop, set up the foundational infrastructure and development environment. This creates the scaffolding that all feature development will build upon.

**Important:** Create specific infrastructure tasks in your backlog for:
- Repository structure and monorepo setup (if applicable)
- Development environment (Docker, local setup scripts)
- CI/CD pipeline basics
- Core infrastructure (databases, servers, functions, gateways, etc.)
- Deployment environments (dev, staging, production)

**Prompt:**
```
@devops scaffold infrastructure for [project name] using Architecture: docs/architecture.md and Specifications: docs/specifications.md
```

**Review infrastructure setup:**
```
Architect: Review infrastructure scaffolding for [project name]

Focus:
- Does it support the architecture requirements?
- Are environments properly isolated?
- Is local development easy to set up?
- Are there any security gaps?
- Is the CI/CD pipeline sufficient?
- Are costs optimized?
```

### 1.6 Deploy Infra

- Test and run the pipelines manually

---

## Phase 2: Development Loop

For each task in your backlog, follow this agent sequence:

### 2.1 Plan Implementation (`@plan`)

Before writing code, create AND review a detailed implementation plan for the task.

**Prompt:**
```
@plan implementation for [task-id]
```

**Prompt:**
```
@plan review implementation plan for [task-id]
```

**Manual Human Review**
- Important!!! - Review and validate the plan yourself

### 2.2 Develop (`@develop`)

**Prompt:**
```
@develop [task-id]
```

### 2.3 Review (`@review`)


**Prompt:**
```
@review [task-id]
```

### 2.4 Test (`@test`)

**Prompt:**
```
@test [task-id]
```

---

### Self-Validating Loop with Hooks

This configuration includes an automated quality assurance loop via `.cursor/hooks/review-and-test-on-stop.sh`. When an agent completes a task, the hook automatically triggers review and testing:

**How the self-validating loop works:**

1. **Agent completes task** - Code changes are implemented
2. **Hook triggers on stop** - Reads agent status (JSON) from stdin
3. **Conditional execution** - If status is "completed" and loop_count < 1:
   - Triggers followup message to review changes with `@review` skill
   - Runs tests and creates new ones with `@test` skill
   - Fixes any issues found
4. **Loop prevention** - `loop_count` parameter prevents infinite loops (max 1 iteration)

**Benefits:**
- Automatic code review after every implementation
- Ensures tests are created and run
- No manual intervention required

See `.cursor/hooks/review-and-test-on-stop.sh` for full implementation.

---

### 2.5 Debug (`@debug`)

**Prompt:**
```
@debug [task-id] issue where [error] and [stack trace]
```

### 2.6 Deploy (`@devops`)

**Prompt:**
```
@devops Set up deployment for task-[task-id]
```

---

## Phase 3: Project Context

Enhance agent effectiveness by adding project-specific context files.

### 3.1 Coding Standards

Create a coding standards document that agents can reference.

**File:** `docs/coding-standards.md`


**Reference in Agent Skills:**

Edit `.cursor/skills/develop/SKILL.md`:
```markdown
## Code Quality Standards
- Follow coding standards in `docs/coding-standards.md`
- Match existing code style and patterns
- Reference language-specific guidelines
```

### 3.2 Style Guides

Create style guides for consistent formatting.

**File:** `docs/style-guide.md`

### 3.3 Templates

Create reusable templates for common patterns.

**Directory:** `assets/`

**Example:** `assets/api-endpoint-template.ts`


**Reference in prompts:**
```
Develop:  Create new API endpoint for user profile update

Follow template in templates/api-endpoint-template.ts
```

### 3.4 Code Examples

Provide reference implementations for common patterns.

**Directory:** `references/`

**Example:** `references/repository-pattern.ts`

**Reference in Agent Skills:**

Edit `.cursor/skills/develop/SKILL.md`:
```markdown
## Code Patterns
- Use repository pattern for data access (see references/repository-pattern.ts)
- Follow service layer pattern (see references/service-pattern.ts)
- Implement dependency injection (see references/dependency-injection.ts)
```

### 3.5 Reference in Skills

Update skills to automatically reference context files.

Edit `.cursor/skills/develop/SKILL.md`:
```markdown
## Project Context

Automatically references:
- Coding standards: `docs/coding-standards.md`
- Style guide: `docs/style-guide.md`
- Templates: `.cursor/skills/[skill_name]/assets/`
- Examples: `.cursor/skills/[skill_name]/references/`
```

---

## Phase 4: Best Practices

### 4.1 When to Use Which Skill

| Scenario | Skill | Why |
|----------|-------|-----|
| Starting new project | `@plan` → `@architect` | Define scope and technical approach |
| Unclear requirements | `@plan` | Clarify ambiguities before coding |
| Technical decisions | `@architect` | Evaluate tradeoffs systematically |
| UI/UX work | `@design` | Visual design expertise |
| Writing code | `@develop` | Implementation focus |
| Code review | `@review` | Quality and security checks |
| Creating tests | `@test` | Test strategy and coverage |
| Bug investigation | `@debug` | Systematic troubleshooting |
| Infrastructure | `@devops` | Deployment and operations |
| Unsure which skill | `@prompt-engineer` | Get guidance on approach |

### 4.2 Efficient Iteration

**Use agent skills for speed:**
```bash
# Attach skills to invoke specific agent behaviors
@plan user authentication          # Planning
@architect OAuth2 vs JWT            # Architecture decision
@design login page                   # UI design
@develop #123                      # Implementation
@review #123                           # Code review
@test #123                          # Testing
@debug registration fails          # Debugging
```

**Chain agents for complete workflows:**
```
1. @plan email notification system
2. @architect SendGrid vs AWS SES vs self-hosted
3. @develop #124 email service
4. @review #124
5. @test #124
6. @devops deploy email service to staging
```

### 4.3 Quality Gates and Artifacts

Establish quality gates before moving to next phase or task. Plan intentionally. Leave good, useful artifacts as development continues:

**After Development:**
- [ ] All acceptance criteria met
- [ ] Code follows standards in docs/coding-standards.md
- [ ] No linter errors
- [ ] Testing completed

**After Review:**
- [ ] Review Agent approved
- [ ] Security concerns addressed
- [ ] Performance concerns addressed
- [ ] Code quality acceptable

**After Testing:**
- [ ] Unit tests passing
- [ ] Integration tests passing
- [ ] Coverage meets threshold
- [ ] Edge cases covered

### 4.5 Continuous Improvement

**Update project context:**
As patterns emerge, document them:
```bash
# Add new pattern to references
echo "// New pattern discovered" > references/new-pattern.ts

# Update coding standards
# Edit docs/coding-standards.md

# Update agent skills to reference new patterns
# Edit .cursor/skills/develop/SKILL.md
```

**Refine agent usage:**
Track which prompts work best and update agent skills in `.cursor/skills/`.

---

## Quick Reference

### Agent Skills
```bash
# Attach skills to invoke specific agents
@plan [feature]
@architect [decision]
@design [interface]
@develop #[task-id]
@review #[task-id]
@test #[task-id]
@debug [issue]
@devops [infrastructure]
```

### Skill Sequence for Each Task
1. `@plan` → Plan implementation & review plan
2. `@develop` → Implement
3. `@review` → Code review
4. `@test` → Create/run tests
5. `@debug` → Fix issues (if needed)
6. `@devops` → Deploy (when ready)

---

## Resources

- [Backlog.md Documentation](https://github.com/MrLesk/Backlog.md)
- [Cursor Agent Skills Documentation](https://cursor.com/docs/context/skills)
- [AGENTS.md](./AGENTS.md) - Global rules and agent reference
- [README.md](./README.md) - Setup and customization guide
