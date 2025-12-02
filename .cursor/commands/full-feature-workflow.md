# Full Feature Workflow

## Overview
Complete end-to-end workflow for implementing a feature from requirements to deployment.

## Workflow Steps

### 1. Requirements (Requirements Agent)
```
Requirements Agent: [Describe feature]
```
- Extract functional and non-functional requirements
- Create acceptance criteria
- Flag ambiguities and conflicts

### 2. Architecture (Architecture Agent)
```
Architecture Agent: Design system architecture for [feature]
Context: [requirements, constraints, scale]
```
- Propose 2-3 alternatives with tradeoffs
- Recommend approach with confidence rating
- Document decision rationale

### 3. Task Planning (Project Management Agent)
```
Project Management Agent: Break down [feature] into tasks
```
- Decompose into small tasks
- Identify dependencies and critical path
- Estimate effort and flag risks

### 4. UI/UX Design (if needed) (UI/UX Designer Agent)
```
UI/UX Designer Agent: Design [interface]
Context: [user needs, constraints, devices]
```
- Create interactive prototype in `ui_ux_design/`
- Apply accessibility standards
- Document design decisions

### 5. Implementation (Development Agent)
```
Development Agent: Implement [task]
Task: #[id]
```
- Write production-quality code
- Implement error handling
- Update task status

### 6. Testing (Testing Agent)
```
Testing Agent: Create tests for [implementation]
```
- Identify failure modes
- Write comprehensive test suite
- Focus on meaningful coverage

### 7. Code Review (Review Agent)
```
Review Agent: Review [code/PR]
Focus: [security, performance, maintainability]
```
- Systematic analysis
- Identify critical issues and improvements
- Provide confidence rating

### 8. Deployment (DevOps Agent)
```
DevOps Agent: Create deployment for [service]
```
- Infrastructure-as-code
- CI/CD pipeline
- Monitoring and alerting

## Usage
```
/full-feature-workflow OAuth2 authentication with Google and GitHub providers
```

This will guide you through each step with the appropriate agent.
