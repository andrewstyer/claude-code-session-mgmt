# Claude Code Session Prompts

**Use these prompts to start or continue development sessions with Claude Code**

---

## 🆕 First Session Prompt (Starting from Scratch)

**Use this when beginning the project for the first time:**

```
I need you to build {{PROJECT_NAME}} following the comprehensive
implementation plan in this repository.

START BY READING: START-HERE.md

This is {{PROJECT_DESCRIPTION}}. You'll be working autonomously through
the implementation roadmap using {{TDD_APPROACH}}.

Key Context:
- Tech stack: {{TECH_STACK}}
- Architecture: {{ARCHITECTURE_PATTERN}}
- Testing: {{TEST_TOOL}}
- Timeline: {{IMPLEMENTATION_TIMELINE}}
- Quality gates are mandatory: >{{COVERAGE_THRESHOLD}}% test coverage, all tests passing, no type errors
- Update SESSION-STATUS.md at the end of EVERY session (git hook will remind you)

Your First Tasks:
1. Read START-HERE.md completely (30-60 minutes)
2. Read {{ARCHITECTURE_DOC}} (main plan)
3. Create TodoWrite todos for all {{PHASE_COUNT}} phases
4. Begin Task 1.1.1 from {{TASK_BREAKDOWN_DOC}}

Critical Rules (Non-Negotiable):
- Write tests BEFORE implementation (no exceptions)
- Quality gates must pass before moving forward
- Update SESSION-STATUS.md after each session
- Follow component/module specs exactly (reuse, don't reinvent)
- Use proper error handling patterns

If You Get Stuck:
- Read RECOVERY.md for troubleshooting
- Document blockers in SESSION-STATUS.md
- Don't skip TDD or quality gates

Let's begin! Read START-HERE.md and start implementing.
```

---

## 🔄 Continuing Session Prompt (Work Already Started)

**Use this when continuing work from a previous session:**

```
Continue building {{PROJECT_NAME}}. Work has already been started
and you need to pick up where the last session left off.

START BY READING: CONTINUE-SESSION.md (2-minute brief)
THEN READ: SESSION-STATUS.md (see what's done, what's next)

DO NOT read START-HERE.md - that's for first session only.

Quick Context Refresh:
- Project: {{PROJECT_DESCRIPTION}}
- Tech stack: {{TECH_STACK}}
- Following {{TDD_APPROACH}}
- Quality gates mandatory: >{{COVERAGE_THRESHOLD}}% coverage, all tests passing, no type errors
- All planning docs are in {{DOCS_DIR}} if you need reference

Your Session Start Checklist:
1. Read CONTINUE-SESSION.md (2 min)
2. Read SESSION-STATUS.md (shows completed work + next steps)
3. Run: git log -20 --oneline (see recent work)
4. Run: {{TEST_COMMAND}} (verify tests still passing)
5. Continue from "Next immediate steps" in SESSION-STATUS.md

Critical Reminder:
- Update SESSION-STATUS.md at END of this session (mandatory!)
- Git pre-commit hook will remind you
- Follow TDD religiously (write test first, every time)
- Don't skip quality gates

If You Get Stuck:
- Read RECOVERY.md for troubleshooting
- Check {{DOCS_DIR}} for architecture and specs
- Document blockers in SESSION-STATUS.md
- Don't rationalize around TDD or quality gates

Let's continue the work! Read CONTINUE-SESSION.md and SESSION-STATUS.md,
then pick up where we left off.
```

---

## 🛑 End of Session Prompt (Before Stopping Work)

**Use this when you're ready to end ANY session:**

