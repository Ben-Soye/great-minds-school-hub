# Contributing to Great Minds School Hub

Thank you for your interest in contributing! This document provides guidelines and instructions for contributing to the project.

## Code of Conduct

Be respectful, inclusive, and professional in all interactions.

## Getting Started

1. **Fork the repository** on GitHub
2. **Clone your fork** locally
3. **Create a new branch** for your feature or fix
4. **Make your changes** following the coding standards
5. **Commit your changes** with clear messages
6. **Push to your fork** and create a Pull Request

## Development Workflow

### Branch Naming

```
feature/feature-name          # New features
fix/bug-description           # Bug fixes
docs/documentation-topic      # Documentation
refactor/component-name       # Refactoring
test/test-description         # Tests
chore/maintenance-task        # Maintenance
```

### Commit Messages

Follow conventional commits:

```
feat: add new feature description
fix: resolve bug description
docs: update documentation
style: formatting changes
refactor: code restructuring
test: add or update tests
chore: maintenance tasks
```

## Code Standards

### TypeScript
- Use TypeScript for all code
- Strict mode enabled
- No `any` types without justification
- Clear type definitions

### Formatting
- ESLint for code quality
- Prettier for formatting
- Run `npm run lint:fix` before committing

### Testing
- Write unit tests for new functions
- Write integration tests for API endpoints
- Maintain minimum 80% code coverage
- Run `npm run test` before submitting PR

## Pull Request Process

1. **Update documentation** if needed
2. **Add tests** for new features
3. **Run linting and tests** locally
4. **Submit PR** with clear description
5. **Address review feedback** promptly
6. **Ensure CI passes** before merge

## Reporting Issues

Use GitHub Issues with:
- Clear, descriptive title
- Detailed description of the issue
- Steps to reproduce (for bugs)
- Expected vs. actual behavior
- Screenshots/logs if applicable
- Your environment (OS, browser, versions)

## Feature Requests

Describe the feature with:
- Use case and motivation
- Proposed solution
- Alternative approaches considered
- Any potential drawbacks

## Questions?

Open a GitHub Discussion or contact the maintainers.

Thank you for contributing! 🙏
