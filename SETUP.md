# Setup Guide - Adapting This Toolkit to Your Project

**Follow these steps to customize the toolkit for your specific project**

---

## 🎯 Overview

This toolkit needs to be customized for your project before use. The customization process takes **30-60 minutes** and involves:

1. Filling out PROJECT-CONFIG.md with your project details
2. Customizing the workflow documents with your specifics
3. Setting up git hooks
4. Testing the workflow

---

## Step 1: Copy Toolkit to Your Project (5 minutes)

```bash
# From your project root directory
cp -r /Users/andrewstyer/dev/dev-toolkit/* .

# Verify files copied
ls -la
# You should see:
# - START-HERE.md
# - CONTINUE-SESSION.md
# - END-SESSION.md
# - SESSION-STATUS.md
# - RECOVERY.md
# - PROMPTS.md
# - PROJECT-CONFIG.md
# - SETUP.md
# - git-hooks/
```

---

## Step 2: Fill Out PROJECT-CONFIG.md (10 minutes)

Open `PROJECT-CONFIG.md` and fill in all sections:

### Required Information

**Project Basics:**
- [ ] Project name
- [ ] One-line description
- [ ] Project owner/team
- [ ] Repository URL (if applicable)

**Tech Stack:**
- [ ] Primary language (TypeScript, Python, Go, etc.)
- [ ] Framework (React, Next.js, FastAPI, etc.)
- [ ] Database (SQLite, PostgreSQL, MongoDB, etc.)
- [ ] Testing tools (Jest, Pytest, Go test, etc.)
- [ ] Build tools (Webpack, Vite, cargo, etc.)

**Quality Gates:**
- [ ] Test command (e.g., `npm test`)
- [ ] Coverage threshold (e.g., >80%)
- [ ] Type checking command (e.g., `npx tsc --noEmit`)
- [ ] Linting command (e.g., `npm run lint`)
- [ ] Build command (e.g., `npm run build`)

**Project Structure:**
- [ ] Source code directory (e.g., `src/`, `app/`, `pkg/`)
- [ ] Test directory (e.g., `tests/`, `__tests__/`)
- [ ] Documentation directory (e.g., `docs/`)

**Development Workflow:**
- [ ] TDD approach (E2E first, unit first, both)
- [ ] Commit message format
- [ ] Branch naming convention
- [ ] Code review process (if applicable)

---

## Step 3: Customize START-HERE.md (10 minutes)

Open `START-HERE.md` and replace all `{{PLACEHOLDER}}` markers:

### Search and Replace

Use your editor's find/replace to update these:

```bash
# Project-specific
{{PROJECT_NAME}}                 → Your project name
{{PROJECT_DESCRIPTION}}          → One-line description
{{TECH_STACK}}                   → Your tech stack list
{{ARCHITECTURE_PATTERN}}         → Your architecture (e.g., "MVC", "Clean Architecture")

# Paths
{{SOURCE_DIR}}                   → Your source directory (e.g., "src/")
{{DOCS_DIR}}                     → Your docs directory (e.g., "docs/")
{{TEST_DIR}}                     → Your test directory (e.g., "tests/")

# Commands
{{TEST_COMMAND}}                 → Your test command (e.g., "npm test")
{{TYPE_CHECK_COMMAND}}           → Your type check command (e.g., "npx tsc --noEmit")
{{BUILD_COMMAND}}                → Your build command (e.g., "npm run build")
{{COVERAGE_COMMAND}}             → Your coverage command (e.g., "npm test -- --coverage")

# Timeline
{{IMPLEMENTATION_TIMELINE}}      → Your timeline (e.g., "8 weeks to MVP")
{{PHASE_COUNT}}                  → Number of phases (e.g., "6")
```

### Manual Customization

**Section: "Your Mission"**
- Update with your project's success criteria
- Update with your project's specific goals

**Section: "Required Reading"**
- List your actual documentation files
- Adjust reading order for your project

**Section: "Architecture Overview"**
- Update project structure to match yours
- Update tech stack details
- Update data flow diagram

**Section: "Critical Rules"**
- Keep or customize the 5 critical rules
- Add project-specific rules if needed

---

## Step 4: Customize CONTINUE-SESSION.md (5 minutes)

Open `CONTINUE-SESSION.md` and update:

### Commands Section

Replace with your actual commands:

```bash
# Old (generic)
npm test
npm start

# New (your project)
python -m pytest
python manage.py runserver
```

### Quick Reference Section

Update paths to your actual documentation:

