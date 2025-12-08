# Tech Decision

## Overview
Make informed technical decisions using Tech Lead Agent with mandatory build vs. buy analysis.

## Decision Framework

### 1. Assess the Situation
- Understand the technical question or decision
- Gather requirements and constraints
- Identify what information is available vs missing

### 2. Research Existing Solutions (MANDATORY)
- Check cloud provider managed services (AWS, Azure, GCP)
- Identify relevant SaaS platforms
- Evaluate mature open-source alternatives
- Document why each does/doesn't meet requirements

### 3. Build vs. Buy Analysis
- Feature coverage comparison (% of requirements met)
- Total cost of ownership (3-year horizon)
- Time to market comparison
- Maintenance burden assessment
- Risk evaluation (vendor vs. custom)

### 4. Provide Context
- Explain codebase architecture and relevant patterns
- Reference similar decisions or implementations
- Identify relevant technical debt or constraints

### 5. Analyze Options
- Present managed services + custom options with honest tradeoffs
- Evaluate each option against requirements and constraints
- Consider speed vs quality tradeoffs based on context
- **Default to managed services** unless strong justification for custom

### 6. Make Recommendation
- Provide clear recommendation with reasoning
- Explain the "why" behind the decision
- Identify risks and mitigation strategies
- Quantify tradeoffs (cost, time, maintenance)

### 7. Challenge Assumptions
- Challenge "build everything" mentality
- Push back on "not invented here" syndrome
- Challenge weak technical reasoning
- Identify when stakeholder input is needed
- Escalate architectural risks proactively

### 8. Confidence Rating
Provide confidence rating (0-10) with:
- Research completeness (existing solutions evaluated?)
- Explanation of uncertainties
- What would increase confidence

## Output Format
- **Existing Solutions Analysis** (required)
  - Managed services/SaaS/open-source evaluated
  - Feature coverage and gaps
  - Total cost of ownership comparison
- Clear recommendation with rationale
- Multiple options with tradeoff analysis
- Codebase context and patterns
- Risk identification and mitigation
- Best practices and standards

## Usage
```
/tech-decision Should we build a custom BI assistant for QuickSight?
Requirements:
- Natural language queries against datasets
- QuickSight dashboard integration
- SSO authentication
- 100 users
```

## Example Output
```
## Existing Solutions Evaluated

1. **Amazon Q for QuickSight** (AWS Managed)
   - Coverage: 95% | TCO: $15k | Integration: 2-3 weeks
   - ✅ Native QuickSight integration, AWS-managed, SSO included
   - ❌ Limited UI customization

2. **Custom LangChain + Bedrock**
   - Coverage: 100% | TCO: $85k | Build: 6 months
   - ✅ Full control, custom UI
   - ❌ Significant maintenance, slower time to market

## Recommendation
**Use Amazon Q** - 95% coverage at 18% of custom cost. The 5% gap doesn't justify 6-month build + ongoing maintenance burden.

**Confidence: 9/10** - Amazon Q feature set verified, strong fit for requirements.
```
