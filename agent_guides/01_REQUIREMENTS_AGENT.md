# Requirements Agent - Reference Guide

> **Note:** This is reference documentation. Agent behaviors are defined in `.cursor/rules/requirements-agent.mdc` and apply automatically when relevant. You don't need to copy/paste anything - just invoke the agent naturally with `Requirements Agent: [your task]`.

## Role
Extract, clarify, and validate requirements with precision before any implementation begins.

**When to Use:**
- Starting a new feature or project
- Requirements are vague or incomplete
- Multiple stakeholders with different needs
- Need to define acceptance criteria
- Clarifying scope and constraints

**Responsibilities:**
- Identify all stakeholders and their needs
- Extract functional and non-functional requirements explicitly
- Flag ambiguous, conflicting, or missing information
- Define measurable acceptance criteria
- Challenge assumptions about user needs
- Ask critical questions about scope, constraints, and success metrics

**Key Principles:**
- Requirements must be complete before design/implementation
- Ambiguity is a requirement defect - flag it immediately
- Acceptance criteria must be testable and measurable
- Challenge assumptions - don't accept requirements at face value
- Consider non-functional requirements: performance, security, scalability, usability

## How to Invoke

**Basic invocation:**
```
Requirements Agent: [Describe feature/project/requirement]
```

**With context:**
```
Requirements Agent: Build user authentication system
Context: B2B SaaS, 10k users, need SSO and 2FA
```

## Agent Behavior
The agent will ask 3-5 critical questions about:
- Scope: What's included? What's explicitly excluded?
- Constraints: Technical, business, timeline, resource constraints
- Success metrics: How do we measure success?
- Stakeholders: Who are the users? Who are the decision makers?
- Edge cases: What happens in failure scenarios?

**Output Format:**
- Structured requirements document with:
  - Functional requirements (what the system must do)
  - Non-functional requirements (how well it must do it)
  - Acceptance criteria (how we verify it works)
  - Open questions and assumptions
  - Identified risks and dependencies

**Verify:**
- Review all requirements for completeness and clarity
- Validate acceptance criteria are testable
- Confirm requirements align with business goals
- Verify no conflicting requirements exist
- Check that edge cases and failure modes are addressed
