# Claude Code Session Management Toolkit

**Reusable session management and workflow system for Claude Code projects**

---

## 🎯 What Is This?

This toolkit provides a complete session management system for working with Claude Code as your development partner. It ensures:

- **Seamless handoffs** between sessions (even when context is lost)
- **Quality gates** enforced at every step
- **Recovery procedures** when things go wrong
- **Consistent workflow** across all sessions
- **Progress tracking** that survives context loss

---

## 📦 What's Included

### Core Workflow Documents

| File | Purpose | When to Use |
|------|---------|-------------|
| `START-HERE.md` | First session comprehensive onboarding | Once, at project start |
| `CONTINUE-SESSION.md` | Quick 2-minute context loading | Every continuing session |
| `END-SESSION.md` | Mandatory session handoff checklist | Before ending ANY session |
| `SESSION-STATUS.md` | Living progress tracker | Updated every session |
| `RECOVERY.md` | Comprehensive troubleshooting guide | When stuck or broken |
| `PROMPTS.md` | Copy-paste prompts for each session type | Reference for starting sessions |

### Setup & Configuration

| File | Purpose |
|------|---------|
| `SETUP.md` | How to adapt this toolkit to your project |
| `PROJECT-CONFIG.md` | Template for project-specific configuration |
| `git-hooks/pre-commit` | Git hook that reminds to update SESSION-STATUS.md |
| `git-hooks/setup-git-hooks.sh` | Script to install git hooks |

---

## 🚀 Quick Start

### For New Projects

1. **Copy toolkit to your project:**
   ```bash
   cp -r /Users/andrewstyer/dev/dev-toolkit/* /path/to/your-project/
   ```

2. **Customize for your project:**
   ```bash
   cd /path/to/your-project
   # Edit PROJECT-CONFIG.md with your project details
   # Follow SETUP.md instructions
   ```

3. **Install git hooks:**
   ```bash
   ./git-hooks/setup-git-hooks.sh
   ```

4. **Start first session:**
   ```bash
   # Give Claude Code the "First Session Prompt" from PROMPTS.md
   # Claude will read START-HERE.md and begin implementation
   ```

---

## 📋 How It Works

### Session Lifecycle

```
┌─────────────────────────────────────────────────┐
│  START: First Session Prompt                    │
│  • Claude reads START-HERE.md                   │
│  • Comprehensive onboarding (30-60 min)         │
│  • Begins implementation                        │
└─────────────────┬───────────────────────────────┘
                  │
                  ↓
┌─────────────────────────────────────────────────┐
│  CONTINUE: Continuing Session Prompt            │
│  • Claude reads CONTINUE-SESSION.md (2 min)     │
│  • Claude reads SESSION-STATUS.md               │
│  • Picks up where last session left off        │
└─────────────────┬───────────────────────────────┘
                  │
                  ↓
┌─────────────────────────────────────────────────┐
│  WORK: Implementation                           │
│  • Follow TDD workflow                          │
│  • Run quality checks frequently                │
│  • If stuck → RECOVERY.md                       │
│  • Update TodoWrite as you go                   │
└─────────────────┬───────────────────────────────┘
                  │
                  ↓
┌─────────────────────────────────────────────────┐
│  END: End Session Prompt                        │
│  • Claude reads END-SESSION.md                  │
│  • Runs quality checks (mandatory)              │
│  • Updates SESSION-STATUS.md                    │
│  • Commits everything                           │
│  • Provides session summary                     │
└─────────────────┬───────────────────────────────┘
                  │
                  ↓ (loop back to CONTINUE)
```

### When Things Go Wrong

```
Problem Detected
    ↓
Read RECOVERY.md
    ↓
Find Your Scenario (9 common scenarios covered)
    ↓
Follow Recovery Steps
    ↓
Verify Quality Checks Pass
    ↓
Update SESSION-STATUS.md
    ↓
Continue Normal Workflow
```

---

## 🎯 Key Benefits

### 1. Survives Context Loss
- Claude Code loses context between sessions
- SESSION-STATUS.md acts as external memory
- Continuing sessions load context in 2-5 minutes

