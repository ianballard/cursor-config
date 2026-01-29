# Cursor AI Agent Configuration

A template for using specialized AI agents in Cursor IDE for different software development tasks.

## Quick Start

1. **Copy to your project:**
   ```
   cp -r .cursor/ /path/to/your/project/
   cp AGENTS.md /path/to/your/project/
   ```

2. **Open project in Cursor IDE**

3. **Invoke a skill:**
   ```
   @plan task-001 user authentication
   ```

See `AGENTS.md` for all available skills and usage examples.

## File Structure

```
.cursor/
  skills/                   # Agent Skills (attach with @skill-name)
    architect/
      SKILL.md              # System design + technical decisions
      templates/            # Architecture templates & examples
      prompts/              # Reusable prompt templates
    plan/
      SKILL.md              # Requirements + task planning
    develop/
      SKILL.md              # Code implementation
      examples/             # Code examples & patterns
      scripts/              # Helper scripts referenced by skills
    review/
      SKILL.md              # Code review
      checklists/           # Review checklists
    testing/
      SKILL.md              # Test creation
    debug/
      SKILL.md              # Bug investigation
    devops/
      SKILL.md              # Infrastructure
    design/
      SKILL.md              # UI/UX design
    prompt-engineer/
      SKILL.md              # Prompt optimization

AGENTS.md                   # Global rules & quick reference for all agents
```

## How It Works

- **Skills** in `.cursor/skills/` are folders containing `SKILL.md` files
- Skills are attached to conversations using `@skill-name` (e.g., `@plan`)
- Cursor discovers skills based on their `description` field in the frontmatter

## Customization

Modify skills in `.cursor/skills/` to match your team's workflow:
- Update `AGENTS.md` for global rules
- Adjust agent-specific skills for your coding standards
- Add project-specific skill folders (e.g., `react-patterns/SKILL.md`)

### Scripts and Prompts

Enhance your skills with additional files for templates and examples:
- **Scripts** (`scripts/`): Helper scripts referenced by skills for code generation, validation, or automation
- **Prompts** (`prompts/`): Reusable prompt templates for consistent AI interactions
- **Templates** (`templates/`): Code templates, architecture patterns, or design templates
- **Examples** (`examples/`): Reference implementations and code patterns
- **Checklists** (`checklists/`): Review checklists, quality gates, or validation criteria

These files can be referenced in your `SKILL.md` files to provide concrete examples and maintain consistency across your team.

### Coding Standards and Documentation

Reference your team's documentation directly in skills:
- **Coding standards**: Link to or embed style guides, linting rules, and conventions
- **Best practices**: Reference architecture decision records (ADRs), design patterns, or team guidelines
- **Style guides**: Include formatting rules, naming conventions, and code organization standards
- **Other docs**: Reference API documentation, component libraries, or project-specific documentation

Example: In `develop/SKILL.md`, you might reference:
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

- [Cursor Agent Skills Documentation](https://cursor.com/docs/context/skills)
