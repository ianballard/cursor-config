# Learn Codebase

## Overview
Explore and understand unfamiliar parts of the codebase, architectural patterns, or technical concepts using the Tech Lead Agent.

## Learning Process

### 1. Identify What to Learn
- Specific file, module, or component
- Architectural pattern or design decision
- Technical concept or implementation approach
- Data flow or integration point

### 2. Exploration Strategy

**For Code Components:**
- Read and explain the code's purpose and responsibilities
- Identify key functions, classes, and their relationships
- Explain design patterns used
- Show how it integrates with other parts of the system
- Highlight important edge cases or gotchas

**For Architectural Concepts:**
- Explain the "why" behind the design decision
- Describe tradeoffs and alternatives considered
- Show where this pattern is used throughout the codebase
- Identify related components and dependencies

**For Technical Flows:**
- Trace execution path from start to finish
- Explain data transformations and state changes
- Identify external dependencies and integrations
- Show error handling and edge cases

### 3. Learning Deliverables

Provide:
- **Summary:** High-level overview in 2-3 sentences
- **Purpose:** Why this code/pattern exists
- **Key Components:** Main building blocks and their roles
- **How It Works:** Step-by-step explanation
- **Integration Points:** How it connects to other parts
- **Important Details:** Edge cases, gotchas, best practices
- **Related Code:** Other files/modules to explore next
- **Confidence Rating:** How certain the explanation is (0-10)

### 4. Follow-Up Questions

Suggest related areas to explore:
- "Want to learn about [related component]?"
- "Should I explain [related pattern]?"
- "Need to see how [integration] works?"

## Usage Examples

**Learn about a specific file:**
```
/learn auth/oauth.ts
```

**Learn about a pattern:**
```
/learn how we handle authentication across the app
```

**Learn about a flow:**
```
/learn the user registration flow from signup to email verification
```

**Learn about architecture:**
```
/learn our microservices communication pattern
```

**Learn about a concept:**
```
/learn how we implement caching strategy
```

## Output Format

```
## [Component/Pattern Name]

**Summary:** [2-3 sentence overview]

**Purpose:** [Why this exists, what problem it solves]

**Key Components:**
- Component A: [role]
- Component B: [role]

**How It Works:**
1. [Step-by-step explanation]
2. [With code references]
3. [And data flow]

**Integration Points:**
- Connects to: [other systems]
- Used by: [consumers]
- Depends on: [dependencies]

**Important Details:**
- [Gotcha or edge case]
- [Best practice]
- [Security consideration]

**Related Code to Explore:**
- [File/module 1]: [why relevant]
- [File/module 2]: [why relevant]

**Confidence Rating:** X/10
[Explanation of certainty/uncertainty]
```

## Tips for Effective Learning

1. **Start broad, then narrow:** Begin with high-level architecture, then dive into specific files
2. **Follow the data:** Trace how data flows through the system
3. **Ask "why":** Understand design decisions, not just implementation
4. **Connect the dots:** See how components relate to each other
5. **Document as you learn:** Add comments or notes for future reference

## When to Use This Command

- Onboarding to a new codebase
- Before modifying unfamiliar code
- Understanding a bug's root cause
- Planning a refactor or feature
- Code review preparation
- Knowledge transfer from senior developers
