# End Session - {{PROJECT_NAME}} Development

**Use this checklist before ending ANY development session**

---

## 🛑 MANDATORY SESSION HANDOFF PROCESS

**DO NOT skip these steps.** The next developer depends on this handoff being complete and accurate.

---

## Step 1: Run Quality Checks (5 minutes)

Run these commands and verify all pass:

```bash
# 1. Verify all tests pass
{{TEST_COMMAND}}
# ✅ Must show: all tests passing
# ❌ If failing: Fix tests before ending session

# 2. Verify coverage meets threshold
{{COVERAGE_COMMAND}}
# ✅ Must show: >{{COVERAGE_THRESHOLD}}% coverage
# ❌ If failing: Write missing tests before ending session

# 3. Verify no type/lint errors
{{TYPE_CHECK_COMMAND}}
# ✅ Must show: no errors
# ❌ If errors: Fix before ending session

# 4. Verify build succeeds
{{BUILD_COMMAND}}
# ✅ Must show: successful build
# ❌ If failing: Fix build errors before ending session

# 5. Check git status
git status
# ✅ Should be clean or have only intentional uncommitted changes
# ❌ If unexpected changes: Review and commit or discard
```

**If ANY check fails, fix it before continuing. Do not proceed with uncommitted broken code.**

**⚠️ If quality checks are failing and you can't fix them:** See `RECOVERY.md` for troubleshooting steps.

---

## Step 2: Update SESSION-STATUS.md (5 minutes)

Open `SESSION-STATUS.md` and update:

### At the top:
- [ ] **"Last Updated"** - Today's date (YYYY-MM-DD format)
- [ ] **"Current Phase"** - Which phase are you in?
- [ ] **"Last Developer"** - Your name or "Claude Code"
- [ ] **"Current status"** - One sentence summary of where things stand
- [ ] **"Next task"** - Specific next task number

### In "Completed Work" section:
- [ ] **Check off completed tasks** - Mark [x] for all tasks you finished this session
- [ ] **Add git commit hashes** - List your commits with short descriptions
- [ ] **Update test counts** - Update "Test status" with actual numbers

### In "Current Work" section:
- [ ] **Update "Last commit"** - Paste your most recent commit hash and message
- [ ] **Update "Next immediate steps"** - List 3-5 specific next steps for continuation
- [ ] **Update "Working directory status"** - Note if there are intentional uncommitted changes

### In "Known Issues / Blockers" section:
- [ ] **Add any blockers** - Document anything that's stuck or needs attention
- [ ] **Add warnings** - Note anything the next developer should be aware of

### In "Test Status" section:
- [ ] **Update test numbers** - Exact pass/fail counts and coverage %

### In "Notes for Next Developer" section:
- [ ] **Add important context** - Anything non-obvious about what you did
- [ ] **Explain decisions** - Why you made certain technical choices
- [ ] **Document gotchas** - Anything tricky or confusing

---

## Step 3: Commit Everything (2 minutes)

```bash
# If you have uncommitted code changes, commit them first
git add .
git commit -m "{{COMMIT_FORMAT_EXAMPLE}}

- Detail what you implemented
- Note any important decisions
- Reference tests added"

# Now commit the SESSION-STATUS.md file
git add SESSION-STATUS.md
git commit -m "docs: update session status after [brief work description]"

# Verify commits
git log -3 --oneline
```

**Verification:**
- [ ] All code changes committed?
- [ ] SESSION-STATUS.md committed?
- [ ] Commit messages descriptive?
- [ ] No uncommitted changes remaining? (run `git status` to verify)

---

## Step 4: Provide Session Summary

**Answer these questions to complete the handoff:**

### What was accomplished this session?
```
Example:
- Completed Task 2.1.1: Created data loading test (RED phase)
- Completed Task 2.1.2: Implemented data service
- Completed Task 2.1.3: Created data hook
- All tests passing, coverage at {{COVERAGE_THRESHOLD}}%+
```

### What's the next immediate task?
```
Example:
Next: Task 2.1.4 - Create main screen component
Location: {{SOURCE_DIR}}/screens/MainScreen.{{FILE_EXTENSION}}
Reference: {{TASK_BREAKDOWN_DOC}} (Phase 2, Section 2.1)
```

### Are there any blockers or warnings?
```
Example:
⚠️ Warning: Data structure differs slightly from spec in one field.
Added null check in service.

✅ No blockers - ready to continue
```

**📘 If you have blockers:** Document them in SESSION-STATUS.md and see `RECOVERY.md` for troubleshooting steps.

### Test status summary?
```
Example:
Tests: 34 passing, 0 failing (coverage: {{COVERAGE_THRESHOLD}}%+)
Type checking: 0 errors
Build: Successful
```

---

## ✅ Handoff Complete Checklist

Before closing this session, verify:

- [ ] All quality checks passed (tests, type checking, build)
- [ ] SESSION-STATUS.md fully updated with all sections
- [ ] All code changes committed with descriptive messages
- [ ] SESSION-STATUS.md committed
- [ ] Session summary provided (what done, what's next, blockers, test status)
- [ ] No uncommitted changes (`git status` shows clean)

**If all checked, session handoff is complete!** 🎉

---

## 🚨 What Happens If You Skip This?

**Bad handoff = wasted time:**
- Next developer spends 30+ minutes figuring out what you did
- Next developer might duplicate work or break working code
- Next developer might not know about blockers or important decisions
- Project momentum is lost

**Good handoff = smooth continuation:**
- Next developer reads SESSION-STATUS.md (5 minutes)
- Next developer knows exactly what to do next
- Next developer has context for all decisions
- Project maintains momentum

---

## Quick Reference Commands

```bash
# Quality checks (run all)
{{TEST_COMMAND}} && {{TYPE_CHECK_COMMAND}} && {{BUILD_COMMAND}} && git status

# Update and commit session status
git add SESSION-STATUS.md
git commit -m "docs: update session status after [work description]"

# View recent work
git log -10 --oneline
```

---

**Session handoff is not optional. It's how we maintain quality across sessions.**

**Now complete the checklist above before ending this session!** 🚀
