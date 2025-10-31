# Placeholder Reference

**Complete list of all placeholders used in the toolkit and where to find their values**

---

## 📋 How to Use This Reference

When customizing the toolkit for your project:

1. Fill out `PROJECT-CONFIG.md` completely
2. Use this reference to find which placeholders to replace in each file
3. Replace {{PLACEHOLDER}} markers with actual values

---

## 🎯 Core Placeholders (Used in Multiple Files)

### Project Information

| Placeholder | Value Source | Example |
|-------------|--------------|---------|
| `{{PROJECT_NAME}}` | PROJECT-CONFIG.md → Project Name | "HealthTracker" |
| `{{PROJECT_DESCRIPTION}}` | PROJECT-CONFIG.md → One-Line Description | "Patient-controlled health record system" |
| `{{PROJECT_OWNER}}` | PROJECT-CONFIG.md → Project Owner/Team | "John Doe" |
| `{{PROJECT_TYPE}}` | PROJECT-CONFIG.md → Project Type | "web app", "mobile app", "CLI tool" |

### Tech Stack

| Placeholder | Value Source | Example |
|-------------|--------------|---------|
| `{{LANGUAGE}}` | PROJECT-CONFIG.md → Primary Language | "TypeScript", "Python", "Go" |
| `{{LANGUAGE_VERSION}}` | PROJECT-CONFIG.md → Version | "Node 20+", "Python 3.11+" |
| `{{FRAMEWORK}}` | PROJECT-CONFIG.md → Main Framework | "React", "FastAPI", "Express" |
| `{{DATABASE}}` | PROJECT-CONFIG.md → Database | "SQLite", "PostgreSQL", "MongoDB" |
| `{{TEST_TOOL}}` | PROJECT-CONFIG.md → Unit Testing | "Jest", "Pytest", "Go test" |
| `{{BUILD_TOOL}}` | PROJECT-CONFIG.md → Build Tool | "Webpack", "Vite", "cargo build" |
| `{{PACKAGE_MANAGER}}` | PROJECT-CONFIG.md → Package Manager | "npm", "pip", "go modules" |

**Combined:**
| Placeholder | Derived From | Example |
|-------------|--------------|---------|
| `{{TECH_STACK}}` | Combination of above | "React Native + Expo, SQLite, TypeScript" |
| `{{TECH_STACK_SUMMARY}}` | Short version | "React + TypeScript + SQLite" |

### Commands

| Placeholder | Value Source | Example |
|-------------|--------------|---------|
| `{{TEST_COMMAND}}` | PROJECT-CONFIG.md → Run all tests | `npm test`, `pytest`, `go test ./...` |
| `{{TEST_VERBOSE_COMMAND}}` | Test command + verbose flag | `npm test -- --verbose`, `pytest -v` |
| `{{COVERAGE_COMMAND}}` | PROJECT-CONFIG.md → Run with coverage | `npm test -- --coverage`, `pytest --cov=.` |
| `{{TYPE_CHECK_COMMAND}}` | PROJECT-CONFIG.md → Type check | `npx tsc --noEmit`, `mypy src/` |
| `{{BUILD_COMMAND}}` | PROJECT-CONFIG.md → Build | `npm run build`, `go build ./cmd/app` |
| `{{DEV_SERVER_COMMAND}}` | PROJECT-CONFIG.md → Dev server | `npm start`, `python manage.py runserver` |
| `{{INSTALL_DEPENDENCIES_COMMAND}}` | Based on package manager | `npm install`, `pip install -r requirements.txt` |
| `{{CLEAN_DEPENDENCIES_COMMAND}}` | Based on package manager | `rm -rf node_modules`, `pip uninstall -y -r requirements.txt` |
| `{{CLEAR_CACHE_COMMAND}}` | Based on tech stack | `rm -rf node_modules/.cache`, `go clean -cache` |
| `{{KILL_PORT_COMMAND}}` | Based on OS | `lsof -ti:8080 \| xargs kill -9` |
| `{{STOP_ALL_PROCESSES}}` | Based on tech stack | `killall node`, `pkill -f python` |
| `{{CLEAN_ALL_COMMAND}}` | Combination of clean commands | Multiple clean commands chained |

### Project Structure

| Placeholder | Value Source | Example |
|-------------|--------------|---------|
| `{{SOURCE_DIR}}` | PROJECT-CONFIG.md → Source directory | `src/`, `app/`, `pkg/` |
| `{{TEST_DIR}}` | PROJECT-CONFIG.md → Test directory | `tests/`, `__tests__/` |
| `{{DOCS_DIR}}` | PROJECT-CONFIG.md → Docs directory | `docs/`, `documentation/` |
| `{{FILE_EXTENSION}}` | Based on language | `.ts`, `.py`, `.go` |
| `{{TEST_FILE_PATTERN}}` | Based on test tool | `*.test.ts`, `test_*.py`, `*_test.go` |
| `{{SOURCE_FILE_PATTERN}}` | Based on language | `^src/.*\\.tsx?$`, `^app/.*\\.py$` |

