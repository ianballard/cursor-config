# Production Project Workflow Guide

A step-by-step guide for using AI agents to build production-grade projects from vision to deployment.

## Overview

This guide walks through the complete lifecycle of a production project using specialized AI agents. Follow this workflow to maintain quality, consistency, and efficiency throughout development. The key is having artifacts continuously created and updated as development progresses that can be used as context for further AI-driven development.

---

## Phase 1: Initial Setup

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
Planning Agent: Help me plan and gather requirements for [project name]
```

**Example:**
```
Planning Agent: Help me plan and gather requirements for TaskFlow

Context:
- Initial idea: A simple task management app for small remote teams
- Stakeholders: Development team, potential users (startup teams), product owner
- Known constraints: 3-month timeline, $50k budget, team of 2 developers

Please help me:
- Clarify what "simple" means and what features are essential
- Identify functional requirements (what it must do)
- Identify non-functional requirements (performance, security, scalability)
- Uncover questions about integrations, user management, data storage
- Define what "done" looks like for MVP
```

**Shorthand:**
```
/plan gather requirements for TaskFlow
```

**Step 2: Define the Vision**

Using the requirements gathered, create a clear vision document.

**Prompt:**
```
Planning Agent: Create project vision document for [project name]
```

**Example:**
```
Planning Agent: Create project vision document for TaskFlow

Based on requirements gathered:
- Functional: Task CRUD, board views, real-time updates, GitHub integration, user management
- Non-functional: <100ms response time, 99.9% uptime, GDPR compliant, mobile responsive
- Users: Remote tech teams (5-15 people), non-technical PMs, developers
- Constraints: 3 months, $50k, 2 developers

Create vision with:
- Problem: Existing tools too complex (Jira) or too simple (Trello) for small tech teams
- Personas: Technical PM, Senior Developer, Junior Developer
- Goals: 1000 active teams in 6 months, 20% conversion to paid tier
- Scope: IN: Task management, boards, real-time, GitHub integration | OUT: Time tracking, invoicing, reporting
- Success metrics: Daily active users, tasks created per team, retention rate
```

**Shorthand:**
```
/plan create a vision doc for TaskFlow using requirements: [requirements]
```


**Step 3: Create Visual Mockups (optional)**

Once requirements and vision are clear, translate them into visual designs.

**Prompt:**
```
Designer Agent: Create clickable mockups for [project name]
```

**Example:**
```
Designer Agent: Create clickable mockups for TaskFlow

Context:
- Vision: docs/vision.md
- Target users: Tech startup teams (5-15 people)
- Key features: Task boards, real-time updates, GitHub integration
- Design constraints: Mobile-first, WCAG AA accessibility, clean/minimal aesthetic, style guides, and color palette

Deliverables:
- Wireframes for task board, task detail, and settings
- High-fidelity mockups with branding
- Interactive Figma prototype
- Basic design system (colors, fonts, button styles)
```

**Shorthand:**
```
/design-ui create mockups for TaskFlow
```

**Step 4: Review Requirements, Vision, and Mockups Together**

**Prompt:**
```
Planning Agent: Review requirements, vision, and mockups for [project name]

Requirements: [link to requirements doc]
Vision: [link to vision doc]
Mockups: [link to mockups]

Validate:
- Do all requirements have corresponding features in vision/mockups?
- Do mockups address the core problem statement?
- Are user needs reflected in the design?
- Are success metrics measurable and tracked?
- Are there any ambiguities in scope or acceptance criteria?
- Do designs fit within constraints (technical, budget, timeline)?
- Are there any missing requirements or edge cases?
- Is the MVP scope realistic for the timeline?
```

**Example:**
```
Planning Agent: Review requirements, vision, and mockups for TaskFlow

Requirements: docs/requirements.md
Vision: docs/vision.md
Mockups: ui-designs/taskflow-mockups

Validate:
- All functional requirements (task CRUD, boards, real-time, GitHub integration) are in mockups
- Non-functional requirements (performance, security, mobile) are addressed in architecture
- Mockups solve the "too complex vs too simple" problem for target users
- Success metrics (DAU, tasks per team, retention) are trackable
- MVP scope (3 months, 2 devs) is realistic
- Any gaps or risks identified
```

**Shorthand:**
```
/plan review requirements, vision, and mockups for [project name] and identify any gaps
```

**Note:** For exploratory projects where the problem is unclear, you may create rough mockups first to help crystallize the vision. In that case, iterate: mockups → requirements → vision → refined mockups.

### 1.3 Write Architecture & Specifications

Define system architecture and technical specifications.

**Prompt:**
```
Architecture Agent: Design project specifications and system architecture for [project name]
```

**Review the output:**
```
Architecture Agent: Review architecture for [project name]

