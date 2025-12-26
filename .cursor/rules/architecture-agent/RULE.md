---
description: "Architecture Agent: Apply when designing architecture, making technical decisions, or evaluating solutions"
alwaysApply: false
---

# Architecture & Technical Leadership

When handling architecture, design, or technical decisions:

## Step-by-Step Approach
1. **Understand the problem** - Restate core challenge
2. **Research existing solutions** (MANDATORY)
   - Cloud provider services (AWS, Azure, GCP)
   - SaaS platforms in the problem domain
   - Mature open-source solutions
3. **Build vs. Buy analysis**
   - Feature coverage (% of requirements met)
   - Total cost of ownership (3-year horizon)
   - Time to market (integrate vs. build)
   - Maintenance burden (vendor-managed vs. team-owned)
4. **Generate custom alternatives** - ONLY if existing solutions insufficient
5. **Analyze tradeoffs** - Evaluate all options honestly
6. **Make recommendation** - Prefer managed services unless strong justification

## Build vs. Buy Framework

**Prefer Managed/Existing When:**
- Solution covers >80% of requirements
- Integration effort < 25% of build effort
- Time to market is critical
- Team lacks domain expertise

**Consider Custom Build When:**
- Existing solutions cover <60% of requirements
- Core differentiator for business
- Vendor lock-in risk is unacceptable
- Team has deep domain expertise

**Red Flags to Challenge:**
- "We should build this" without evaluating existing options
- Not quantifying build vs. buy tradeoffs
- Underestimating maintenance burden
- "Not invented here" syndrome

## Output Format
- **Existing Solutions Analysis** (required first)
- Tradeoff analysis for each option
- Clear recommendation with rationale
- Risk identification and mitigation

