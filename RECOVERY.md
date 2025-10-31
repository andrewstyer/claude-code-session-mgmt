# Recovery Guide - When Things Go Wrong

**Use this document when you're stuck, blocked, or things have gone off track**

---

## 🚨 Quick Diagnosis

**Start here to figure out what's wrong:**

```bash
# Run all checks to see what's broken
{{TEST_COMMAND}}              # Tests failing?
{{COVERAGE_COMMAND}}          # Coverage low?
{{TYPE_CHECK_COMMAND}}        # Type/lint errors?
{{BUILD_COMMAND}}             # App won't build?
git status                    # Git in weird state?
```

**Now find your scenario below and follow the recovery steps.**

---

## 📋 Recovery Scenarios

### Scenario 1: Tests Are Failing

**Symptom:** `{{TEST_COMMAND}}` shows failing tests

**Diagnosis:**
```bash
{{TEST_VERBOSE_COMMAND}}
# Read the error messages carefully
```

**Recovery steps:**

1. **Identify the failure type:**
   - Import errors → Missing dependencies or wrong paths
   - Assertion failures → Code doesn't match test expectations
   - Timeout errors → Async operations not completing
   - Mock errors → Test setup issues

2. **For import/dependency errors:**
   ```bash
   # Reinstall dependencies
   {{CLEAN_DEPENDENCIES_COMMAND}}
   {{INSTALL_DEPENDENCIES_COMMAND}}

   # Verify imports in failing test files
   # Check that paths are correct
   ```

3. **For assertion failures:**
   - Read the test carefully - what's it expecting?
   - Read your code - what's it actually doing?
   - Add debug logging to understand behavior
   - Fix code OR fix test (if test is wrong)

4. **For timeout errors:**
   - Look for missing await keywords
   - Check if async operations are completing
   - Increase timeout in test if legitimately slow

5. **For mock errors:**
   - Check test setup - are mocks configured correctly?
   - Verify mock paths match real module paths

**Prevention:**
- Run tests after EVERY code change (not at the end)
- Follow TDD: Write test first, watch it fail, then implement

---

### Scenario 2: Type/Lint Errors Everywhere

**Symptom:** `{{TYPE_CHECK_COMMAND}}` shows many errors

**Diagnosis:**
```bash
{{TYPE_CHECK_COMMAND}} | head -20
# Look at first few errors - often cascading from one root cause
```

**Recovery steps:**

1. **Fix from top to bottom:**
   - Errors often cascade
   - Fix the FIRST error, then re-run
   - Many subsequent errors may disappear

2. **Common issues:**

   **Missing type definitions:**
   ```bash
   {{INSTALL_TYPES_COMMAND}}
   ```

   **"Cannot find module" errors:**
   - Check import paths (relative vs absolute)
   - Verify file actually exists
   - Check file extension

   **Type mismatch errors:**
   - Read error message carefully
   - Look at expected type vs actual type
   - Add explicit type annotations
   - Use type assertions if necessary (sparingly!)

3. **Nuclear option (if truly stuck):**
   ```bash
   # Check what changed recently
   git diff HEAD~3

   # Consider reverting recent changes
   git revert <commit-hash>
   ```

**Prevention:**
- Run `{{TYPE_CHECK_COMMAND}}` frequently during development
- Enable type checking in your editor for real-time errors
- Use explicit types

---

### Scenario 3: App Won't Build or Start

**Symptom:** `{{BUILD_COMMAND}}` or `{{DEV_SERVER_COMMAND}}` fails

**Diagnosis:**
```bash
{{BUILD_COMMAND}} 2>&1 | tee build-error.log
# Save full error output for analysis
```

**Recovery steps:**

1. **Clear all caches:**
   ```bash
   {{CLEAR_CACHE_COMMAND}}
   ```

2. **Reinstall dependencies:**
   ```bash
   {{CLEAN_DEPENDENCIES_COMMAND}}
   {{INSTALL_DEPENDENCIES_COMMAND}}
   ```