Focus:
- Scalability concerns
- Security vulnerabilities
- Cost implications
- Technical debt risks
```

**Shorthand:**
```
/eval create project specs and system architecture for [project name]
/eval build vs. buy [task name]
```

### 1.4 Break Down into Tasks

Convert specifications into actionable tasks in backlog.md.

**Prompt:**
```
Planning Agent: Break down [project name] into backlog.md tasks
```

**Review tasks:**
```
Planning Agent: Review backlog tasks for [project name]

Tasks:
[Reference backlog tasks]

Check:
- Are acceptance criteria testable?
- Are dependencies correct?
- Are estimates realistic?
- Are there any missing tasks?
```

**Shorthand:**
```
/plan create all tasks for [project name] based on project spec document
/plan review all tasks for [project name] for gaps
```

---

## Phase 2: Development Loop

For each task in your backlog, follow this agent sequence:

### 2.1 Implement (Development Agent)

**Prompt:**
```
Development Agent: Implement task #[task-id]
```

**Shorthand:**
```
/build task-5 user login endpoint
```

**Example:**
```
Development Agent: Implement task-5 - User registration API
```

### 2.2 Review (Review Agent)

**Prompt:**
```
Review Agent: Review implementation of task #[task-id]
```

**Shorthand:**
```
/review task-5
```

**Example:**
```
Review Agent: Review implementation of task-5

Focus:
- Security: Password hashing, email validation, SQL injection
- Code quality: Error handling, logging, code organization
- Acceptance criteria: All 6 criteria from task #5 met
- Performance: Database queries optimized

Files changed:
@src/api/auth/register.ts
@src/services/email.ts
@src/models/user.ts
```

### 2.3 Test (Testing Agent)

**Prompt:**
```
Testing Agent: Create tests for task-[task-id]
```

**Shorthand:**
```
/test task-5
```

**Example:**
```
Testing Agent: Create tests for user registration API (task-5)

Implementation:
@src/api/auth/register.ts

Test requirements:
- Unit tests: email validation, password hashing, user creation
- Integration tests: POST /api/auth/register endpoint
- Edge cases: duplicate email, invalid format, weak password
- Security: SQL injection, XSS, password exposure

Coverage target: 90%
```

### 2.4 Debug (Debugging Agent)

**Prompt:**
```
Debugging Agent: Investigate issue in task-[task-id]

Error:
[Paste error message or stack trace]
```

**Shorthand:**
```
/debug task-5 issue where registration endpoint returns 500
```

**Example:**
```
Debugging Agent: Investigate registration endpoint failure (task-5)

Error:
```
Error: connect ECONNREFUSED 127.0.0.1:5432
    at TCPConnectWrap.afterConnect [as oncomplete] (net.js:1148:16)
```

Context:
- Running integration tests for POST /api/auth/register
- Expected: 201 status with user ID
- Actual: 500 Internal Server Error
- Relevant files: @src/api/auth/register.ts @src/config/database.ts

Environment:
- OS: macOS 14.5
- Node: v20.11.0
- PostgreSQL: 15.3
```

### 2.5 Deploy (DevOps Agent)

**Prompt:**
```
DevOps Agent: Set up deployment for task-[task-id]
```

**Shorthand:**
```
/devops Set up deployment for task-[task-id]
```

**Example:**
```
DevOps Agent: Deploy authentication service to staging (task-5)

Infrastructure:
- Environment: staging
- Platform: AWS
- Tool: Terraform

Requirements:
- ECS Fargate service for API
- RDS PostgreSQL database
- Application Load Balancer
- CloudWatch logging and alarms
- Secrets Manager for credentials
- Auto-scaling based on CPU

Context:
- Architecture: docs/architecture/auth-service.md
- Existing infrastructure: VPC and networking already set up
- Follow patterns in terraform/modules/
```

---

## Phase 3: Project Context

Enhance agent effectiveness by adding project-specific context files.

### 3.1 Coding Standards

Create a coding standards document that agents can reference.

**File:** `docs/coding-standards.md`


**Reference in agent rules:**

Edit `.cursor/rules/development-agent/RULE.md`:
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

**Directory:** `templates/`

**Example:** `templates/api-endpoint.ts`


**Reference in prompts:**
```
Development Agent: Create new API endpoint for user profile update