```bash
# Old
- Architecture: `docs/plans/architecture.md`

# New
- Architecture: `docs/architecture/system-design.md`
```

---

## Step 5: Customize END-SESSION.md (5 minutes)

Open `END-SESSION.md` and update:

### Step 1: Quality Checks

Replace commands with yours:

```bash
# Replace generic commands
npm test -- --coverage
maestro test .maestro/
npx tsc --noEmit

# With your commands
pytest --cov=. --cov-report=html
mypy src/
cargo build
```

### Coverage Threshold

Update if different from 80%:

```bash
# Old
# Must show: >80% coverage

# New (if using 90%)
# Must show: >90% coverage
```

---

## Step 6: Customize SESSION-STATUS.md (10 minutes)

Open `SESSION-STATUS.md` and update:

### Quick Context Section

Replace placeholders:

```markdown
**What we're building:** {{PROJECT_DESCRIPTION}}

**Current status:** [BRIEF SUMMARY]

**Next task:** Task [X.X.X] from `{{TASK_BREAKDOWN_DOC}}`
```

### Completed Work Section

Replace with your actual phases/tasks:

```markdown
### Phase 1: {{PHASE_1_NAME}} ✅ COMPLETE
- [x] Task 1.1.1: {{TASK_DESCRIPTION}}
- [x] Task 1.1.2: {{TASK_DESCRIPTION}}
```

### Commands Reference Section

Update all commands to match your project:

```bash
# Old
npm start
npm test

# New
docker-compose up
pytest tests/
```

---

## Step 7: Customize RECOVERY.md (10 minutes)

Open `RECOVERY.md` and update:

### Quick Diagnosis Section

Replace commands with yours:

```bash
# Old
npm test -- --coverage
npx tsc --noEmit
npm start

# New
go test ./...
golangci-lint run
go build ./cmd/app
```

### Scenario-Specific Commands

Update each scenario with your commands:

**Scenario 1: Tests failing**
- Update test commands
- Update import error fixes (e.g., Python imports vs TypeScript imports)

**Scenario 2: Type errors**
- Update for your language (TypeScript, Python, Go, etc.)
- Update type checking commands

**Scenario 3: App won't build**
- Update build commands
- Update cache clearing commands

---

## Step 8: Customize PROMPTS.md (10 minutes)

Open `PROMPTS.md` and update all four prompts:

### First Session Prompt

Replace placeholders:

```
I need you to build the {{PROJECT_NAME}} {{PROJECT_TYPE}} following the
comprehensive implementation plan in this repository.

Key Context:
- Tech stack: {{TECH_STACK}}
- Architecture: {{ARCHITECTURE_PATTERN}}
- Testing: {{TESTING_APPROACH}}
- Timeline: {{IMPLEMENTATION_TIMELINE}}
```

### All Prompts

Update quality check commands in all prompts:

```bash
# Old
npm test -- --coverage
maestro test .maestro/
npx tsc --noEmit

# New
pytest --cov=.
mypy src/
black --check src/
```

---

## Step 9: Set Up Git Hooks (5 minutes)

### Option A: Use Provided Hook (Recommended)

```bash
# Install the pre-commit hook
cd git-hooks
./setup-git-hooks.sh
cd ..

# Test it
git add .
git commit -m "test: verify git hook works"
# Should prompt about SESSION-STATUS.md
```

### Option B: Customize Hook First

Open `git-hooks/pre-commit` and update:

- Test commands (if not npm/node project)
- Type check commands
- File patterns to watch

Then install:

```bash
cd git-hooks
./setup-git-hooks.sh
cd ..
```

---

## Step 10: Verify Setup (10 minutes)

### Checklist

- [ ] PROJECT-CONFIG.md completely filled out
- [ ] START-HERE.md has no {{PLACEHOLDER}} markers
- [ ] CONTINUE-SESSION.md commands match your project
- [ ] END-SESSION.md quality checks match your project
- [ ] SESSION-STATUS.md structure matches your phases
- [ ] RECOVERY.md commands match your project
- [ ] PROMPTS.md has your project details
- [ ] Git hooks installed and tested

### Test Commands

Run these to verify your customizations are correct:

```bash
# Test commands work
{{YOUR_TEST_COMMAND}}
{{YOUR_TYPE_CHECK_COMMAND}}
{{YOUR_BUILD_COMMAND}}

# Check file paths exist
ls {{SOURCE_DIR}}
ls {{DOCS_DIR}}
ls {{TEST_DIR}}

# Verify git hook installed
ls -la .git/hooks/pre-commit
```

