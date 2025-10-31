# Continue {{PROJECT_NAME}} Development

**Read this first, then read SESSION-STATUS.md**

---

## What You Need to Know (2-minute version)

**Project:** {{PROJECT_NAME}} - {{PROJECT_DESCRIPTION}}
**Stack:** {{TECH_STACK_SUMMARY}}
**Methodology:** {{TDD_APPROACH}}

**Your job:** Continue implementing from where the last session left off

---

## Session Start Checklist

### 1. Get Context (5 minutes)
```bash
# See what's been done
git log -20 --oneline

# Check current state
git status

# Read status doc
cat SESSION-STATUS.md
```

### 2. Verify Environment (2 minutes)
```bash
# Tests still passing?
{{TEST_COMMAND}}

# App still builds?
{{DEV_SERVER_COMMAND}}
```

### 3. Find Your Next Task (1 minute)

Look at `SESSION-STATUS.md` → "Next task" section

OR look at `{{TASK_BREAKDOWN_DOC}}`

---

## Critical Rules (Never Break These)

1. **TDD is mandatory:** Write test first (RED) → Implement (GREEN) → Refactor
2. **Quality gates must pass:** Tests >{{COVERAGE_THRESHOLD}}% coverage, all tests passing
3. **Update SESSION-STATUS.md:** After each session with progress
4. **Follow component specs:** Use `{{COMPONENT_SPEC_DOC}}`
5. **Handle errors properly:** Use error handling patterns from `{{ERROR_HANDLING_DOC}}`

---

## Quick Reference

**Key docs:**
- Architecture: `{{ARCHITECTURE_DOC}}`
- Tasks: `{{TASK_BREAKDOWN_DOC}}`
- Components: `{{COMPONENT_SPEC_DOC}}`
- Status: `SESSION-STATUS.md` ← **Check this every session**
- **Troubleshooting:** `RECOVERY.md` ← **Use this if something's broken**

**TDD workflow:**
```
Write test ({{TEST_FILE_PATTERN}})
    ↓
Run test → FAILS (RED) ✅
    ↓
Write unit tests (if applicable)
    ↓
Implement code
    ↓
Run tests → PASS (GREEN) ✅
    ↓
Refactor + commit
```

**Quality gate:**
```bash
{{TEST_COMMAND}}              # All tests pass?
{{COVERAGE_COMMAND}}          # Coverage >{{COVERAGE_THRESHOLD}}%?
{{TYPE_CHECK_COMMAND}}        # No type errors?
{{BUILD_COMMAND}}             # Build succeeds?
```

---

## Now What?

1. ✅ Read `SESSION-STATUS.md` (see what's complete, what's next)
2. ✅ Run verification commands above
3. ✅ Continue from "Next task"
4. ✅ **BEFORE ENDING**: Read `END-SESSION.md` and follow the checklist

**GO!**

---

## 🛑 Before You End This Session

**MANDATORY:** When you're done working, read `END-SESSION.md` and complete the session handoff checklist. This ensures:
- All quality checks pass
- SESSION-STATUS.md is updated
- All work is committed
- Next developer can continue smoothly

**DO NOT skip this step!**
