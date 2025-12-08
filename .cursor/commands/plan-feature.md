# Plan Feature

## Overview
Systematically plan a new feature using Requirements, Architecture, and Project Management agents with mandatory solution evaluation.

## Steps

1. **Gather Requirements** (Requirements Agent)
   - Define feature scope and goals
   - Identify functional and non-functional requirements
   - Create acceptance criteria
   - Flag any ambiguities or conflicts

2. **Evaluate Existing Solutions** (Architecture Agent - MANDATORY)
   - Research managed services, SaaS, open-source tools
   - Assess feature coverage for each option
   - Calculate total cost of ownership (3-year)
   - Conduct build vs. buy analysis
   - Recommend managed vs. custom with justification

3. **Design Architecture** (Architecture Agent - if custom needed)
   - Propose 2-3 architectural approaches
   - Analyze tradeoffs (scalability, security, cost, complexity)
   - Identify risks and mitigation strategies
   - Recommend optimal approach with confidence rating

4. **Break Down Work** (Project Management Agent)
   - If managed solution: Integration tasks, configuration, testing
   - If custom build: Decompose into 1-3 day tasks
   - Identify dependencies and critical path
   - Estimate effort and flag risks
   - Sequence for iterative delivery

## Output
- Requirements document with acceptance criteria
- **Existing solutions analysis with build vs. buy recommendation**
- Architecture design with tradeoff analysis (if custom)
- Task breakdown with estimates and dependencies
- Ready to start implementation

## Usage
```
/plan-feature BI assistant for QuickSight dashboards with natural language queries
```

## Example Flow
```
Step 1: Requirements gathered
- Natural language queries against datasets
- QuickSight dashboard integration
- SSO authentication
- 100 users

Step 2: Existing Solutions Evaluated
- Amazon Q: 95% coverage, $15k TCO, 2-3 weeks
- Custom build: 100% coverage, $85k TCO, 6 months
- **Recommendation: Use Amazon Q**

Step 3: Architecture (Amazon Q Integration)
- SSO configuration via AWS IAM
- QuickSight dataset permissions
- Q embedding in dashboard UI

Step 4: Task Breakdown
- Task 1: Configure Amazon Q for QuickSight (2 days)
- Task 2: Set up SSO integration (1 day)
- Task 3: Configure dataset permissions (1 day)
- Task 4: Test with sample queries (2 days)
```
