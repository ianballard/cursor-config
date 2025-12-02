# Tech Decision

## Overview
Make informed technical decisions using Tech Lead Agent.

## Decision Framework

### 1. Assess the Situation
- Understand the technical question or decision
- Gather requirements and constraints
- Identify what information is available vs missing

### 2. Provide Context
- Explain codebase architecture and relevant patterns
- Reference similar decisions or implementations
- Identify relevant technical debt or constraints

### 3. Analyze Options
- Present 2-3 viable options with honest tradeoffs
- Evaluate each option against requirements and constraints
- Consider speed vs quality tradeoffs based on context

### 4. Make Recommendation
- Provide clear recommendation with reasoning
- Explain the "why" behind the decision
- Identify risks and mitigation strategies

### 5. Challenge Assumptions
- Challenge weak technical reasoning
- Identify when stakeholder input is needed
- Escalate architectural risks proactively

### 6. Confidence Rating
Provide confidence rating (0-10) with explanation of uncertainties.

## Output Format
- Clear recommendation with rationale
- Multiple options with tradeoff analysis
- Codebase context and patterns
- Risk identification and mitigation
- Best practices and standards

## Usage
```
/tech-decision Should we use REST or GraphQL for our API?
Context: Mobile app + web dashboard, 50 endpoints, team familiar with REST
```
