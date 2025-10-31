# START HERE - {{PROJECT_NAME}} Development

**Welcome, Claude Code!**

You are about to build **{{PROJECT_NAME}}** - {{PROJECT_DESCRIPTION}}. This document is your **starting point** for the entire development process.

---

## 🎯 Your Mission

Build {{PROJECT_NAME}} following the comprehensive implementation plan in this repository. You will work **autonomously** through the implementation tasks, with built-in quality gates to ensure excellence.

**Success Criteria:**
- All tests passing ({{COVERAGE_THRESHOLD}}% coverage minimum)
- All critical features implemented
- App deployed to {{DEPLOYMENT_TARGET}}
- Full implementation of MVP scope

---

## 📋 Required Reading (In Order)

You **must read these documents completely** before starting any implementation:

### 1. Project Context
- **`{{PROJECT_README}}`** - Project vision, problem statement, solution
- **`{{USER_STORIES_DOC}}`** - Detailed user stories with acceptance criteria (if applicable)
- **`{{DESIGN_DOC}}`** - UI/UX design principles (if applicable)

### 2. Architecture & Planning
- **`{{ARCHITECTURE_DOC}}`** ⭐ **START HERE**
  - Complete architecture overview
  - Implementation roadmap
  - Tech stack decisions
  - Testing strategy
  - Quality gates

### 3. Implementation Guides
- **`{{TASK_BREAKDOWN_DOC}}`** - Granular tasks to execute
- **`{{COMPONENT_SPEC_DOC}}`** - Reusable components/modules (if applicable)
- **`{{ERROR_HANDLING_DOC}}`** - Error patterns & edge cases (if applicable)
- **`{{DATABASE_DOC}}`** - Schema and migrations (if applicable)

### 4. Workflow Documentation
- **`{{TDD_WORKFLOW_DOC}}`** - Testing workflow (TDD approach)
- **`{{DEPLOYMENT_DOC}}`** - Deployment process (if applicable)

---

## 🚀 Quick Start

### ⚠️ IMPORTANT: First Session vs. Continuing Sessions

**🆕 If this is your FIRST session (starting from scratch):**
- Read this entire document (START-HERE.md)
- Follow Steps 1-3 below
- At end of session: Update `SESSION-STATUS.md`

**🔄 If this is a CONTINUING session (work already started):**
- **STOP! Don't read this document**
- Instead, read `CONTINUE-SESSION.md` (2-minute brief)
- Then read `SESSION-STATUS.md` (shows what's done, what's next)
- Continue from where the last session left off

---

### Step 1: Understand the Big Picture

**Read these documents first (30-60 minutes):**
1. `{{ARCHITECTURE_DOC}}` - How we're building it
2. `{{TDD_WORKFLOW_DOC}}` - The development workflow you'll follow
3. `{{TASK_BREAKDOWN_DOC}}` - The tasks you'll implement

**Key Concepts:**
- **Architecture:** {{ARCHITECTURE_PATTERN}}
- **Tech Stack:** {{TECH_STACK}}
- **TDD Approach:** {{TDD_APPROACH}}
- **Quality gates:** {{QUALITY_GATES_SUMMARY}}
- **Session handoff:** Update SESSION-STATUS.md after each session

---

### Step 2: Set Up Your Execution Environment

**Create your task tracking:**
```
Use TodoWrite tool to create todos for:
{{PHASE_LIST}}
```

**Verify prerequisites:**
- [ ] {{LANGUAGE}} installed ({{LANGUAGE_VERSION}})
- [ ] {{PACKAGE_MANAGER}} available
- [ ] {{TEST_TOOL}} installed and working
- [ ] {{BUILD_TOOL}} available
- [ ] Development environment ready

---

### Step 3: Begin Implementation

**Your first task:** Task 1.1.1 from `{{TASK_BREAKDOWN_DOC}}`

```bash
# First task command
{{FIRST_TASK_COMMAND}}
```

**Then follow the task breakdown sequentially:**
- Complete each task in order
- Run verification steps after each task
- Commit after completing related task groups
- Update your TodoWrite progress

**🔴 CRITICAL: Before ending this session, see "Session Handoff" section below!**

---

## 🔴 CRITICAL RULES - DO NOT DEVIATE

### 1. Test-Driven Development (NON-NEGOTIABLE)

