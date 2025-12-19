# Contributing to Familiarise Mobile

Thank you for your interest in contributing to Familiarise Mobile. This document provides guidelines and instructions for contributing to the project.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Development Setup](#development-setup)
- [Branch Naming Conventions](#branch-naming-conventions)
- [Commit Message Format](#commit-message-format)
- [Pull Request Process](#pull-request-process)
- [Code Style](#code-style)
- [Testing Requirements](#testing-requirements)
- [Review Process](#review-process)

## Prerequisites

Before contributing, ensure you have:

- Flutter SDK 3.24.x or higher installed
- Dart SDK 3.5.x (bundled with Flutter)
- A working development environment (see [README.md](./README.md) for setup)
- Familiarity with the project architecture (see [CLAUDE.md](./CLAUDE.md))

## Development Setup

1. **Fork the repository** to your GitHub account

2. **Clone your fork:**
   ```bash
   git clone https://github.com/YOUR_USERNAME/familiarise_mobile.git
   cd familiarise_mobile
   ```

3. **Add upstream remote:**
   ```bash
   git remote add upstream https://github.com/your-org/familiarise_mobile.git
   ```

4. **Install dependencies and generate code:**
   ```bash
   flutter pub get
   dart run build_runner build --delete-conflicting-outputs
   ```

5. **Create a feature branch:**
   ```bash
   git checkout -b feature/your-feature-name
   ```

## Branch Naming Conventions

Use the following prefixes for branch names:

| Prefix | Purpose | Example |
|--------|---------|---------|
| `feature/` | New features | `feature/add-dark-mode` |
| `bugfix/` | Bug fixes | `bugfix/fix-login-crash` |
| `hotfix/` | Urgent production fixes | `hotfix/critical-payment-error` |
| `refactor/` | Code refactoring | `refactor/simplify-auth-flow` |
| `docs/` | Documentation updates | `docs/update-readme` |
| `test/` | Test additions/updates | `test/add-booking-tests` |
| `chore/` | Maintenance tasks | `chore/update-dependencies` |

**Rules:**
- Use lowercase letters
- Use hyphens to separate words
- Keep names concise but descriptive
- Include ticket/issue number if applicable: `feature/123-add-notifications`

## Commit Message Format

Follow the [Conventional Commits](https://www.conventionalcommits.org/) specification:

```
<type>(<scope>): <description>

[optional body]

[optional footer(s)]
```

### Types

| Type | Description |
|------|-------------|
| `feat` | New feature |
| `fix` | Bug fix |
| `docs` | Documentation changes |
| `style` | Code style changes (formatting, semicolons, etc.) |
| `refactor` | Code refactoring (no feature or bug fix) |
| `perf` | Performance improvements |
| `test` | Adding or updating tests |
| `chore` | Maintenance tasks (dependencies, build, etc.) |

### Scopes

Use feature module names or general areas:

- `auth`, `onboarding`, `booking`, `checkout`, `dashboard`, `explore`, `meetings`, `chat`, `profile`
- `core`, `data`, `domain`, `shared`
- `backend`, `ci`, `deps`

### Examples

```
feat(onboarding): add profile image picker

fix(auth): resolve Google Sign-In crash on Android

refactor(booking): simplify slot selection logic

docs(readme): update installation instructions

chore(deps): upgrade riverpod to 2.5.1
```

### Rules

- Use imperative mood ("add" not "added" or "adds")
- Don't capitalize the first letter of the description
- No period at the end of the description
- Keep the first line under 72 characters
- Use the body for additional context when needed

## Pull Request Process

### Before Submitting

1. **Sync with upstream:**
   ```bash
   git fetch upstream
   git rebase upstream/dev
   ```

2. **Run static analysis:**
   ```bash
   flutter analyze
   ```
   Ensure there are no warnings or errors.

3. **Run tests:**
   ```bash
   flutter test
   ```
   All tests must pass.

4. **Format code:**
   ```bash
   dart format lib test
   ```

5. **Regenerate code if needed:**
   ```bash
   dart run build_runner build --delete-conflicting-outputs
   ```

### Submitting

1. **Push your branch:**
   ```bash
   git push origin feature/your-feature-name
   ```

2. **Create a Pull Request:**
   - Target branch: `dev` (not `main`)
   - Use a clear, descriptive title
   - Fill out the PR template completely
   - Link related issues

3. **PR Description should include:**
   - Summary of changes
   - Screenshots/recordings for UI changes
   - Testing steps
   - Breaking changes (if any)

### PR Template

```markdown
## Summary
Brief description of changes

## Changes
- Change 1
- Change 2

## Screenshots (if applicable)
[Add screenshots here]

## Testing
- [ ] Unit tests added/updated
- [ ] Manual testing completed
- [ ] No regressions introduced

## Checklist
- [ ] Code follows project style guidelines
- [ ] Self-review completed
- [ ] Documentation updated (if needed)
- [ ] No new warnings from `flutter analyze`
```

## Code Style

Follow the project's coding standards documented in [docs/flutter-best-practices.md](./docs/flutter-best-practices.md).

### Quick Reference

1. **Use Riverpod with code generation:**
   ```dart
   @riverpod
   Future<List<User>> users(UsersRef ref) async {
     return ref.watch(userRepositoryProvider).getUsers();
   }
   ```

2. **Use Freezed for immutable state:**
   ```dart
   @freezed
   class UserState with _$UserState {
     const factory UserState.initial() = _Initial;
     const factory UserState.loading() = _Loading;
     const factory UserState.loaded(User user) = _Loaded;
     const factory UserState.error(String message) = _Error;
   }
   ```

3. **Follow the repository pattern:**
   - Define interfaces in `domain/repositories/`
   - Implement in `data/repositories/`

4. **Use `Result<T>` (Either pattern) for error handling:**
   ```dart
   Future<Result<User>> getUser(String id);
   ```

5. **File organization within features:**
   ```
   features/
   └── feature_name/
       ├── providers/      # Riverpod providers
       ├── screens/        # Screen widgets
       ├── widgets/        # Feature-specific widgets
       └── utils/          # Feature utilities
   ```

### Linting

The project uses strict analysis options. Run before committing:

```bash
flutter analyze
```

Fix any issues before submitting your PR.

## Testing Requirements

### For New Features

- Add unit tests for business logic
- Add widget tests for UI components
- Aim for meaningful test coverage

### For Bug Fixes

- Add a test that reproduces the bug
- Ensure the test passes with your fix

### Running Tests

```bash
# All tests
flutter test

# Specific test file
flutter test test/features/auth/auth_provider_test.dart

# With coverage
flutter test --coverage
```

### Test Organization

```
test/
├── features/
│   └── auth/
│       ├── auth_provider_test.dart
│       └── screens/
│           └── sign_in_screen_test.dart
├── data/
│   └── repositories/
│       └── auth_repository_test.dart
└── mocks/
    └── mock_providers.dart
```

## Review Process

1. **Automated checks** must pass (CI/CD pipeline)
2. **Code review** by at least one maintainer
3. **Feedback** will be provided via GitHub comments
4. **Address feedback** by pushing additional commits
5. **Approval and merge** by maintainer

### Review Criteria

- Code quality and readability
- Adherence to architecture patterns
- Test coverage
- Performance considerations
- Security implications
- Documentation completeness

## Questions?

If you have questions about contributing:

1. Check existing [documentation](./docs/)
2. Search [existing issues](https://github.com/your-org/familiarise_mobile/issues)
3. Open a new issue with the `question` label

Thank you for contributing to Familiarise Mobile!