3. **Check for common issues:**

   **Build errors:**
   - Check for syntax errors in recently changed files
   - Look for circular dependencies
   - Verify all imports are correct

   **Port already in use:**
   ```bash
   # Kill process on the port
   {{KILL_PORT_COMMAND}}
   ```

4. **Start from clean state:**
   ```bash
   # Stop all running processes
   {{STOP_ALL_PROCESSES}}

   # Clear everything
   {{CLEAN_ALL_COMMAND}}

   # Reinstall
   {{INSTALL_DEPENDENCIES_COMMAND}}

   # Start fresh
   {{DEV_SERVER_COMMAND}}
   ```

**Prevention:**
- Commit working code frequently
- Test build after significant changes
- Keep dependencies up to date

---

### Scenario 4: Coverage Dropped Below {{COVERAGE_THRESHOLD}}%

**Symptom:** `{{COVERAGE_COMMAND}}` shows coverage < {{COVERAGE_THRESHOLD}}%

**Diagnosis:**
```bash
{{COVERAGE_COMMAND}}
# Look at "Uncovered Lines" column
```

**Recovery steps:**

1. **Identify undertested files:**
   - Look at coverage report
   - Focus on important files first

2. **Write missing tests:**
   - Follow TDD pattern (even retroactively)
   - Test happy paths first, then edge cases
   - Test error handling paths

3. **Check coverage thresholds:**
   - Verify threshold is set correctly in configuration
   - Adjust if needed for your project

**Prevention:**
- Follow TDD religiously (tests first, always)
- Check coverage after each feature
- Don't move to next task until coverage passes

---

### Scenario 5: Git Is In a Messy State

**Symptom:** `git status` shows concerning state

**Diagnosis:**
```bash
git status
git log -10 --oneline
git diff
```

**Recovery steps:**

**Problem: Uncommitted changes everywhere**
```bash
# See what changed
git status
git diff

# Option A: Commit the changes
git add .
git commit -m "wip: saving current work state"

# Option B: Stash the changes (save for later)
git stash save "description of changes"

# Option C: Discard the changes (DESTRUCTIVE!)
git checkout -- .
```

**Problem: Committed broken code**
```bash
# If last commit is broken, amend it
git add .
git commit --amend --no-edit

# If earlier commit is broken, revert it
git revert <commit-hash>

# If you haven't pushed, you can reset (DESTRUCTIVE!)
git reset --soft HEAD~1  # Keep changes, undo commit
git reset --hard HEAD~1  # Discard everything (DANGEROUS!)
```

**Problem: Merge conflict**
```bash
# See conflicted files
git status

# Open each conflicted file and resolve manually
# Look for <<<<<<< and >>>>>>> markers
# Choose which version to keep

# After resolving
git add <resolved-files>
git commit -m "fix: resolve merge conflict"
```

**Prevention:**
- Commit frequently (every task completion)
- Always check `git status` before committing
- Never use `--force` unless you're absolutely sure

---

### Scenario 6: Lost Track of What to Do Next

**Symptom:** Don't know what task to work on

**Recovery steps:**

1. **Check SESSION-STATUS.md:**
   ```bash
   cat SESSION-STATUS.md
   # Look at "Next immediate steps" section
   ```

2. **If SESSION-STATUS.md is unclear:**
   ```bash
   # Check recent git history
   git log -10 --oneline

   # What was last commit about?
   git show HEAD
   ```

3. **If still unclear, check the master plan:**
   ```bash
   cat {{TASK_BREAKDOWN_DOC}}
   # Find current phase, identify next uncompleted task
   ```

4. **Run tests to see what's working:**
   ```bash
   {{TEST_COMMAND}}
   # What tests exist? What's passing?
   ```

**Prevention:**
- Update SESSION-STATUS.md with clear "next steps" before ending session
- Use git pre-commit hook (reminds you to update SESSION-STATUS.md)

---

### Scenario 7: Stuck on a Task for Too Long

**Symptom:** Working on same task for >2 hours without progress

**Recovery steps:**