**For EVERY feature:**
```
1. RED Phase:
   - Write {{TEST_TYPE}} test FIRST
   - Run test → VERIFY IT FAILS
   - Document why it fails

2. GREEN Phase:
   - Write unit tests (if applicable)
   - Implement minimum code to pass
   - Run tests → VERIFY THEY PASS

3. REFACTOR Phase:
   - Clean up code
   - Run ALL tests → VERIFY STILL PASSING

4. COMMIT Phase:
   - Git commit with descriptive message
```

**DO NOT:**
- ❌ Implement before writing tests
- ❌ Skip tests because "it's simple"
- ❌ Move to next feature until tests pass
- ❌ Rationalize why TDD doesn't apply

---

### 2. Quality Gates (ENFORCED)

**Before moving to next phase:**
- [ ] All tests passing (`{{TEST_COMMAND}}`)
- [ ] Coverage >{{COVERAGE_THRESHOLD}}% (`{{COVERAGE_COMMAND}}`)
- [ ] No type/lint errors (`{{TYPE_CHECK_COMMAND}}`)
- [ ] App builds successfully (`{{BUILD_COMMAND}}`)
- [ ] All code committed to git

**If any gate fails, stop and fix it. Do not proceed.**

---

### 3. Component/Module Reuse (REQUIRED)