---

## Step 11: Create Your First Session (5 minutes)

### Update README.md

Add a "Quick Start for Developers" section pointing to the workflow docs:

```markdown
## 🚀 Quick Start for Developers

**📋 For Claude Code Users:** See `PROMPTS.md` for ready-to-use session prompts

### First-Time Developer (Starting from Scratch)

**Read this first:** `START-HERE.md`

### Continuing Developer (Work Already Started)

**Read this first:** `CONTINUE-SESSION.md` (2-minute brief)

**Then read:** `SESSION-STATUS.md` (see what's done, what's next)

### Ending Any Session (Required Before Stopping)

**Read this before ending:** `END-SESSION.md` (mandatory checklist)
```

### Test First Session

Give Claude Code the First Session Prompt from `PROMPTS.md`:

```
I need you to build the {{YOUR_PROJECT_NAME}} ...
[Copy from PROMPTS.md]
```

Verify Claude:
1. Reads START-HERE.md
2. Creates TodoWrite todos
3. Begins implementation

---

## 🎯 Customization Checklist

### Essential (Must Do)

- [ ] Filled out PROJECT-CONFIG.md completely
- [ ] Replaced all {{PLACEHOLDER}} markers in START-HERE.md
- [ ] Updated commands in CONTINUE-SESSION.md
- [ ] Updated quality checks in END-SESSION.md
- [ ] Updated phases/tasks in SESSION-STATUS.md
- [ ] Updated commands in RECOVERY.md
- [ ] Updated prompts in PROMPTS.md
- [ ] Installed git hooks
- [ ] Tested that commands work
- [ ] Added Quick Start section to README.md

### Optional (Nice to Have)

- [ ] Added project-specific recovery scenarios
- [ ] Customized commit message format
- [ ] Added deployment checklist
- [ ] Added team conventions
- [ ] Created custom quality gates
- [ ] Added project-specific red flags

---

## 🚀 You're Ready!

Once the checklist is complete, you can:

1. **Start first session:** Give Claude Code the First Session Prompt
2. **Continue sessions:** Use Continuing Session Prompt
3. **End sessions:** Use End Session Prompt (mandatory)
4. **Recover from issues:** Give Claude the Recovery Prompt

---

## 💡 Tips for Success

### Keep It Updated

As your project evolves:
- Update phases in SESSION-STATUS.md
- Add new recovery scenarios to RECOVERY.md
- Adjust quality gates if standards change
- Update documentation paths

### Enforce Session Handoff

The git hook helps, but also:
- Set calendar reminders to use END-SESSION.md
- Make it a ritual: "Before I close this tab..."
- Review SESSION-STATUS.md at start of each session

### Document Lessons Learned

When you discover:
- New recovery scenarios
- Better workflow patterns
- Project-specific gotchas

Add them to RECOVERY.md or your project docs.

---

## 🆘 Troubleshooting Setup

### "I don't know what to put for {{PLACEHOLDER}}"

**Common issues:**

**{{ARCHITECTURE_PATTERN}}** - If you don't know yet:
- Put "To be determined" or "Standard MVC" or "Modular monolith"
- Update later when architecture solidifies

**{{IMPLEMENTATION_TIMELINE}}** - If unknown:
- Estimate based on scope: "6-8 weeks" or "3 months to MVP"
- Adjust later as needed

**{{PHASE_COUNT}}** - If no phases defined:
- Break project into logical phases: Setup → Core → Features → Polish
- Start with 4-6 phases

### "My project doesn't use npm/node"

**No problem!** Just replace commands:

**Python:**
```bash
pytest                   # instead of npm test
mypy src/               # instead of npx tsc
black --check src/      # instead of npm run lint
```

**Go:**
```bash
go test ./...           # instead of npm test
golangci-lint run       # instead of npx tsc
go build ./cmd/app      # instead of npm run build
```

**Rust:**
```bash
cargo test              # instead of npm test
cargo clippy            # instead of npx tsc
cargo build             # instead of npm run build
```

### "I don't have E2E tests"

Update END-SESSION.md and PROMPTS.md:

```bash
# Remove or comment out
# maestro test .maestro/

# Or replace with your E2E tool
# playwright test
# cypress run
```

---

## ✅ Setup Complete!

**Congratulations!** Your project now has:

- ✅ Complete session management system
- ✅ Quality gates enforced
- ✅ Recovery procedures documented
- ✅ Context preservation between sessions
- ✅ Git hooks to prevent forgetting updates

**Now start your first session with Claude Code!** 🚀
