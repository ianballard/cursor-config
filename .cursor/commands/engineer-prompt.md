# Prompt

## Overview
Get help crafting effective prompts using Prompt Engineering Agent.

## Prompt Optimization Process

### 1. Clarify Intent
- What is the specific outcome desired?
- What context is needed (files, requirements, constraints)?
- What's the scope of the task?

### 2. Determine Approach
- Is task too large and needs decomposition?
- Which agent is optimal for this task?
- Which mode (Ask/Plan/Agent) is best?
- Which model (Sonnet/Opus/o1) is optimal?

### 3. Structure Prompt
- Role: Which agent to use
- Task: Clear, specific objective
- Context: Relevant background and constraints
- Output format: What deliverable is expected

### 4. Provide Optimized Prompt
- Exact prompt to copy/paste
- Explanation of why it's structured that way
- Which mode and agent to use
- Whether task should be broken down

## Task Decomposition Signals
Break into smaller tasks when:
- Request involves multiple SDLC phases
- Single prompt would produce >500 lines of code
- Task has multiple independent components
- Different agents needed for different parts
- Implementation requires research or decisions first

## Usage
```
/engineer-prompt I need to build user authentication
```

The agent will ask clarifying questions and provide optimized prompt(s).