**Complex:**
| Placeholder | Derived From | Example |
|-------------|--------------|---------|
| `{{PROJECT_STRUCTURE}}` | Manually created | Multi-line directory tree |
| `{{DATA_FLOW_DIAGRAM}}` | Manually created | Multi-line flow diagram |

### Quality Gates

| Placeholder | Value Source | Example |
|-------------|--------------|---------|
| `{{COVERAGE_THRESHOLD}}` | PROJECT-CONFIG.md → Minimum Coverage | "80", "90", "75" |
| `{{QUALITY_GATES_SUMMARY}}` | Summarized list | "Tests >80%, no type errors, builds successfully" |

### Documentation Paths

| Placeholder | Value Source | Example |
|-------------|--------------|---------|
| `{{PROJECT_README}}` | Usually `README.md` | `README.md` |
| `{{ARCHITECTURE_DOC}}` | PROJECT-CONFIG.md → Architecture path | `docs/architecture.md` |
| `{{TASK_BREAKDOWN_DOC}}` | PROJECT-CONFIG.md → Tasks path | `docs/task-breakdown.md` |
| `{{COMPONENT_SPEC_DOC}}` | PROJECT-CONFIG.md → Components path | `docs/components.md` |
| `{{ERROR_HANDLING_DOC}}` | PROJECT-CONFIG.md → Error handling path | `docs/error-handling.md` |
| `{{DATABASE_DOC}}` | PROJECT-CONFIG.md → Database path | `docs/database.md` |
| `{{TDD_WORKFLOW_DOC}}` | PROJECT-CONFIG.md → TDD workflow path | `docs/tdd-workflow.md` |
| `{{DEPLOYMENT_DOC}}` | PROJECT-CONFIG.md → Deployment path | `docs/deployment.md` |
| `{{USER_STORIES_DOC}}` | PROJECT-CONFIG.md → User stories path | `USER-STORIES.md` |
| `{{DESIGN_DOC}}` | PROJECT-CONFIG.md → Design path | `docs/design.md` |
| `{{CODE_STYLE_DOC}}` | PROJECT-CONFIG.md → Code style path | `docs/code-style.md` |

### Development Workflow

| Placeholder | Value Source | Example |
|-------------|--------------|---------|
| `{{TDD_APPROACH}}` | PROJECT-CONFIG.md → Testing order | "E2E first then unit", "Unit tests only" |
| `{{TEST_TYPE}}` | Based on TDD approach | "E2E", "unit", "integration" |
| `{{ARCHITECTURE_PATTERN}}` | PROJECT-CONFIG.md → Architecture | "MVC", "Clean Architecture", "Modular monolith" |
| `{{COMMIT_MESSAGE_FORMAT}}` | PROJECT-CONFIG.md → Commit format | "Conventional Commits", "Semantic Commits" |
| `{{COMMIT_FORMAT_EXAMPLE}}` | Example of format | `feat(auth): add login` |
| `{{COMMIT_EXAMPLE_1}}` | First example | Full commit message example |
| `{{COMMIT_EXAMPLE_2}}` | Second example | Full commit message example |
| `{{GIT_HOOK_INSTALL_COMMAND}}` | Usually fixed | `./git-hooks/setup-git-hooks.sh` |

### Phases & Timeline

| Placeholder | Value Source | Example |
|-------------|--------------|---------|
| `{{PHASE_COUNT}}` | PROJECT-CONFIG.md → How many phases | "4", "6", "8" |
| `{{PHASE_1_NAME}}` | PROJECT-CONFIG.md → Phase 1 name | "Foundation & Setup" |
| `{{PHASE_2_NAME}}` | PROJECT-CONFIG.md → Phase 2 name | "Core Features" |
| `{{PHASE_LIST}}` | All phase names | Bulleted list of all phases |
| `{{IMPLEMENTATION_TIMELINE}}` | PROJECT-CONFIG.md → Timeline | "8 weeks to MVP" |

### First Task

| Placeholder | Value Source | Example |
|-------------|--------------|---------|
| `{{FIRST_TASK_COMMAND}}` | First command to run | `npx create-react-app`, `django-admin startproject` |
| `{{FIRST_TASK_DESCRIPTION}}` | Task 1.1.1 description | "Initialize project" |
| `{{TASK_1_DESCRIPTION}}` | Task 1.1.1 short name | "Initialize project" |
| `{{TASK_2_DESCRIPTION}}` | Task 1.1.2 short name | "Install dependencies" |

