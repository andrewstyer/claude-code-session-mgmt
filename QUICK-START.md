# Quick Start - Using This Toolkit

**Get started in 15 minutes**

---

## 🎯 What This Toolkit Provides

A complete **session management system** for Claude Code that ensures:
- Seamless handoffs between sessions (context survives)
- Quality gates enforced automatically
- Recovery procedures when things break
- Progress tracking that never gets lost

---

## ⚡ Super Quick Start (15 minutes)

### 1. Copy Toolkit (2 minutes)

```bash
# Go to your project directory
cd /path/to/your-project

# Copy all toolkit files
cp -r /Users/andrewstyer/dev/dev-toolkit/* .

# Verify files copied
ls
# You should see: START-HERE.md, CONTINUE-SESSION.md, END-SESSION.md, etc.
```

### 2. Fill Out Config (5 minutes)

Open `PROJECT-CONFIG.md` and fill in the essentials:

**Must fill out:**
- Project name
- One-line description
- Tech stack (language, framework, database)
- Commands (test, build, type-check)
- Coverage threshold (e.g., 80%)
- Directory structure (source, tests, docs)

**Can skip for now:**
- Detailed phases
- Code style rules
- Deployment details

### 3. Customize Core Files (5 minutes)

**Option A: Quick automated replacement (if using Node/npm):**

```bash
# Use find & replace in your editor
# Replace these first (most important):
{{PROJECT_NAME}}              → YourProjectName
{{PROJECT_DESCRIPTION}}       → Your one-line description
{{TEST_COMMAND}}             → npm test (or your test command)
{{COVERAGE_COMMAND}}         → npm test -- --coverage
{{TYPE_CHECK_COMMAND}}       → npx tsc --noEmit (or your type check)
{{BUILD_COMMAND}}            → npm run build (or your build)
{{COVERAGE_THRESHOLD}}       → 80 (or your threshold)
```

**Option B: Follow SETUP.md (more thorough):**

```bash
# Read full customization guide
cat SETUP.md

# Follow steps 3-10
```

### 4. Install Git Hooks (1 minute)

```bash
# Make setup script executable (if not already)
chmod +x git-hooks/setup-git-hooks.sh

# Install the hook
./git-hooks/setup-git-hooks.sh
```

### 5. Test It Works (2 minutes)

```bash
# Test your commands work
{{YOUR_TEST_COMMAND}}
{{YOUR_BUILD_COMMAND}}

# Try a test commit
git add .
git commit -m "test: verify git hook"
# Should prompt about SESSION-STATUS.md
```

---

## 🚀 Start First Session

### Give Claude Code This Prompt:

```
I need you to build {{YOUR_PROJECT_NAME}} following the comprehensive
implementation plan in this repository.

START BY READING: START-HERE.md

This is {{YOUR_PROJECT_DESCRIPTION}}. You'll be working autonomously
through the implementation using Test-Driven Development.

Key Context:
- Tech stack: {{YOUR_TECH_STACK}}
- Quality gates: >{{YOUR_THRESHOLD}}% coverage, all tests passing
- Update SESSION-STATUS.md at the end of EVERY session

Your First Tasks:
1. Read START-HERE.md completely
2. Read architecture/planning documents
3. Create TodoWrite todos for all phases
4. Begin Task 1.1.1

Let's begin! Read START-HERE.md and start implementing.
```

*(Replace {{PLACEHOLDERS}} with your actual values)*

---

## 📋 Daily Usage Pattern

### Starting a Session

```bash
# If first session ever:
[Use "First Session Prompt" from PROMPTS.md]

# If continuing from previous session:
[Use "Continuing Session Prompt" from PROMPTS.md]
```

### Ending a Session

```bash
# Always before closing:
[Use "End Session Prompt" from PROMPTS.md]
```

### If Something Breaks

```bash
# Use recovery prompt:
[Use "Recovery Prompt" from PROMPTS.md]
```

---

## 🎯 The Four Prompts You Need

**Copy these from PROMPTS.md after filling in your project details:**

