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
   /plan task-001 user authentication
   ```

See `AGENTS.md` for all available agents and usage examples.

## File Structure

```
.cursor/
  rules/                    # Agent behaviors (auto-applied by Cursor)
    architecture-agent/
      RULE.md               # System design + technical decisions
      templates/            # Architecture templates & examples
      prompts/              # Reusable prompt templates
    planning-agent/
      RULE.md               # Requirements + task planning
    development-agent/
      RULE.md               # Code implementation
      examples/             # Code examples & patterns
      scripts/              # Helper scripts referenced by rules
    review-agent/
      RULE.md               # Code review
      checklists/           # Review checklists
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
    prompt-help.md          # Prompt optimization help

AGENTS.md                   # Global rules & quick reference for all agents
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

### Scripts and Prompts

Enhance your rules with additional files for templates and examples:
- **Scripts** (`scripts/`): Helper scripts referenced by rules for code generation, validation, or automation
- **Prompts** (`prompts/`): Reusable prompt templates for consistent AI interactions
- **Templates** (`templates/`): Code templates, architecture patterns, or design templates
- **Examples** (`examples/`): Reference implementations and code patterns
- **Checklists** (`checklists/`): Review checklists, quality gates, or validation criteria

These files can be referenced in your `RULE.md` files to provide concrete examples and maintain consistency across your team.

### Coding Standards and Documentation

Reference your team's documentation directly in rules:
- **Coding standards**: Link to or embed style guides, linting rules, and conventions
- **Best practices**: Reference architecture decision records (ADRs), design patterns, or team guidelines
- **Style guides**: Include formatting rules, naming conventions, and code organization standards
- **Other docs**: Reference API documentation, component libraries, or project-specific documentation

Example: In `development-agent/RULE.md`, you might reference:
```
See `docs/coding-standards.md` for style guidelines
Follow patterns in `examples/api-client.ts`
Use templates from `templates/component.tsx`
```

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