1. **Step back and assess:**
   - What exactly am I trying to do?
   - Why is it hard?
   - What have I tried?
   - What error messages am I seeing?

2. **Break it down smaller:**
   - Can I split this task into 3-4 smaller tasks?
   - Can I implement a simpler version first?
   - Can I stub out complex parts and come back later?

3. **Check the reference docs:**
   - {{ARCHITECTURE_DOC}} for overall guidance
   - {{COMPONENT_SPEC_DOC}} for patterns
   - {{ERROR_HANDLING_DOC}} for error scenarios
   - Is there an example or pattern I can follow?

4. **Try a different approach:**
   - Am I overcomplicating this?
   - Is there a simpler solution?
   - Should I use a different pattern?

5. **Document the blocker:**
   - Update SESSION-STATUS.md with blocker details
   - Include: what you're trying to do, what you've tried, error messages, what you need help with

6. **Move to a different task:**
   - Sometimes you need fresh eyes
   - Work on something else, come back later
   - Update SESSION-STATUS.md with blocker before switching

**Prevention:**
- Follow the planning docs closely (don't improvise)
- Ask for clarification early (update SESSION-STATUS.md with questions)
- Break tasks into <30 minute chunks

---

### Scenario 8: SESSION-STATUS.md Is Out of Date

**Symptom:** SESSION-STATUS.md doesn't match current state

**Recovery steps:**

1. **Reconstruct what happened:**
   ```bash
   # Check git history
   git log -20 --oneline

   # What commits were made?
   # What features were added?

   # Check test status
   {{TEST_COMMAND}}

   # What tests exist and pass?
   ```

2. **Update SESSION-STATUS.md systematically:**
   - Update "Last Updated" (today's date)
   - Check off tasks that correspond to git commits
   - Add commit hashes from `git log`
   - Update "Current Work" with latest commit
   - Update "Next steps" from task breakdown doc
   - Update "Test Status" with actual numbers
   - Note that SESSION-STATUS.md was reconstructed

3. **Commit the updated file:**
   ```bash
   git add SESSION-STATUS.md
   git commit -m "docs: reconstruct session status from git history"
   ```

**Prevention:**
- Use git pre-commit hook (install with `{{GIT_HOOK_INSTALL_COMMAND}}`)
- Read END-SESSION.md before ending each session
- Update SESSION-STATUS.md immediately after completing tasks (not at end)

---

## 🔧 Emergency Procedures

### When to Start Fresh (Nuclear Option)

**Only do this if:**
- Everything is broken beyond repair
- You've tried multiple recovery steps
- It would take longer to fix than to restart

**Steps:**

1. **Save your work (just in case):**
   ```bash
   # Create backup branch
   git checkout -b backup-before-reset
   git add .
   git commit -m "backup: saving all work before reset"

   # Return to main
   git checkout main
   ```

2. **Check when things were last working:**
   ```bash
   git log -20 --oneline
   # Find last commit where tests passed
   ```

3. **Reset to last known good state:**
   ```bash
   # Soft reset (keeps changes)
   git reset --soft <last-good-commit>

   # Hard reset (DESTRUCTIVE - discards everything)
   git reset --hard <last-good-commit>
   ```

4. **Clean rebuild:**
   ```bash
   {{CLEAN_ALL_COMMAND}}
   {{INSTALL_DEPENDENCIES_COMMAND}}
   {{DEV_SERVER_COMMAND}}
   {{TEST_COMMAND}}
   ```

5. **Verify everything works:**
   ```bash
   {{TEST_COMMAND}}           # Tests pass?
   {{TYPE_CHECK_COMMAND}}     # No errors?
   {{BUILD_COMMAND}}          # App builds?
   ```

6. **Update SESSION-STATUS.md:**
   - Note that you reset to earlier state
   - Explain what went wrong
   - Update task completion status

---

### When to Ask for Help

**You should update SESSION-STATUS.md and ask for human help if:**

1. **Stuck on a task for >4 hours** with no progress
2. **Architecture decision needed** that's not covered in docs
3. **Tests failing in unexpected ways** that make no sense
4. **Multiple recovery attempts failed**
5. **Unclear requirements** - acceptance criteria ambiguous
6. **Technical limitation** - something seems impossible

**How to ask for help effectively:**

1. **Update SESSION-STATUS.md "Known Issues / Blockers" section with:**
   - Clear description of the problem
   - What you've tried
   - Error messages (full text)
   - Relevant code snippets
   - Why you're stuck

2. **Commit everything:**
   ```bash
   git add .
   git commit -m "wip: blocked on [problem description]"
   git add SESSION-STATUS.md
   git commit -m "docs: document blocker in session status"
   ```

3. **Provide context in your request:**
   - "I'm working on Task X.X.X"
   - "I've tried A, B, and C"
   - "The error message says: [full error]"
   - "I need help deciding: [options]"

---

## 🎯 Prevention: How to Stay on Track

### Daily Workflow Checklist

**At start of session:**
- [ ] Read CONTINUE-SESSION.md
- [ ] Read SESSION-STATUS.md
- [ ] Run `{{TEST_COMMAND}}` to verify working state
- [ ] Check `git status` (should be clean)

**During session:**
- [ ] Follow TDD: Test first, implement second
- [ ] Run tests after every small change
- [ ] Commit after completing each task
- [ ] Update TodoWrite as you go

**At end of session:**
- [ ] Read END-SESSION.md
- [ ] Run all quality checks
- [ ] Update SESSION-STATUS.md
- [ ] Commit everything

### Red Flags to Watch For

**If you notice any of these, STOP and check what's wrong:**

1. **Haven't committed in >2 hours** → Working on too much at once
2. **Tests haven't been run in >30 minutes** → Drifted from TDD
3. **Implementing without a test** → Not following TDD
4. **Type errors showing** → Fix immediately, don't accumulate
5. **App won't start** → Stop feature work, fix the build
6. **Don't know what task you're on** → Check SESSION-STATUS.md
7. **Task taking >2 hours** → Break it down or ask for help
8. **Copying code without understanding** → Read the docs, understand first

---

## 📚 Quick Reference: Recovery Commands

```bash
# DIAGNOSIS
{{TEST_COMMAND}}                    # Check test status
{{COVERAGE_COMMAND}}                # Check coverage
{{TYPE_CHECK_COMMAND}}              # Check types/linting
{{BUILD_COMMAND}}                   # Check build
git status                          # Check git state
git log -10 --oneline               # Check recent work

# CLEANING
{{CLEAN_DEPENDENCIES_COMMAND}}      # Clean dependencies
{{INSTALL_DEPENDENCIES_COMMAND}}    # Reinstall
{{CLEAR_CACHE_COMMAND}}             # Clear caches

# GIT RECOVERY
git stash                           # Save changes temporarily
git stash pop                       # Restore stashed changes
git reset --soft HEAD~1             # Undo last commit (keep changes)
git reset --hard HEAD~1             # Undo last commit (DESTRUCTIVE)
git checkout -- .                   # Discard all changes (DESTRUCTIVE)
git revert <commit>                 # Undo commit (safe)

# INFORMATION
cat SESSION-STATUS.md               # Check current status
cat {{TASK_BREAKDOWN_DOC}}          # Check task list
git diff                            # See uncommitted changes
git show HEAD                       # See last commit details
```

---

## 🆘 TL;DR - Most Common Issues

1. **Tests failing?** → Read error messages, fix from top down, check imports
2. **Type errors?** → Fix first error, re-run (cascading errors)
3. **App won't build?** → Clear caches, reinstall dependencies
4. **Lost track?** → Read SESSION-STATUS.md → Check task breakdown doc
5. **Git messy?** → `git status`, commit or stash changes
6. **Stuck >2 hours?** → Break task smaller or document blocker
7. **SESSION-STATUS.md wrong?** → Reconstruct from `git log`

**Remember: Quality over speed. Fix problems immediately, don't accumulate them.**

---

**Stay calm. Follow the steps. You can recover from almost anything.** 🚀