1. **First Session Prompt** - Starting from scratch (use once)
2. **Continuing Session Prompt** - Picking up work (use every continuing session)
3. **End Session Prompt** - Before stopping (use EVERY session)
4. **Recovery Prompt** - When stuck (use as needed)

---

## ✅ Minimum Viable Setup

**If you're in a hurry, these are the MUST-DO items:**

1. ✅ Fill out PROJECT-CONFIG.md (at least the basics)
2. ✅ Replace these in all files:
   - `{{PROJECT_NAME}}`
   - `{{TEST_COMMAND}}`
   - `{{COVERAGE_COMMAND}}`
   - `{{TYPE_CHECK_COMMAND}}`
   - `{{BUILD_COMMAND}}`
   - `{{COVERAGE_THRESHOLD}}`
3. ✅ Install git hooks
4. ✅ Customize First Session Prompt in PROMPTS.md
5. ✅ Test commands work

**Everything else can be refined later.**

---

## 🆘 Common Issues

### "I don't know what commands to use"

**If Node/npm project:**
```
{{TEST_COMMAND}}         → npm test
{{COVERAGE_COMMAND}}     → npm test -- --coverage
{{TYPE_CHECK_COMMAND}}   → npx tsc --noEmit
{{BUILD_COMMAND}}        → npm run build
```

**If Python project:**
```
{{TEST_COMMAND}}         → pytest
{{COVERAGE_COMMAND}}     → pytest --cov=.
{{TYPE_CHECK_COMMAND}}   → mypy src/
{{BUILD_COMMAND}}        → python setup.py build
```

**If Go project:**
```
{{TEST_COMMAND}}         → go test ./...
{{COVERAGE_COMMAND}}     → go test -cover ./...
{{TYPE_CHECK_COMMAND}}   → go vet ./...
{{BUILD_COMMAND}}        → go build ./cmd/app
```

### "Too many placeholders to replace"

**Focus on the critical 10:**
1. `{{PROJECT_NAME}}`
2. `{{PROJECT_DESCRIPTION}}`
3. `{{TEST_COMMAND}}`
4. `{{COVERAGE_COMMAND}}`
5. `{{TYPE_CHECK_COMMAND}}`
6. `{{BUILD_COMMAND}}`
7. `{{COVERAGE_THRESHOLD}}`
8. `{{SOURCE_DIR}}`
9. `{{DOCS_DIR}}`
10. `{{TECH_STACK}}`

Replace these first, refine others later.

### "Git hook isn't working"

```bash
# Check if installed
ls -la .git/hooks/pre-commit

# If not there, reinstall
./git-hooks/setup-git-hooks.sh

# Make sure it's executable
chmod +x .git/hooks/pre-commit

# Test it
git add .
git commit -m "test"
```

---

## 💡 Tips for Success

1. **Start minimal, refine later** - Get the basics working first
2. **Test each command** - Before using, make sure commands work
3. **Use PROMPTS.md** - Copy-paste the prompts, don't write from scratch
4. **Update SESSION-STATUS.md religiously** - This is your external memory
5. **Read END-SESSION.md before stopping** - Every single time

---

## 📚 Full Documentation

**If you want the full picture, read these in order:**

1. `README.md` - Overview of what this toolkit is
2. `PROJECT-CONFIG.md` - Fill this out completely
3. `SETUP.md` - Step-by-step customization guide
4. `PLACEHOLDER-REFERENCE.md` - All placeholders explained
5. `PROMPTS.md` - The four prompts you'll use daily

**For daily use:**
- `START-HERE.md` - Give to Claude on first session
- `CONTINUE-SESSION.md` - Claude reads on continuing sessions
- `END-SESSION.md` - Claude reads before ending (mandatory)
- `SESSION-STATUS.md` - Updated every session
- `RECOVERY.md` - When things go wrong

---

## 🎉 You're Ready!

**Once you've done the minimum viable setup:**

1. Give Claude Code the First Session Prompt
2. Watch it work autonomously
3. Before it ends, make sure it reads END-SESSION.md
4. Next session, use Continuing Session Prompt

**That's it!**

---

**Questions? See README.md for full documentation** 🚀
