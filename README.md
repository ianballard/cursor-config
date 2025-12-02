# SDLC Agent Orchestration - Cursor IDE Template

Multi-agent workflow template for software development lifecycle using Cursor IDE with specialized AI agents and commands.

## References
- `AGENTS.md` for quick agent reference
- [Cursor Rules Documentation](https://cursor.com/docs/context/rules)
- [Cursor Commands Documentation](https://cursor.com/docs/agent/chat/commands)

## Important: This is a Baseline Template

**This template is a starting point** - Customize it for your specific client and project needs:

- **Review and adjust** `.cursorrules` for your team's workflow
- **Customize agent instructions** in `agent_guides/` for project-specific requirements
- **Update defaults** (task management tools, git workflow, coding standards)
- **Add client-specific** rules, constraints, and conventions

See the [Customizing This Template](#customizing-this-template) section below for detailed guidance.

## Quick Start

1. **Copy template files to your project:**
   - Copy the `.cursor/` folder to your project root (contains rules and commands)
   - Copy `AGENTS.md` to your project root (quick reference)
   - Optionally copy `agent_guides/` folder (detailed reference docs)
   
2. **Customize for your project:**
   - Review and adjust rules in `.cursor/rules/` for your team's workflow
   - Customize `AGENTS.md` for your specific agents and workflows
   - Update `agent_guides/` if you want detailed reference docs
   - Add project-specific rules for coding standards, conventions, etc.

3. **Open project in Cursor IDE**

4. **Start chat with an agent initialization prompt:**
   ```
   [Agent Name] Agent: [Your task]
   ```
   
   See `AGENTS.md` for quick reference on all available agents.

5. **Follow SDLC workflow below**

## File Structure

```
.cursor/
  ├── rules/            # Behavioral rules (apply automatically)
  ├── always-apply.mdc           # Global principles, trust but verify
  ├── development-agent.mdc      # Apply when writing code
  ├── review-agent.mdc           # Apply when reviewing code
  ├── architecture-agent.mdc     # Apply for architecture/design
  ├── debugging-agent.mdc        # Apply when debugging
  ├── tech-lead-agent.mdc        # Apply for technical decisions
  ├── testing-agent.mdc          # Apply when creating tests
  ├── devops-agent.mdc           # Apply for infrastructure/deployment
  ├── requirements-agent.mdc     # Apply for requirements gathering
  ├── project-management-agent.mdc  # Apply for task planning
  ├── designer-agent.mdc         # Apply for UI/UX design
  ├── prompt-engineering-agent.mdc  # Apply for prompt optimization
  └── model-selection.mdc        # Model selection guidance
  
  └── commands/         # Reusable workflows (trigger with /)
      ├── plan-feature.md         # Requirements → Architecture → Tasks
      ├── setup-new-feature.md    # Setup new feature from planning to structure
      ├── full-feature-workflow.md # End-to-end feature workflow
      ├── review.md               # Systematic code review
      ├── debug.md                # Systematic bug investigation
      ├── create-tests.md         # Comprehensive test suite
      ├── run-all-tests.md        # Run comprehensive test suite
      ├── tech-decision.md        # Technical decision-making
      ├── design-ui.md            # UI/UX design and prototyping
      ├── build.md                # Build and deployment workflow
      ├── security-audit.md       # Security audit workflow
      ├── onboard-new-developer.md # Developer onboarding workflow
      ├── learn.md                # Learn codebase concepts and patterns
      └── engineer-prompt.md      # Prompt engineering help

AGENTS.md               # Quick reference for all agents
agent_guides/     # Detailed reference documentation (optional)
README.md              # This file
```

## Agent Overview
**Prompt Engineering** - Optimizes prompts and suggests optimal workflows
**Requirements** - Extracts and validates requirements
**Project Management** - Breaks work into tasks, manages backlog
**Tech Lead** - Makes technical decisions, provides expertise
**Architecture** - Designs system architecture
**UI/UX Designer** - Creates interactive prototypes in `ui_ux_design/`
**Development** - Implements features with git workflow
**Testing** - Creates comprehensive test suites
**Review** - Reviews code for quality and issues
**DevOps** - Handles infrastructure and deployment
**Debugging** - Investigates and fixes bugs

## Recommended Model Selection

**Use o1/o3 (Reasoning Models):**
- Complex architecture decisions with multiple constraints
- Algorithm design requiring deep logical reasoning
- Security threat modeling
- Multi-constraint optimization problems

**Use Claude Sonnet (Default):**
- Standard development tasks
- Code reviews and testing
- Documentation and requirements
- UI/UX prototyping
- 90% of daily work

**Use Claude Opus:**
- Long-form technical writing
- Nuanced architectural analysis
- Complex refactoring across large codebases
- Not a reasoning model - larger standard model with more capability

## Workflow Order

**⚠️ Remember: Always plan first, review at every step. See "Trust, but Verify" section.**

### 0. Getting Started (When Unsure)

**Prompt Optimization:**
```
Mode: Ask
Model: Sonnet
Agent: Prompt Engineering Agent: I need to [vague description of task]
→ Clarifies intent, suggests optimal agent/mode/model, restructures into effective prompt
```

Use this when:
- Unsure which agent to use
- Not getting useful results from prompts
- Learning how to structure effective requests
- Complex task needs workflow guidance

### 1. Discovery & Planning

**Requirements Gathering:**
```
Mode: Ask
Model: Sonnet
Agent: Requirements Agent: [Describe feature/project]
→ Clarifies requirements, identifies gaps, creates acceptance criteria
```

**Task Planning:**
```
Mode: Plan
Model: Sonnet
Agent: Project Management Agent: Break down [feature] into tasks
→ Creates backlog with estimates and dependencies (default: backlog.md CLI)
```

### 2. Technical Design

**Technical Decision Making:**
```
Mode: Ask
Model: o1 (if complex multi-constraint decision) OR Sonnet (if straightforward)
Agent: Tech Lead Agent: Should we use [approach A] or [approach B] for [problem]?
→ Makes technical decisions with clear rationale

Optional: Generate 2-3 solutions with different models, compare results
- Sonnet response (fast, practical)
- o1 response (deep reasoning)
→ Choose best approach or hybrid
```

**Architecture Design:**
```
Mode: Plan
Model: o1 (if complex distributed system) OR Sonnet (if standard architecture)
Agent: Architecture Agent: Design system architecture for [feature]
→ Proposes architecture with explicit tradeoffs

Multi-model approach for critical architecture:
1. Sonnet: Initial architecture proposal
2. o1: Deep analysis of failure modes and edge cases
3. Compare and merge best aspects
```

### 3. UI/UX Design

**Design Planning:**
```
Mode: Plan
Model: Sonnet
Agent: UI/UX Designer Agent: Design approach for [interface/flow]
→ Discusses user needs, style guide, interaction patterns
```

**Prototype Creation:**
```
Mode: Agent
Model: Sonnet
Agent: UI/UX Designer Agent: Create prototype for [interface]
→ Generates interactive mockups in ui_ux_design/
```

### 4. Implementation

**Pre-Implementation Check:**
```
Mode: Ask
Model: Sonnet
Agent: Development Agent: Review task [ID] and suggest implementation approach
→ Checks branch, suggests feature branch creation, identifies risks
```

**Code Implementation:**
```
Mode: Agent
Model: Sonnet (standard features) OR o1 (complex algorithms/security-critical)
Agent: Development Agent: Implement [task from backlog]
→ Writes code, handles errors, updates task status

Multi-model for critical features:
1. Sonnet: Fast initial implementation
2. o1: Review for edge cases, security issues, performance
3. Refine implementation with insights from both
```

### 5. Quality Assurance

**Test Planning:**
```
Mode: Plan
Model: Sonnet
Agent: Testing Agent: What test strategy for [feature]?
→ Identifies edge cases, test scenarios, coverage approach
```

**Test Implementation:**
```
Mode: Agent
Model: Sonnet
Agent: Testing Agent: Create tests for [implementation]
→ Generates comprehensive test suite with edge cases
```

**Code Review:**
```
Mode: Ask
Model: Sonnet (standard review) OR Opus (complex refactoring review)
Agent: Review Agent: Review [code/PR]
→ Identifies bugs, security issues, suggests improvements

Multi-model for critical code:
1. Sonnet: Fast security and bug scan
2. Opus: Deep architectural and maintainability analysis
→ Combine findings
```

### 6. Deployment

**Infrastructure Planning:**
```
Mode: Plan
Model: Sonnet OR o1 (if complex multi-region/high-availability)
Agent: DevOps Agent: Design deployment strategy for [service]
→ Plans infrastructure, identifies failure scenarios
```

**Infrastructure Implementation:**
```
Mode: Agent
Model: Sonnet
Agent: DevOps Agent: Create IaC and CI/CD for [service]
→ Generates IaC code, pipeline configs, monitoring setup
```

### 7. Maintenance

**Bug Investigation:**
```
Mode: Ask
Model: Sonnet (standard bugs) OR o1 (complex race conditions/distributed issues)
Agent: Debugging Agent: Investigate [bug/error with stack trace]
→ Forms hypotheses, finds root cause, proposes fix

Multi-model for mysterious bugs:
1. Sonnet: Quick hypothesis generation
2. o1: Deep logical analysis of system state
→ Compare hypotheses, test most likely
```

**Technical Debt Assessment:**
```
Mode: Ask
Model: Opus (for deep codebase analysis) OR Sonnet (for tactical debt)
Agent: Tech Lead Agent: What technical debt should we prioritize?
→ Analyzes codebase, recommends priorities with business impact
```

## How Rules Work

This template uses Cursor's `.cursor/rules` system for behavioral guidance. Rules are automatically included in the AI's context when relevant.

### Rule Types

- **Always Apply** (`alwaysApply: true`) - Included in every chat session
- **Apply Intelligently** (`alwaysApply: false` with `description`) - Applied when AI determines it's relevant based on description
- **Apply to Specific Files** (`globs`) - Applied when working with files matching patterns
- **Apply Manually** - Applied when @-mentioned

### Best Practices

- Keep rules under 500 lines
- Focus on behaviors, not documentation
- Use clear, actionable guidance
- Split large rules into multiple focused rules
- Reference files with `@filename` when needed

See [Cursor Rules Documentation](https://cursor.com/docs/context/rules) for more details.

## Cursor Modes Explained

**Ask Mode:**
- Use for: Questions, discussions, recommendations, quick answers
- Benefit: Fast conversational responses
- When: Requirements gathering, code reviews, debugging analysis, technical questions
- No file creation/editing

**Plan Mode:**
- Use for: Planning, design, strategy, breaking down work
- Benefit: Structured thinking, step-by-step approaches
- When: Architecture design, task breakdown, test strategies, deployment planning
- Outputs plans and approaches, not code

**Agent Mode:**
- Use for: Creating files, writing code, multi-step implementations
- Benefit: Autonomous execution with file operations and tool usage
- When: Code implementation, prototypes, test creation, IaC generation
- Actually creates/modifies files

## Multi-Model Comparison Strategy

For critical decisions, generate solutions with multiple models:

**Pattern:**
```
1. Generate solution with Sonnet (fast, practical baseline)
2. Generate solution with o1 (deep reasoning, edge case analysis)
3. Compare approaches side-by-side
4. Choose best or create hybrid solution
```

**Best for:**
- Critical architecture decisions
- Security-sensitive implementations
- Complex algorithm design
- High-stakes technical choices

**Example:**
```
Ask mode with Sonnet:
Architecture Agent: Design caching strategy for real-time analytics

[Review Sonnet response]

Switch to o1:
Architecture Agent: Design caching strategy for real-time analytics

[Compare both responses]
[Choose approach that balances Sonnet's practicality with o1's thoroughness]
```

## Using Agents and Commands

### Direct Agent Invocation

Each agent has behavioral rules in `.cursor/rules/` that apply automatically when relevant. Simply invoke with:
```
[Agent Name] Agent: [Your task]
```

**No initialization needed** - just invoke naturally and the agent behaviors apply automatically.

### Commands (Workflows)

Commands are reusable workflows triggered with `/` in chat. They combine multiple agents into structured processes:

```
/plan-feature user authentication with OAuth2
/setup-new-feature OAuth2 authentication system
/full-feature-workflow OAuth2 authentication
/review auth/oauth.ts focusing on security
/debug OAuth callback returning 401
/create-tests for auth/oauth.ts
/run-all-tests with coverage report
/tech-decision Should we use REST or GraphQL?
/design-ui login page with OAuth providers
/build production deployment
/security-audit auth module
/onboard-new-developer to authentication system
/learn how authentication works in our codebase
/engineer-prompt I need to build user authentication
```

**Available Commands:**

**Planning & Setup:**
- `/plan-feature` - Requirements → Architecture → Task breakdown
- `/setup-new-feature` - Setup new feature from planning to structure
- `/full-feature-workflow` - End-to-end feature implementation

**Development:**
- `/review` - Systematic code review
- `/debug` - Systematic bug investigation
- `/create-tests` - Comprehensive test suite creation
- `/run-all-tests` - Run comprehensive test suite
- `/tech-decision` - Technical decision-making framework

**Design & Build:**
- `/design-ui` - UI/UX design and prototyping
- `/build` - Build and deployment workflow

**Quality & Security:**
- `/security-audit` - Security audit workflow

**Team & Learning:**
- `/onboard-new-developer` - Developer onboarding workflow
- `/learn` - Learn codebase concepts and patterns
- `/engineer-prompt` - Get help crafting effective prompts

### Documentation Layers

1. **`.cursor/rules/*.mdc`** - Behavioral rules for AI (auto-applied by Cursor)
2. **`.cursor/commands/*.md`** - Reusable workflows (triggered with `/`)
3. **`AGENTS.md`** - Quick reference for humans (how to invoke)
4. **`agent_guides/`** - Comprehensive guides (teaching material, examples, patterns)

**Quick Reference:** See `AGENTS.md` for all available agents and invocation patterns.

**Comprehensive Guides:** See `agent_guides/` for detailed documentation, examples, and patterns. These can also be @-mentioned for full context.

## Customizing This Template

**This is a baseline template** - You should customize it for your specific client and project needs.

### Required Customizations

1. **Review `.cursor/rules/`:**
   - Adjust behavioral rules to match your team's workflow
   - Update `always-apply.mdc` for global principles and task management defaults
   - Modify agent-specific rules for your coding standards and conventions
   - Add new rules for project-specific patterns or constraints

2. **Customize `AGENTS.md`:**
   - Update agent descriptions for your specific use cases
   - Add or remove agents based on your needs
   - Modify initialization prompts for your workflow

3. **Project-Specific Additions:**
   - Create new rules in `.cursor/rules/` for:
     - Technology stack preferences (e.g., `react-patterns.mdc`)
     - Client-specific requirements (e.g., `client-security.mdc`)
     - Domain-specific patterns (e.g., `api-conventions.mdc`)
   - Add style guides to `ui_ux_design/style-guide.md`
   - Include compliance or security requirements as rules

### Example Customizations

**For a specific client:**
- Create `.cursor/rules/client-security.mdc` with client security requirements
- Update `development-agent.mdc` to enforce client's coding standards
- Add client-specific design system rules to `designer-agent.mdc`

**For a specific technology stack:**
- Create `.cursor/rules/react-patterns.mdc` for React best practices
- Create `.cursor/rules/aws-infrastructure.mdc` for AWS-specific patterns
- Update `testing-agent.mdc` for your testing framework (Jest, pytest, etc.)

**For team-specific workflows:**
- Update `always-apply.mdc` to change default task management tool
- Modify git branch naming conventions in `always-apply.mdc`
- Customize `review-agent.mdc` for your code review process

## Customizing for New Projects

### Adding New Agents

1. **Create a new rule file:**
   - Create `.cursor/rules/your-agent-name.mdc`
   - Add metadata:
     ```markdown
     ---
     description: "Apply when [specific context]"
     alwaysApply: false
     ---
     ```
   - Define agent behaviors and principles

2. **Update `AGENTS.md`:**
   - Add your agent to the quick reference
   - Include when to use it and how to invoke it

3. **Optionally create detailed docs:**
   - Create `agent_guides/XX_YOUR_AGENT_AGENT.md` for comprehensive guides
   - Follow the structure of existing agent files

4. **Update this README** with the new agent in the Agent Overview section

### Project-Specific Configuration

**Task Management Tool:**
Default is backlog.md CLI. To change:
- Edit `always-apply.mdc` in `.cursor/rules/`
- Update default from backlog.md to GitHub Issues or Jira

**Style Guide:**
- Place style guide in `ui_ux_design/style-guide.md`
- Reference it in `designer-agent.mdc` with `@ui_ux_design/style-guide.md`

**Git Workflow:**
- Configure in `always-apply.mdc`
- Enforces feature/fix branch naming
- Never commits to main/master without confirmation

## Trust, but Verify: AI Quality Assurance

**Critical Mindset:**
- **Always plan first** - Never jump straight to implementation
- **Review output at every step** - Don't accept AI output blindly
- **Treat AI like Day 1 Junior Developer code** - You would never ship a junior dev's code without review. The same applies here.

**3-Step Protocol Before Committing AI Code:**

1. **Line-by-Line Review:**
   - You must understand the *why*, not just the *what*
   - If you can't explain the code, do not ship it
   - Verify logic matches requirements
   - Check for edge cases and error handling

2. **Local Testing:**
   - Run it locally first - AI is great at syntax but lacks context of your legacy systems
   - Test with real data and realistic scenarios
   - Verify integration with existing codebase
   - Check for breaking changes

3. **Security Scan:**
   - Check for hallucinated packages or dependencies
   - Verify no introduced vulnerabilities
   - Review authentication/authorization logic
   - Scan for hardcoded secrets or credentials

**Responsibility Principle:**

**AI is a Generation tool, not a Publication tool.**

- If you use it for code, you are responsible for correctness and security
- If you use it for emails, you are responsible for the tone
- If you use it for summaries, you are responsible for the facts
- If you use it for documentation, you are responsible for accuracy

**Review Checklist:**
- [ ] Understood every line of generated code
- [ ] Tested locally with realistic scenarios
- [ ] Verified no security vulnerabilities introduced
- [ ] Checked dependencies are real and appropriate
- [ ] Confirmed integration with existing systems
- [ ] Validated error handling and edge cases
- [ ] Reviewed for code quality and maintainability

## Best Practices

**Prompt Engineering:**
- Use Prompt Engineering Agent when unsure which agent/mode to use
- Learn from optimized prompts to improve future requests
- Complex tasks often need multi-step workflows, not single prompts

**Model Selection:**
- Start with Sonnet for 90% of tasks
- Use o1 when you see ⚠️ model recommendation
- Use multi-model comparison for critical decisions
- Switch models manually in Cursor UI

**Mode Selection:**
- Questions/discussions: Ask mode
- Planning/design: Plan mode
- Implementation/file creation: Agent mode

**Task Management:**
- Run `backlog list` before starting work
- Development Agent updates task status automatically
- Keep backlog.md in sync with actual work

**Git Workflow:**
- Always create feature/fix branches
- Reference task numbers in commits
- Development Agent enforces this automatically

**UI/UX Design:**
- All design artifacts go in `ui_ux_design/`
- Create prototypes before implementation
- Use ShadCN components by default

**Technical Decisions:**
- Use Tech Lead Agent for architecture choices
- Document decisions in `design-decisions.md`
- Challenge assumptions early
- Use multi-model comparison for high-impact decisions

## Common Patterns

**Planning a Task with Specific Agent:**
```
User: "plan task-x with y agent"
→ Prompt Engineering Agent validates:
  - Is agent appropriate for planning?
  - Does task need requirements gathering first?
  - Should use Plan Mode or Ask Mode?
→ Provides optimized prompt:
  "[Y Agent] Agent: Plan [task-x] with context [requirements/constraints]"
→ Usually Plan Mode for structured planning
```

**Learning Better Prompting:**
```
1. Ask/Sonnet: Prompt Engineering Agent analyzes your vague request
2. Receives optimized prompt with explanation of improvements
3. Learn prompt structure and agent selection patterns
4. Apply learned patterns to future tasks
```

**New Feature Flow:**
```
1. Ask/Sonnet: Requirements Agent analyzes requirements
2. Plan/Sonnet: Project Management Agent breaks into tasks
3. Plan/o1 or Sonnet: Architecture Agent designs approach
4. Plan/Sonnet → Agent/Sonnet: UI/UX Designer creates prototype
5. Agent/Sonnet: Development Agent implements
6. Agent/Sonnet: Testing Agent creates tests
7. Ask/Sonnet: Review Agent reviews code
8. Agent/Sonnet: DevOps Agent deploys
```

**Bug Fix Flow:**
```
1. Ask/Sonnet or o1: Debugging Agent investigates root cause
2. Agent/Sonnet: Development Agent implements fix
3. Agent/Sonnet: Testing Agent creates regression tests
4. Ask/Sonnet: Review Agent reviews fix
```

**Critical Architecture Decision:**
```
1. Ask/Sonnet: Architecture Agent proposes approach A
2. Ask/o1: Architecture Agent analyzes same problem
3. Ask/Sonnet: Tech Lead Agent compares both, makes final decision
4. Document decision rationale
```

**Technical Debt:**
```
1. Ask/Opus: Tech Lead Agent identifies and prioritizes debt
2. Plan/o1 or Sonnet: Architecture Agent designs refactoring approach
3. Plan/Sonnet: Project Management Agent breaks into tasks
4. Agent/Sonnet: Development Agent implements incrementally
```

## Troubleshooting

**Not getting useful agent responses:**
- Use Prompt Engineering Agent to restructure your request
- May need different agent, mode, or more context
- Complex tasks might need multi-step workflow instead of single prompt

**Agent not behaving correctly:**
- Verify `.cursor/rules/` folder exists and contains rule files
- Check that rules have proper metadata (description, alwaysApply)
- Ensure agent initialization prompt is used correctly
- Verify task description is clear and specific
- Confirm correct mode selected (Ask vs Plan vs Agent)
- Check Cursor Settings → Rules to see which rules are active
- Review rule files in `.cursor/rules/` for expected behavior

**Model suggestions ignored:**
- Model selection is manual via Cursor UI dropdown
- Warnings are advisory only
- Switch models when o1 recommended for complex tasks

**Task management CLI not working:**
- Verify CLI installed: `which backlog` or `which gh` or `which jira`
- Check PATH configuration
- Ensure proper syntax from CLI Reference in `.cursorrules`

**Wrong mode selected:**
- Questions/review: Use Ask mode
- Planning/strategy: Use Plan mode
- Creating files/code: Use Agent mode