### 2. Enforces Quality
- Mandatory quality checks before moving forward
- TDD workflow enforced
- Git pre-commit hook reminds to update status

### 3. Provides Recovery Paths
- 9 common failure scenarios documented
- Step-by-step recovery procedures
- Prevention tips to avoid problems

### 4. Maintains Momentum
- Clear "next steps" always documented
- No time wasted figuring out what to do
- Consistent workflow across sessions

---

## 📚 Document Overview

### START-HERE.md (First Session Only)
**Purpose:** Comprehensive onboarding for Claude Code

**Contains:**
- Project overview and mission
- Required reading list
- Architecture overview
- Critical rules (TDD, quality gates, etc.)
- Quick start instructions
- Session handoff instructions

**Customize with:** Your project name, tech stack, architecture decisions, quality gates

---

### CONTINUE-SESSION.md (Every Continuing Session)
**Purpose:** Quick 2-minute context loading

**Contains:**
- Session start checklist (git log, git status, read SESSION-STATUS.md)
- Critical rules reminder
- Quick reference to key docs
- TDD workflow refresher
- Quality gate commands

**Customize with:** Your project's key documentation paths, quality commands

---

### END-SESSION.md (Before Ending ANY Session)
**Purpose:** Mandatory session handoff checklist

**Contains:**
- Step 1: Run quality checks (tests, TypeScript, build, git)
- Step 2: Update SESSION-STATUS.md (all sections)
- Step 3: Commit everything (code + status doc)
- Step 4: Provide session summary (what done, what's next, blockers, test status)

**Customize with:** Your project's specific quality checks

---

### SESSION-STATUS.md (Updated Every Session)
**Purpose:** Living progress tracker that survives context loss

**Contains:**
- Quick context for new session (current phase, next task)
- Completed work (tasks checked off, git commits listed)
- Current work (last commit, next immediate steps)
- Known issues/blockers
- Test status (exact numbers)
- Architecture decisions made
- Notes for next developer
- Session handoff checklist

**Customize with:** Your project's phases, tasks, test commands

---

### RECOVERY.md (When Stuck or Broken)
**Purpose:** Comprehensive troubleshooting guide

**Contains:**
- Quick diagnosis commands
- 9 common failure scenarios:
  1. Tests failing
  2. TypeScript errors
  3. App won't build
  4. E2E tests failing
  5. Coverage dropped
  6. Git messy state
  7. Lost track of tasks
  8. Stuck too long
  9. SESSION-STATUS.md out of date
- Emergency procedures (reset to last good state)
- When to ask for help
- Prevention tips

**Customize with:** Your project's tech stack, testing tools, build commands

---

### PROMPTS.md (Reference for Starting Sessions)
**Purpose:** Copy-paste prompts for each session type

**Contains:**
- First Session Prompt (starting from scratch)
- Continuing Session Prompt (picking up previous work)
- End Session Prompt (mandatory handoff)
- Recovery Prompt (when things go wrong)
- Decision tree (which prompt to use?)
- Customization tips

**Customize with:** Your project name, tech stack, timeline, specific rules

---

## 🔧 Customization Guide

### Essential Customizations

**1. Project Information:**
- Project name
- Tech stack
- Architecture pattern
- Development timeline

**2. Quality Gates:**
- Test commands
- Coverage thresholds
- Linting/type checking commands
- Build commands

**3. Documentation Paths:**
- Where are planning docs?
- Where are architecture docs?
- Where are component specs?
- Where is sample data?

**4. Workflow Specifics:**
- TDD approach (E2E first? Unit first?)
- Testing tools (Jest, Vitest, Playwright, Maestro?)
- Deployment process
- Code review process

### Optional Customizations

- Add project-specific red flags
- Add custom recovery scenarios
- Add team conventions
- Add deployment checklists

---

## 🏗️ Project Structure

**Where to put these files in your project:**

```
your-project/
├── README.md                    ← Project overview
├── START-HERE.md                ← First session onboarding
├── CONTINUE-SESSION.md          ← Continuing session brief
├── END-SESSION.md               ← End session checklist
├── SESSION-STATUS.md            ← Progress tracker
├── RECOVERY.md                  ← Troubleshooting guide
├── PROMPTS.md                   ← Session prompts reference
│
├── PROJECT-CONFIG.md            ← Your project configuration
│
├── git-hooks/
│   ├── pre-commit               ← Git hook
│   └── setup-git-hooks.sh       ← Installation script
│
├── docs/
│   ├── architecture/            ← Your architecture docs
│   ├── planning/                ← Your planning docs
│   └── guides/                  ← Your how-to guides
│
└── src/                         ← Your source code
```

**These files live at the root** for easy access by Claude Code.

---

## 🎓 Best Practices

### For Humans (You)

**Starting a new project:**
1. Copy this toolkit to your project root
2. Customize PROJECT-CONFIG.md with your details
3. Run through SETUP.md to adapt all documents
4. Install git hooks
5. Give Claude Code the First Session Prompt

**Between sessions:**
1. Review SESSION-STATUS.md to see progress
2. Use Continuing Session Prompt to start next session
3. Use End Session Prompt when stopping

**When things go wrong:**
1. Give Claude Code the Recovery Prompt
2. Claude will use RECOVERY.md to troubleshoot
3. Review the documented blocker in SESSION-STATUS.md
4. Provide guidance if needed

### For Claude Code

**First session:**
1. Read START-HERE.md completely
2. Read project architecture docs
3. Create TodoWrite todos for all phases
4. Begin implementation with TDD

**Continuing sessions:**
1. Read CONTINUE-SESSION.md (2 min)
2. Read SESSION-STATUS.md (context)
3. Run verification checks
4. Continue from "Next immediate steps"

**Before ending:**
1. Read END-SESSION.md
2. Run all quality checks
3. Update SESSION-STATUS.md completely
4. Commit everything
5. Provide session summary

**If stuck:**
1. Read RECOVERY.md
2. Find your scenario
3. Follow recovery steps
4. Document what happened in SESSION-STATUS.md

---

## 🚨 Common Pitfalls

### Don't Skip Session Handoff
**Problem:** Claude Code starts next session with no context
**Solution:** Use END-SESSION.md checklist every time (git hook helps)

### Don't Let SESSION-STATUS.md Get Stale
**Problem:** Progress is lost, next session wastes time
**Solution:** Update immediately after completing tasks (not at end)

### Don't Skip Quality Checks
**Problem:** Broken code accumulates, becomes hard to fix
**Solution:** Run checks after every small change, fix immediately

### Don't Rationalize Around TDD
**Problem:** Tests written after code (or not at all)
**Solution:** Follow RED-GREEN-REFACTOR religiously

---

## 📊 Success Metrics

**You'll know this toolkit is working when:**

- ✅ Each session starts with clear context (< 5 minutes)
- ✅ No time wasted figuring out what to do next
- ✅ Quality gates pass consistently
- ✅ Problems are caught early (tests fail immediately)
- ✅ Recovery from issues is quick (< 30 minutes)
- ✅ Progress is never lost between sessions
- ✅ Claude Code works autonomously for hours

**If these aren't true, check:**
- Is SESSION-STATUS.md being updated every session?
- Are quality checks being run frequently?
- Is TDD being followed?
- Are recovery procedures being used when stuck?

---

## 🤝 Contributing

**Found an improvement to this toolkit?**

Common improvements:
- Additional recovery scenarios
- Better prompts
- Clearer customization instructions
- New quality gate examples
- Better workflow diagrams

---

## 📞 Support

**Questions about using this toolkit?**

1. Read SETUP.md for customization instructions
2. Check PROMPTS.md for session prompt templates
3. Review RECOVERY.md if something's not working

---

## 🎉 Example Projects Using This Toolkit

- **Health Narrative** - Patient health record app (React Native + Expo)
  - Location: `/Users/andrewstyer/dev/healthnarrative2`
  - Shows: Full implementation with all toolkit documents

*(Add your projects here as you use this toolkit)*

---

## 📄 License

This toolkit is free to use for any project. Customize as needed.

---

**Let's build better software with Claude Code!** 🚀