```
Time to wrap up this session. Before we end, you MUST complete the session
handoff checklist to ensure the next developer can continue smoothly.

READ AND FOLLOW: END-SESSION.md (complete checklist)

Follow this process exactly:

1. RUN QUALITY CHECKS
   - {{TEST_COMMAND}} (verify all passing)
   - {{COVERAGE_COMMAND}} (verify >{{COVERAGE_THRESHOLD}}%)
   - {{TYPE_CHECK_COMMAND}} (verify no errors)
   - {{BUILD_COMMAND}} (verify build succeeds)
   - git status (check what's uncommitted)

2. UPDATE SESSION-STATUS.md
   - Update "Last Updated" date and "Last Developer"
   - Check off completed tasks in "Completed Work" section
   - Update "Current Work" → "Last commit" with your latest commit
   - Update "Current Work" → "Next immediate steps" with what should happen next
   - Update "Test Status" with actual numbers from your test runs
   - Add any blockers to "Known Issues / Blockers"
   - Update "Notes for Next Developer" with any important context

3. COMMIT EVERYTHING
   - Commit any remaining code changes (if not already committed)
   - Commit SESSION-STATUS.md with message:
     "docs: update session status after [brief work description]"

4. PROVIDE SESSION SUMMARY
   Give me a brief summary:
   - What was accomplished this session?
   - What's the next immediate task?
   - Are there any blockers or warnings for the next developer?
   - Test status (tests passing? coverage %? type errors?)

If Quality Checks Fail:
- Read RECOVERY.md for troubleshooting steps
- Fix issues before ending session
- Do not commit broken code

DO NOT skip any steps. The next developer depends on this handoff being complete.

Follow END-SESSION.md checklist now!
```

---

## 🆘 Recovery Prompt (When Things Go Wrong)

**Use this if the session is stuck, blocked, or things have gone off track:**

```
Something has gone wrong and we need to troubleshoot.

READ: RECOVERY.md (comprehensive troubleshooting guide)

First, run diagnostic checks:

```bash
{{TEST_COMMAND}}              # Tests passing?
{{COVERAGE_COMMAND}}          # Coverage ok?
{{TYPE_CHECK_COMMAND}}        # No type errors?
{{BUILD_COMMAND}}             # App builds?
git status                    # Git clean?
```

Then find your scenario in RECOVERY.md:
- Scenario 1: Tests Are Failing
- Scenario 2: Type/Lint Errors Everywhere
- Scenario 3: App Won't Build or Start
- Scenario 4: Coverage Dropped Below {{COVERAGE_THRESHOLD}}%
- Scenario 5: Git Is In a Messy State
- Scenario 6: Lost Track of What to Do Next
- Scenario 7: Stuck on a Task for Too Long
- Scenario 8: SESSION-STATUS.md Is Out of Date

Follow the recovery steps for your scenario.

After Recovery:
1. Verify all quality checks pass
2. Update SESSION-STATUS.md with what happened
3. Document any lessons learned
4. Continue with normal workflow

If multiple recovery attempts fail or you're stuck for >4 hours:
- Document the blocker thoroughly in SESSION-STATUS.md
- Commit all work
- Request human help with full context

Read RECOVERY.md now and follow the appropriate recovery procedure.
```

---

## 📋 How to Use These Prompts

### Workflow Pattern

```
Session 1:  First Session Prompt → Work → End Session Prompt
               ↓
Session 2:  Continuing Prompt → Work → End Session Prompt
               ↓
Session 3:  Continuing Prompt → Work → End Session Prompt
               ↓
            ... (repeat for each session)
```

### When to Use Each Prompt

| Prompt | When to Use | Duration |
|--------|-------------|----------|
| **First Session** | Starting project from scratch | 30-60 min onboarding + work |
| **Continuing Session** | Picking up from previous session | 2-5 min context load + work |
| **End Session** | Before stopping ANY session | 10-15 min (mandatory) |
| **Recovery** | When stuck, blocked, or broken | Varies (follow recovery steps) |

### Important Notes

