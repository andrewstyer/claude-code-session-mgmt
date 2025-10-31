# Project Configuration

**Fill this out completely before using the Claude Code toolkit**

---

## 📋 Project Basics

**Project Name:** [Your project name]

**One-Line Description:** [What does this project do?]

**Project Owner/Team:** [Your name or team name]

**Repository URL:** [GitHub/GitLab URL, if applicable]

**Project Type:** [e.g., "web app", "mobile app", "CLI tool", "API service", "library"]

**Target Users:** [Who will use this?]

---

## 🛠 Tech Stack

### Primary Language

**Language:** [e.g., TypeScript, Python, Go, Rust, Java]

**Version:** [e.g., "Python 3.11+", "Node 20+", "Go 1.21+"]

### Framework

**Main Framework:** [e.g., React, Next.js, FastAPI, Express, Django]

**Version:** [e.g., "React 18", "Next.js 14", "FastAPI 0.104"]

### Database

**Database:** [e.g., SQLite, PostgreSQL, MongoDB, MySQL]

**ORM/Query Builder:** [e.g., Prisma, SQLAlchemy, GORM, or "raw SQL"]

### Testing Tools

**Unit Testing:** [e.g., Jest, Pytest, Go test, cargo test]

**E2E Testing:** [e.g., Playwright, Cypress, Maestro, or "none"]

**Mocking:** [e.g., jest.mock, unittest.mock, mockery, or "none"]

### Build & Dev Tools

**Package Manager:** [e.g., npm, yarn, pnpm, pip, go modules, cargo]

**Build Tool:** [e.g., Webpack, Vite, esbuild, tsc, cargo build]

**Type Checker:** [e.g., TypeScript, mypy, none]

**Linter:** [e.g., ESLint, pylint, golangci-lint, clippy]

**Formatter:** [e.g., Prettier, black, gofmt, rustfmt]

### Deployment

**Deployment Target:** [e.g., Vercel, AWS, Docker, App Store, npm registry]

**CI/CD:** [e.g., GitHub Actions, GitLab CI, none]

---

## ✅ Quality Gates

### Test Commands

**Run all tests:**
```bash
[e.g., npm test, pytest, go test ./..., cargo test]
```

**Run tests with coverage:**
```bash
[e.g., npm test -- --coverage, pytest --cov=., go test -cover ./...]
```

**Run specific test:**
```bash
[e.g., npm test -- path/to/test.test.ts, pytest tests/test_foo.py]
```

### Coverage Threshold

**Minimum Coverage:** [e.g., 80%, 90%, 75%]

**Measured by:** [e.g., lines, statements, branches, or "all three"]

### Type Checking

**Type check command:**
```bash
[e.g., npx tsc --noEmit, mypy src/, cargo check]
```

### Linting

**Lint command:**
```bash
[e.g., npm run lint, pylint src/, golangci-lint run]
```

**Auto-fix command:**
```bash
[e.g., npm run lint:fix, black src/, gofmt -w ., cargo fmt]
```

### Build

**Build command:**
```bash
[e.g., npm run build, python setup.py build, go build ./cmd/app, cargo build --release]
```

**Dev server command:**
```bash
[e.g., npm start, python manage.py runserver, go run ./cmd/app, cargo run]
```

---

## 📁 Project Structure

### Source Code

**Source directory:** [e.g., `src/`, `app/`, `pkg/`, `lib/`]

**Main entry point:** [e.g., `src/index.ts`, `app/main.py`, `cmd/app/main.go`]

### Tests

**Test directory:** [e.g., `tests/`, `__tests__/`, `src/**/*.test.ts`]

**Test file pattern:** [e.g., `*.test.ts`, `test_*.py`, `*_test.go`]

### Documentation

**Docs directory:** [e.g., `docs/`, `documentation/`, `wiki/`]

**Key docs:**
- Architecture: [path, e.g., `docs/architecture.md`]
- API Reference: [path, e.g., `docs/api.md`]
- Setup Guide: [path, e.g., `docs/setup.md`]

### Configuration Files

**List important config files:**
- [e.g., `tsconfig.json` - TypeScript configuration]
- [e.g., `pytest.ini` - Pytest configuration]
- [e.g., `.eslintrc.js` - ESLint rules]

---

## 🔄 Development Workflow

### TDD Approach

**Testing order:** [e.g., "E2E first, then unit tests", "Unit tests only", "TDD not used"]

**Test-first enforcement:** [e.g., "Strict - write test before code always", "Encouraged but flexible"]

### Commit Message Format

**Format:** [e.g., "Conventional Commits", "Semantic Commits", "Free-form"]

**Example:**
```
[e.g., "feat(auth): add OAuth login support"]
[e.g., "fix: resolve race condition in user service"]
```

### Branch Naming

**Convention:** [e.g., "feature/description", "type/description", "free-form"]

**Examples:**
- Feature: [e.g., `feature/user-authentication`]
- Bugfix: [e.g., `fix/login-error`]
- Refactor: [e.g., `refactor/database-client`]

### Code Review

**Required?** [Yes/No]

**Process:** [e.g., "PR review by 1 person", "Pair programming", "None - solo project"]

**Tools:** [e.g., GitHub PRs, GitLab MRs, None]

---

## 🎯 Project Phases

### Phase Breakdown

