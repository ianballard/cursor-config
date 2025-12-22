# Cursor AI Agent Configuration

A template for using specialized AI agents in Cursor IDE for different software development tasks.

## Quick Start

1. **Copy to your project:**
   ```
   cp -r .cursor/ /path/to/your/project/
   cp AGENTS.md /path/to/your/project/
   ```

2. **Open project in Cursor IDE**

3. **Invoke an agent:**
   ```
   /build task-001 user authentication
   ```

See `AGENTS.md` for all available agents and usage examples.

## File Structure

```
.cursor/
  rules/                    # Agent behaviors (auto-applied by Cursor)
    always-apply/
      RULE.md               # Global principles + model selection
    architecture-agent/
      RULE.md               # System design + technical decisions
    planning-agent/
      RULE.md               # Requirements + task planning
    development-agent/
      RULE.md               # Code implementation
    review-agent/
      RULE.md               # Code review
    testing-agent/
      RULE.md               # Test creation
    debugging-agent/
      RULE.md               # Bug investigation
    devops-agent/
      RULE.md               # Infrastructure
    designer-agent/
      RULE.md               # UI/UX design
    prompt-engineering-agent/
      RULE.md               # Prompt optimization
  
  commands/                 # Reusable workflows (trigger with /)
    plan.md                 # Multi-agent feature planning
    eval.md                 # Technical decisions
    review.md               # Code review
    debug.md                # Bug investigation
    test.md                 # Testing
    design-ui.md            # UI/UX design
    build.md                # Implementation

AGENTS.md                   # Quick reference for all agents
```

## How It Works

- **Rules** in `.cursor/rules/` are folders containing `RULE.md` files
- Rules are auto-applied based on their type (always, intelligent, file-pattern, manual)
- **Commands** in `.cursor/commands/` are workflows triggered with `/command-name`

## Customization

Modify rules in `.cursor/rules/` to match your team's workflow:
- Update `always-apply/RULE.md` for global principles
- Adjust agent-specific rules for your coding standards
- Add project-specific rule folders (e.g., `react-patterns/RULE.md`)

## Key Principles

1. **Plan first** - Use Ask/Plan modes before Agent mode
2. **Review AI output** - Treat it like junior developer code
3. **Test locally** - Verify before committing
4. **Security check** - Watch for hallucinated packages or vulnerabilities

## Model Selection

- **o1/o3**: Complex architecture, proofs, security modeling
- **Sonnet**: Standard development (90% of work)
- **Opus**: Deep analysis, large refactoring
- **Haiku**: Quick iterations

## Resources

- [Cursor Rules Documentation](https://cursor.com/docs/context/rules)
- [Cursor Commands Documentation](https://cursor.com/docs/agent/chat/commands)
