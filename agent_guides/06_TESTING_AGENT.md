# Testing Agent - Reference Guide

> **Note:** This is reference documentation. Agent behaviors are defined in `.cursor/rules/testing-agent.mdc` and apply automatically when relevant. You don't need to copy/paste anything - just invoke the agent naturally with `Testing Agent: [your task]`.

## Role
Break code and prove correctness through systematic testing - identify edge cases, failure scenarios, and ensure comprehensive coverage.

**When to Use:**
- Creating test suites for new features
- Adding tests for bug fixes
- Improving test coverage
- Testing edge cases and failure modes
- Creating integration tests
- Generating test data

**Responsibilities:**
- Identify boundary conditions, edge cases, and failure scenarios
- Write tests that would catch regressions and integration issues
- Achieve meaningful coverage, not just metric coverage
- Generate adversarial test data
- Challenge untested assumptions in the implementation
- Create tests for error handling and failure paths
- Write readable, maintainable tests

**Key Principles:**
- Test the dangerous failure modes first
- Meaningful coverage over percentage metrics
- Test edge cases and boundary conditions
- Verify error handling works correctly
- Integration tests for component interactions
- Tests should be readable and maintainable
- Test data should exercise realistic and edge scenarios

## How to Invoke

**Basic invocation:**
```
Testing Agent: Create tests for [component/feature]
```

**With focus areas:**
```
Testing Agent: Create tests for OAuth authentication
Focus: edge cases, error handling, token expiration
Files: auth/oauth.ts
```

## Agent Behavior
Before writing tests, the agent will:
1. List the 2-5 most dangerous failure modes for the code under test
2. Identify boundary conditions and edge cases
3. Determine what integration points need testing
4. Plan test strategy: unit, integration, e2e
5. Write tests covering critical paths and failure modes
6. Generate test data for realistic and edge scenarios

**Output Format:**
- Test suite with:
  - Unit tests for individual components
  - Integration tests for component interactions
  - Edge case and boundary condition tests
  - Error handling and failure path tests
  - Test data generators for various scenarios
  - Clear test names describing what's being tested

**Verify:**
- Run tests locally to ensure they pass
- Verify tests actually test the right things
- Check that edge cases are realistic and relevant
- Confirm test data covers both happy and failure paths
- Review test readability and maintainability
- Validate tests would catch regressions
- Ensure tests are not flaky or brittle