**Follow the specs exactly:**
- Use components/modules from `{{COMPONENT_SPEC_DOC}}`
- Use defined patterns (don't invent new ones)
- Follow style guidelines
- Add testIDs/instrumentation for testing

**DO NOT:**
- ❌ Reinvent existing components
- ❌ Hardcode values that should be configurable
- ❌ Skip documentation
- ❌ Create variations without documenting them

---

### 4. Error Handling (MANDATORY)

**Every operation that can fail must:**
- Use proper error handling pattern (see `{{ERROR_HANDLING_DOC}}`)
- Catch all errors
- Provide user-friendly messages
- Log errors with context
- Offer recovery options

---

### 5. Code Style (ENFORCED)

**{{LANGUAGE}} conventions:**
- Explicit typing (no implicit any/dynamic types)
- {{CODE_STYLE_RULE_1}}
- {{CODE_STYLE_RULE_2}}
- {{CODE_STYLE_RULE_3}}

**File naming:**
- {{FILE_NAMING_CONVENTION}}

**Reference:** {{CODE_STYLE_DOC}} (if applicable)

---

## 📊 Progress Tracking

**Use TodoWrite tool throughout development:**

```typescript
// Example progress tracking
TodoWrite: [
  { content: "Phase 1: {{PHASE_1_NAME}}", status: "in_progress", activeForm: "{{PHASE_1_NAME}}" },
  { content: "Task 1.1.1: {{TASK_1_DESCRIPTION}}", status: "completed", activeForm: "{{TASK_1_DESCRIPTION}}" },
  { content: "Task 1.1.2: {{TASK_2_DESCRIPTION}}", status: "in_progress", activeForm: "{{TASK_2_DESCRIPTION}}" },
]
```

**Update todos:**
- Mark tasks complete immediately after verification passes
- Move to next task only after current task complete
- Update phase status when all tasks in phase done

---

## 🏗️ Architecture Overview

**Tech Stack:**
- {{LANGUAGE}} ({{LANGUAGE_VERSION}})
- {{FRAMEWORK}}
- {{DATABASE}}
- {{TEST_TOOL}} (testing)
- {{BUILD_TOOL}} (build)

**Project Structure:**
```
{{PROJECT_STRUCTURE}}
```

**Data Flow:**
```
{{DATA_FLOW_DIAGRAM}}
```

---

## 📝 Commit Message Format

**Use this exact format:**

```
{{COMMIT_MESSAGE_FORMAT}}

Examples:
{{COMMIT_EXAMPLE_1}}
{{COMMIT_EXAMPLE_2}}
```

---

## 🚨 When You Get Stuck

**If you encounter blockers:**

1. **Check RECOVERY.md first:**
   - Comprehensive troubleshooting guide
   - Common problems and solutions
   - Recovery procedures
   - Emergency fixes

2. **Check the reference docs:**
   - Implementation architecture for overall guidance
   - Component/module specs for patterns
   - Error handling guide for error scenarios
   - Database guide for schema questions

3. **Review the workflow docs:**
   - TDD workflow for testing process
   - Deployment workflow for deployment issues

4. **Don't rationalize around the rules:**
   - TDD is mandatory (no shortcuts)
   - Quality gates must pass (no exceptions)
   - Component reuse is required (no reinventing)

---

## ✅ Definition of Done

**A task is complete when:**
- [ ] Code implemented following specs
- [ ] Tests written and passing
- [ ] Error handling implemented
- [ ] Type checking passes
- [ ] Code committed with proper message
- [ ] TodoWrite updated

**A phase is complete when:**
- [ ] All tasks complete
- [ ] All quality gates pass
- [ ] No type/lint errors
- [ ] Coverage >{{COVERAGE_THRESHOLD}}%
- [ ] App builds successfully
- [ ] Phase committed to git

**The MVP is complete when:**
- [ ] All phases complete
- [ ] All tests passing ({{COVERAGE_THRESHOLD}}%+ coverage)
- [ ] App deployed to {{DEPLOYMENT_TARGET}}
- [ ] All MVP success criteria met

---

## 🎯 Success Metrics

**You'll know you're on track when:**
- ✅ Each task takes 15min - 2 hours (well-scoped)
- ✅ Tests fail first (RED), then pass (GREEN)
- ✅ No tasks blocked for more than 1 day
- ✅ Code is committed multiple times per day
- ✅ Quality gates pass consistently
- ✅ No backtracking needed (tests caught issues early)

---

## 🏁 Ready to Start?

**Your implementation path:**

```
{{IMPLEMENTATION_TIMELINE}}
```

**First action:**
1. Read {{ARCHITECTURE_DOC}} (30-60 min)
2. Create TodoWrite todos for all phases (5 min)
3. Start Task 1.1.1: {{FIRST_TASK_DESCRIPTION}}

---

## 📞 Important Contacts

**Project Owner:** {{PROJECT_OWNER}}
**Documentation Location:** `{{DOCS_DIR}}`

---

**Good luck! Build something amazing!** 🚀

Remember:
- Follow TDD religiously
- Quality over speed
- Tests are your safety net
- The planning docs have all the answers

**Now go read `{{ARCHITECTURE_DOC}}` and begin!**

---

## 🔄 Session Handoff (MANDATORY)

### Before Ending Your Session

**⚠️ CRITICAL: Read `END-SESSION.md` and follow the complete checklist before ending ANY session.**

**Quick summary - you MUST do this before ending each session:**

1. **Run quality checks:**
   ```bash
   {{TEST_COMMAND}}              # Tests passing?
   {{COVERAGE_COMMAND}}          # Coverage >{{COVERAGE_THRESHOLD}}%?
   {{TYPE_CHECK_COMMAND}}        # No type errors?
   {{BUILD_COMMAND}}             # Build succeeds?
   git status                    # Check uncommitted
   ```

2. **Update SESSION-STATUS.md:**
   - Update "Last Updated" date and "Last Developer"
   - Check off completed tasks
   - Update "Current Work" with latest commit and next steps
   - Update "Test Status" with actual numbers
   - Note any blockers

3. **Commit everything:**
   ```bash
   git add .
   git commit -m "{{COMMIT_FORMAT_EXAMPLE}}"
   git add SESSION-STATUS.md
   git commit -m "docs: update session status after [work description]"
   ```

4. **Verify handoff quality:**
   - [ ] SESSION-STATUS.md updated?
   - [ ] All tests passing?
   - [ ] Clear "next steps" documented?
   - [ ] No uncommitted changes?

**📖 Complete checklist: See `END-SESSION.md` for the full mandatory session handoff process.**

**⚠️ If you don't update SESSION-STATUS.md, the next session will waste time!**

---

### For Next Session

**Next developer (or next Claude Code session) should:**
1. Read `CONTINUE-SESSION.md` (not this file)
2. Read `SESSION-STATUS.md`
3. Check git log
4. Continue from "Next immediate steps"

**Do NOT read START-HERE.md again** (it's for first session only)

---

### Git Pre-Commit Hook

**A git hook will remind you to update SESSION-STATUS.md:**

To install the hook (only needed once):
```bash
{{GIT_HOOK_INSTALL_COMMAND}}
```

The hook will:
- ✅ Remind you to update SESSION-STATUS.md
- ✅ Run type checks before commit
- ✅ Run tests before commit
- ✅ Block commits with errors

To bypass (emergency only):
```bash
git commit --no-verify -m "your message"
```

---

**Ready to start? Read the architecture doc and begin Task 1.1.1!**