**How many phases?** [e.g., 4, 6, 8]

**List phases:**

1. **Phase 1:** [Name, e.g., "Foundation & Setup"]
   - Duration: [e.g., "1 week"]
   - Key deliverables: [e.g., "Project structure, core dependencies, CI/CD"]

2. **Phase 2:** [Name, e.g., "Core Features"]
   - Duration: [e.g., "2 weeks"]
   - Key deliverables: [e.g., "User authentication, database models"]

3. **Phase 3:** [Name, e.g., "Additional Features"]
   - Duration: [e.g., "2 weeks"]
   - Key deliverables: [e.g., "Dashboard, reporting, API endpoints"]

4. **Phase 4:** [Name, e.g., "Polish & Deploy"]
   - Duration: [e.g., "1 week"]
   - Key deliverables: [e.g., "Performance optimization, documentation, deploy to prod"]

*(Add more phases as needed)*

---

## 📊 Success Criteria

### MVP Definition

**What must be working for MVP?**

1. [e.g., "User can create account and log in"]
2. [e.g., "User can perform core action X"]
3. [e.g., "All critical paths have E2E tests"]
4. [e.g., "App deployed to staging environment"]

### Quality Standards

**Must have before MVP:**
- [ ] Test coverage > {{COVERAGE_THRESHOLD}}
- [ ] All tests passing
- [ ] No TypeScript/lint errors
- [ ] Documentation complete
- [ ] Performance meets targets (specify)

### Timeline

**Target MVP date:** [e.g., "8 weeks from start", "End of Q2 2024"]

**Target production date:** [e.g., "12 weeks from start", "End of Q3 2024"]

---

## 🚨 Critical Rules (Project-Specific)

### Non-Negotiable Rules

**List your project's critical rules that Claude Code must never violate:**

1. [e.g., "TDD is mandatory - write tests before code, always"]
2. [e.g., "All async functions must use Result<T> error handling pattern"]
3. [e.g., "Never commit code with failing tests"]
4. [e.g., "All API endpoints must have OpenAPI documentation"]
5. [e.g., "Security: Never log sensitive data (passwords, tokens, PII)"]

### Code Style Rules

1. [e.g., "Use explicit types - no 'any' in TypeScript"]
2. [e.g., "Functions should be < 50 lines"]
3. [e.g., "Use async/await, not .then() chains"]
4. [e.g., "All components must have prop types"]

---

## 🔐 Security & Compliance

**Any security requirements?** [e.g., "HIPAA compliant", "GDPR compliant", "SOC 2", "None"]

**Sensitive data handling:** [e.g., "All PII must be encrypted at rest", "No PII stored"]

**Authentication method:** [e.g., "OAuth 2.0", "JWT tokens", "Session cookies", "None"]

---

## 🌐 Deployment & Infrastructure

### Development Environment

**Local setup:**
```bash
[Commands to set up local environment, e.g.:]
npm install
cp .env.example .env
docker-compose up -d
npm run db:migrate
```

### Deployment Process

**How to deploy:**
```bash
[Commands or process, e.g.:]
npm run build
npm run deploy
# Or: git push → GitHub Actions → Auto-deploy
```

**Environments:**
- Development: [URL or "local only"]
- Staging: [URL, e.g., "https://staging.example.com"]
- Production: [URL, e.g., "https://example.com"]

---

## 📞 Resources & Contacts

### Documentation Links

- **Architecture diagram:** [URL or path]
- **API documentation:** [URL or path]
- **Design system/mockups:** [URL or path]
- **External APIs used:** [List with docs links]

### Team Contacts

- **Project owner:** [Name/email]
- **Tech lead:** [Name/email]
- **Code reviewer:** [Name/email]

### External Services

**List any external services used:**
- [e.g., "Stripe API for payments - docs at stripe.com/docs"]
- [e.g., "SendGrid for email - API key in .env"]
- [e.g., "AWS S3 for file storage - credentials in .env"]

---

## 🎨 Design & UX

**Design system used?** [e.g., "Material Design", "Custom design system in docs/", "None"]

**Component library?** [e.g., "React Native Paper", "MUI", "Custom components", "None"]

**Accessibility requirements?** [e.g., "WCAG 2.1 AA", "Basic accessibility", "None specified"]

---

## 📝 Notes

**Any additional context for Claude Code?**

[e.g., "This is a rewrite of legacy system - don't try to import old code"]
[e.g., "Performance is critical - optimize for speed over readability when necessary"]
[e.g., "This is a learning project - prioritize code clarity and best practices"]

---

## ✅ Configuration Checklist

**Before using this config, verify you've filled out:**

- [ ] Project basics (name, description, owner)
- [ ] Complete tech stack (language, framework, database, testing)
- [ ] Quality gates (test commands, coverage threshold, type checking)
- [ ] Project structure (source dir, test dir, docs dir)
- [ ] Development workflow (TDD approach, commit format, branching)
- [ ] Project phases (at least 4 phases with deliverables)
- [ ] Success criteria (MVP definition, quality standards)
- [ ] Critical rules (at least 3 non-negotiable rules)
- [ ] Deployment process (how to run locally, how to deploy)

**If all checked, you're ready to customize the workflow documents!**

See `SETUP.md` for the next steps.

---

**Configuration completed on:** [Date]

**Last updated:** [Date]