Follow template in templates/api-endpoint.ts
```

### 3.4 Code Examples

Provide reference implementations for common patterns.

**Directory:** `examples/`

**Example:** `examples/repository-pattern.ts`

**Reference in agent rules:**

Edit `.cursor/rules/development-agent/RULE.md`:
```markdown
## Code Patterns
- Use repository pattern for data access (see examples/repository-pattern.ts)
- Follow service layer pattern (see examples/service-pattern.ts)
- Implement dependency injection (see examples/dependency-injection.ts)
```

### 3.5 Reference in Commands

Update commands to automatically reference context files.

Edit `.cursor/commands/build.md`:
```markdown
# Build

Implement a task using Development Agent with project context.

Automatically references:
- Coding standards: `docs/coding-standards.md`
- Style guide: `docs/style-guide.md`
- Templates: `templates/`
- Examples: `examples/`
```
## Usage
```
/build task-6 user profile endpoint
```

---

## Phase 4: Best Practices

### 4.1 When to Use Which Agent

| Scenario | Agent | Why |
|----------|-------|-----|
| Starting new project | Planning Agent → Architecture Agent | Define scope and technical approach |
| Unclear requirements | Planning Agent | Clarify ambiguities before coding |
| Technical decisions | Architecture Agent | Evaluate tradeoffs systematically |
| UI/UX work | Designer Agent | Visual design expertise |
| Writing code | Development Agent | Implementation focus |
| Code review | Review Agent | Quality and security checks |
| Creating tests | Testing Agent | Test strategy and coverage |
| Bug investigation | Debugging Agent | Systematic troubleshooting |
| Infrastructure | DevOps Agent | Deployment and operations |
| Unsure which agent | Prompt Engineering Agent | Get guidance on approach |

### 4.2 Efficient Iteration

**Use shorthand commands for speed:**
```bash
# Instead of long prompts, use commands
/plan user authentication          # Planning
/eval OAuth2 vs JWT               # Architecture decision
/design-ui login page             # UI design
/build #123                       # Implementation
/review #123                      # Code review
/test #123                        # Testing
/debug registration fails         # Debugging
```

**Chain agents for complete workflows:**
```
1. /plan email notification system
2. /eval SendGrid vs AWS SES vs self-hosted
3. /build #124 email service
4. /review #124
5. /test #124
6. /devops deploy email service to staging
```

**Leverage project context:**
```
Development Agent: Implement task #123

Follow:
- Coding standards in docs/coding-standards.md
- API template in templates/api-endpoint.ts
- Repository pattern in examples/repository-pattern.ts
```

### 4.3 Quality Gates

Establish quality gates before moving to next phase or task. Plan intentionally. Leave good, useful artifacts as development continues:

**After Development:**
- [ ] All acceptance criteria met
- [ ] Code follows standards in docs/coding-standards.md
- [ ] No linter errors
- [ ] Manual testing completed

**After Review:**
- [ ] Review Agent approved
- [ ] Security concerns addressed
- [ ] Performance concerns addressed
- [ ] Code quality acceptable

**After Testing:**
- [ ] Unit tests passing
- [ ] Integration tests passing
- [ ] Coverage meets threshold (80%+)
- [ ] Edge cases covered

**After Debugging:**
- [ ] Root cause identified
- [ ] Fix implemented
- [ ] Regression test added
- [ ] Similar issues checked

**Before Deployment:**
- [ ] All tests passing
- [ ] Security scan clean
- [ ] Environment variables configured
- [ ] Monitoring and alerts set up
- [ ] Rollback plan documented

### 4.5 Continuous Improvement

**Update project context:**
As patterns emerge, document them:
```bash
# Add new pattern to examples
echo "// New pattern discovered" > examples/new-pattern.ts

# Update coding standards
# Edit docs/coding-standards.md

# Update agent rules to reference new patterns
# Edit .cursor/rules/development-agent/RULE.md
```

**Refine agent usage:**
Track which prompts work best and create reusable templates in `.cursor/commands/`.

---

## Quick Reference

### Essential Commands
```bash

# Agent shortcuts
/plan [feature]
/eval [decision]
/design-ui [interface]
/build #[task-id]
/review #[task-id]
/test #[task-id]
/debug [issue]
```


### Agent Sequence for Each Task
1. Development Agent → Implement
2. Review Agent → Code review
3. Testing Agent → Create/run tests
4. Debugging Agent → Fix issues (if needed)
5. DevOps Agent → Deploy (when ready)

---

## Resources

- [Backlog.md Documentation](https://github.com/MrLesk/Backlog.md)
- [Cursor Rules Documentation](https://cursor.com/docs/context/rules)
- [Cursor Commands Documentation](https://cursor.com/docs/agent/chat/commands)
- [AGENTS.md](./AGENTS.md) - Global rules and agent reference
- [README.md](./README.md) - Setup and customization guide
