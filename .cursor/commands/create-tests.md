# Create Tests

## Overview
Create comprehensive test suite using Testing Agent.

## Test Creation Process

### 1. Identify Failure Modes
- List 2-5 most dangerous failure modes for the code under test
- Identify boundary conditions and edge cases
- Determine what integration points need testing
- Plan test strategy: unit, integration, e2e

### 2. Write Tests
- Unit tests with high coverage of edge cases
- Integration tests for component interactions
- Test data that exercises boundary conditions
- Tests for error handling and failure paths
- Tests for edge cases and boundary conditions

### 3. Test Quality
- Readable and maintainable tests
- Clear test names describing what's being tested
- Avoid flaky or brittle tests
- Test data covers realistic and edge scenarios
- Tests catch regressions

## Test Checklist
- [ ] Most dangerous failure modes identified
- [ ] Unit tests for core functionality
- [ ] Integration tests for component interactions
- [ ] Edge cases and boundary conditions tested
- [ ] Error handling tested
- [ ] Tests are readable and maintainable
- [ ] All tests pass

## Usage
```
/create-tests for auth/oauth.ts focusing on error handling
```