### Code Style

| Placeholder | Value Source | Example |
|-------------|--------------|---------|
| `{{CODE_STYLE_RULE_1}}` | PROJECT-CONFIG.md → Rule 1 | "Use async/await, not .then()" |
| `{{CODE_STYLE_RULE_2}}` | PROJECT-CONFIG.md → Rule 2 | "Functions < 50 lines" |
| `{{CODE_STYLE_RULE_3}}` | PROJECT-CONFIG.md → Rule 3 | "No magic numbers" |
| `{{FILE_NAMING_CONVENTION}}` | PROJECT-CONFIG.md → Naming | "PascalCase for components, camelCase for utils" |

### Deployment

| Placeholder | Value Source | Example |
|-------------|--------------|---------|
| `{{DEPLOYMENT_TARGET}}` | PROJECT-CONFIG.md → Where to deploy | "Vercel", "AWS", "TestFlight" |
| `{{INSTALL_TYPES_COMMAND}}` | Based on language | `npm install --save-dev @types/[pkg]`, N/A for Python |

---

## 📁 Files Using Placeholders

### START-HERE.md

**Uses:** All project info, tech stack, commands, paths, quality gates, phases, timeline, code style, first task

**Count:** ~50 placeholders

### CONTINUE-SESSION.md

**Uses:** Project info, tech stack summary, TDD approach, commands, paths, coverage threshold

**Count:** ~15 placeholders

### END-SESSION.md

**Uses:** Project name, commands, coverage threshold, commit format, task breakdown doc, source dir, file extension

**Count:** ~10 placeholders

### SESSION-STATUS.md

**Uses:** Project info, phase names, commands, tech stack, docs paths, coverage threshold, source dir, test dir

**Count:** ~25 placeholders

### RECOVERY.md

**Uses:** Commands (all variations), tech stack, coverage threshold, install commands, clean commands, task breakdown doc, architecture doc, component spec doc, error handling doc, git hook install command

**Count:** ~20 placeholders

### PROMPTS.md

**Uses:** Project info, tech stack, TDD approach, architecture pattern, test tool, timeline, phase count, coverage threshold, all commands, all doc paths

**Count:** ~30 placeholders

### git-hooks/pre-commit

**Uses:** Source file pattern, type check command, test command

**Count:** 3 placeholders

---

## 🔄 Replacement Strategy

### Option 1: Manual Replacement (Simple Projects)

1. Open each file
2. Find each {{PLACEHOLDER}}
3. Replace with value from PROJECT-CONFIG.md
4. Save file

**Pros:** Simple, no tools needed
**Cons:** Time-consuming, error-prone

### Option 2: Find & Replace in Editor (Medium Projects)

1. Fill out PROJECT-CONFIG.md
2. Open all toolkit files in editor
3. Use "Find & Replace All" for each placeholder
4. Verify changes

**Pros:** Faster than manual
**Cons:** Still manual, need to do for each placeholder

### Option 3: Script (Large/Complex Projects)

Create a script that:
1. Reads PROJECT-CONFIG.md
2. Parses placeholder values
3. Replaces all placeholders in all files
4. Validates all replacements complete

**Pros:** Fast, repeatable, less error-prone
**Cons:** Requires scripting

---

## ✅ Verification Checklist

After replacing placeholders:

**Check each file has NO remaining {{PLACEHOLDER}} markers:**

```bash
# Search for any remaining placeholders
grep -r "{{.*}}" . --include="*.md" | grep -v "PLACEHOLDER-REFERENCE.md"

# Should return nothing (except this file)
```

**Test commands work:**

```bash
# Test each command
{{TEST_COMMAND}}
{{COVERAGE_COMMAND}}
{{TYPE_CHECK_COMMAND}}
{{BUILD_COMMAND}}
```

**Verify paths exist:**

```bash
# Check directories exist
ls {{SOURCE_DIR}}
ls {{TEST_DIR}}
ls {{DOCS_DIR}}
```

**Review for consistency:**
- [ ] All project names match
- [ ] All commands use same package manager
- [ ] All paths follow same structure
- [ ] All thresholds are consistent

---

## 💡 Tips

1. **Start with PROJECT-CONFIG.md** - Get all values in one place first
2. **Replace common ones first** - PROJECT_NAME, TECH_STACK, COVERAGE_THRESHOLD
3. **Use examples as guide** - Each placeholder has an example value
4. **Test as you go** - Test commands after replacing them
5. **Keep a backup** - Copy toolkit before customizing
6. **Document custom placeholders** - If you add new ones, document them

---

**This reference should help you quickly customize the entire toolkit!** 🚀