1. **Always use End Session Prompt** before stopping - this ensures proper handoff
2. **Never skip START-HERE.md** on first session - it contains critical context
3. **Never re-read START-HERE.md** on continuing sessions - use CONTINUE-SESSION.md instead
4. **Use Recovery Prompt immediately** when something breaks - don't try to work through it
5. **Session handoff is mandatory** - git pre-commit hook will remind you

### Copy-Paste Ready

These prompts are designed to be copy-pasted directly to Claude Code after filling in placeholders from your PROJECT-CONFIG.md. They:
- Are concise enough to process quickly
- Contain essential context without overwhelming detail
- Point to comprehensive docs for deeper reference
- Set clear expectations and rules
- Include explicit first steps

---

## 🎯 Decision Tree: Which Prompt Do I Use?

```
Are you starting a brand new session?
│
├─ YES → Is there a git repo with commits?
│         │
│         ├─ NO → Use "First Session Prompt"
│         │       (Starting from scratch)
│         │
│         └─ YES → Use "Continuing Session Prompt"
│                  (Work already started)
│
└─ NO → Are you ending the current session?
         │
         ├─ YES → Use "End Session Prompt"
         │        (Mandatory before stopping)
         │
         └─ NO → Is something broken or stuck?
                  │
                  ├─ YES → Use "Recovery Prompt"
                  │        (Troubleshooting needed)
                  │
                  └─ NO → Continue working
                           (No prompt needed)
```

---

## 📝 Filling In Placeholders

**Before using these prompts, replace all {{PLACEHOLDER}} markers with values from your PROJECT-CONFIG.md:**

### Required Replacements

```
{{PROJECT_NAME}}              → Your project name
{{PROJECT_DESCRIPTION}}       → One-line description
{{TECH_STACK}}               → Your tech stack (language, framework, database)
{{ARCHITECTURE_PATTERN}}     → Your architecture (e.g., "MVC", "Clean Architecture")
{{TDD_APPROACH}}             → Your TDD approach (e.g., "E2E first", "Unit tests")
{{TEST_TOOL}}                → Your testing tool (e.g., "Jest", "Pytest")
{{IMPLEMENTATION_TIMELINE}}  → Your timeline (e.g., "8 weeks to MVP")
{{PHASE_COUNT}}              → Number of phases (e.g., "6")
{{COVERAGE_THRESHOLD}}       → Coverage threshold (e.g., "80")
{{TEST_COMMAND}}             → Test command (e.g., "npm test")
{{COVERAGE_COMMAND}}         → Coverage command (e.g., "npm test -- --coverage")
{{TYPE_CHECK_COMMAND}}       → Type check command (e.g., "npx tsc --noEmit")
{{BUILD_COMMAND}}            → Build command (e.g., "npm run build")
{{ARCHITECTURE_DOC}}         → Path to architecture doc
{{TASK_BREAKDOWN_DOC}}       → Path to task breakdown doc
{{DOCS_DIR}}                 → Your docs directory (e.g., "docs/")
```

### How to Replace

**Option 1: Manual replacement**
- Copy prompt to a text editor
- Find and replace each {{PLACEHOLDER}}
- Copy finished prompt to Claude Code

**Option 2: Script (advanced)**
- Create a script that reads PROJECT-CONFIG.md
- Automatically replaces placeholders
- Outputs ready-to-use prompts

---

## 🎨 Customization Tips

**You can customize these prompts if needed:**

1. **Add project-specific context:**
   - Team conventions
   - Custom quality gates
   - Specific blockers to watch for

2. **Adjust timeline expectations:**
   - Change implementation timeline if it changes
   - Update phase expectations

3. **Add emphasis:**
   - If certain rules are being violated repeatedly
   - If specific steps are being skipped

**But keep the core structure:**
- Clear starting point (which doc to read)
- Essential context (what/why/how)
- First steps (numbered list)
- Critical rules (non-negotiable)
- Recovery reference (RECOVERY.md)

---

**These prompts ensure consistent, high-quality handoffs between Claude Code sessions!** 🚀
