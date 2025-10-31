# Contributing to Claude Code Development Toolkit

Thank you for your interest in contributing! This toolkit is designed to help developers use Claude Code more effectively for autonomous development.

---

## 🎯 How to Contribute

### 1. Report Issues

**Found a bug or have a suggestion?**

Open an issue with:
- Clear description of the problem or suggestion
- Steps to reproduce (if a bug)
- Expected vs actual behavior
- Tech stack where you encountered the issue
- Which files are affected

### 2. Improve Documentation

**Documentation improvements are always welcome:**

- Fix typos or unclear explanations
- Add examples for new tech stacks
- Improve setup instructions
- Add troubleshooting scenarios

### 3. Add Recovery Scenarios

**Encountered a new failure scenario not in RECOVERY.md?**

Add it! Include:
- Clear symptom description
- Diagnosis commands
- Step-by-step recovery procedure
- Prevention tips
- Which tech stacks it applies to

### 4. Add Tech Stack Examples

**Using a tech stack not yet documented?**

Add examples for:
- Rust projects (cargo, clippy, etc.)
- Java projects (Maven, Gradle)
- Ruby projects (RSpec, Bundler)
- Other languages and frameworks

### 5. Improve Placeholders

**Found a placeholder that's unclear or missing?**

- Document it in PLACEHOLDER-REFERENCE.md
- Add examples for different tech stacks
- Suggest better naming if confusing

### 6. Create Automation Scripts

**Want to automate placeholder replacement?**

Create scripts that:
- Read PROJECT-CONFIG.md
- Replace all placeholders in all files
- Validate all replacements complete
- Support multiple tech stacks

---

## 📋 Contribution Guidelines

### Code Style

**Markdown files:**
- Use clear headings (## for sections, ### for subsections)
- Include examples for clarity
- Use code blocks for commands
- Keep lines reasonably short (< 120 chars when possible)

**Shell scripts:**
- Include clear comments
- Error handling for common issues
- Echo status messages for user feedback
- Make scripts executable (chmod +x)

### Commit Messages

Follow conventional commits format:

```
<type>(<scope>): <subject>

<body>

<footer>
```

**Types:**
- `feat:` - New feature or capability
- `fix:` - Bug fix
- `docs:` - Documentation changes
- `refactor:` - Code restructuring (no functional changes)
- `test:` - Adding or updating tests
- `chore:` - Maintenance tasks

**Examples:**
```
feat(recovery): add scenario for Docker build failures

- Add Scenario 9: Docker build failures
- Include common Docker issues (cache, networking, permissions)
- Add recovery steps for each issue type

docs(setup): clarify Python project setup steps

- Add pip vs poetry examples
- Include virtual environment setup
- Add mypy configuration examples

fix(git-hooks): improve pattern matching for source files

- Fix regex for TypeScript/JavaScript detection
- Add support for .jsx files
- Improve docs-only commit detection
```

### Pull Request Process

1. **Fork the repository**
2. **Create a feature branch:**
   ```bash
   git checkout -b feature/your-feature-name
   ```
3. **Make your changes**
4. **Test your changes** (if applicable)
5. **Commit with conventional commits format**
6. **Push to your fork:**
   ```bash
   git push origin feature/your-feature-name
   ```
7. **Open a pull request** with:
   - Clear description of changes
   - Why the change is needed
   - Any breaking changes
   - Screenshots (if UI/docs changes)

### What to Test

**If changing templates:**
- Test placeholder replacement works
- Verify no broken markdown formatting
- Check examples are accurate

**If changing scripts:**
- Test on multiple tech stacks (if applicable)
- Test error handling
- Verify output messages are clear

**If changing git hooks:**
- Test hook triggers correctly
- Test bypass option works
- Verify error messages are helpful

---

## 🚀 Development Setup

### Prerequisites

- Git
- Text editor (VS Code, vim, etc.)
- Basic understanding of markdown
- (Optional) Shell scripting knowledge for git hooks

### Setting Up

```bash
# Clone the repo
git clone https://github.com/yourusername/claude-code-dev-toolkit.git
cd claude-code-dev-toolkit

# Create feature branch
git checkout -b feature/your-feature

# Make changes
# ... edit files ...

# Test changes (copy to a test project and try it out)
cp -r . /path/to/test-project/
cd /path/to/test-project
# Follow QUICK-START.md to verify it works

# Commit and push
git add .
git commit -m "feat(scope): description"
git push origin feature/your-feature
```

---

## 📝 Documentation Standards

### For Templates (START-HERE.md, etc.)

**Include:**
- Clear section headers
- Numbered steps for processes
- Examples for common scenarios
- Warning/info boxes for important notes
- Code blocks with syntax highlighting

**Example:**
```markdown
## 🔴 CRITICAL RULES

**For EVERY feature:**
1. RED Phase: Write test first
2. GREEN Phase: Implement to pass
3. REFACTOR Phase: Clean up
4. COMMIT Phase: Save work

**DO NOT:**
- ❌ Skip tests
- ❌ Commit broken code
```

### For Guides (SETUP.md, QUICK-START.md)

**Include:**
- Time estimates for each section
- Prerequisites clearly listed
- Commands that can be copy-pasted
- Verification steps after each action
- Troubleshooting for common issues

### For Recovery Scenarios

**Each scenario should have:**
1. **Symptom:** What the user sees
2. **Diagnosis:** Commands to run
3. **Recovery steps:** Numbered, specific steps
4. **Prevention:** How to avoid in future

---

## 🎨 Design Principles

### 1. Project-Agnostic First

All changes should work for any tech stack. Use placeholders instead of hardcoding specific tools.

**Good:**
```bash
{{TEST_COMMAND}}  # Works for npm, pytest, cargo test, etc.
```

**Bad:**
```bash
npm test  # Only works for Node projects
```

### 2. Explicit Over Implicit

Be explicit about what to do. Assume the user has no context.

**Good:**
```markdown
1. Open `PROJECT-CONFIG.md`
2. Find the "Tech Stack" section
3. Fill in: Primary Language, Framework, Database
```

**Bad:**
```markdown
1. Configure your tech stack
```

### 3. Examples for Everything

Every instruction should have an example.

**Good:**
```markdown
**Test command:** [e.g., npm test, pytest, go test ./...]
```

**Bad:**
```markdown
**Test command:** [your test command]
```

### 4. Prevention Over Cure

Include prevention tips in every recovery scenario.

### 5. Progressive Disclosure

Start simple (QUICK-START), provide depth when needed (SETUP).

---

## 🐛 Bug Reports

**Good bug reports include:**

1. **Title:** Clear, specific (e.g., "Git hook fails on Python projects")
2. **Description:** What happened vs what should happen
3. **Steps to reproduce:**
   ```
   1. Copy toolkit to Python project
   2. Run ./git-hooks/setup-git-hooks.sh
   3. Make a commit
   4. Hook fails with error: ...
   ```
4. **Environment:**
   - OS: macOS 14.0
   - Tech stack: Python 3.11, pytest
   - Shell: zsh
5. **Actual error message:** (full text)
6. **Expected behavior:** Hook should check for test failures

---

## 💡 Feature Requests

**Good feature requests include:**

1. **Use case:** Why is this needed?
2. **Proposed solution:** How would it work?
3. **Alternatives considered:** What else did you think about?
4. **Example:** What would the user experience be?

**Example:**
```markdown
**Use case:** Setting up the toolkit is time-consuming when starting many projects

**Proposed solution:** Create a script that:
- Prompts for project details interactively
- Reads answers
- Replaces all placeholders automatically
- Validates all replacements

**Alternatives considered:**
- VS Code extension (more complex)
- Online generator (requires internet)

**Example usage:**
```bash
./scripts/setup-project.sh
> Project name: MyApp
> Tech stack (node/python/go): node
> Test command: npm test
...
✅ All placeholders replaced!
```
```

---

## 🤝 Code of Conduct

### Be Respectful

- Be kind and courteous
- Respect differing viewpoints
- Accept constructive criticism gracefully
- Focus on what's best for the community

### Be Collaborative

- Help others when you can
- Share knowledge and experience
- Credit others for their contributions
- Work together to solve problems

### Be Professional

- Keep discussions on topic
- Avoid inflammatory language
- Respect privacy and confidentiality
- Follow through on commitments

---

## 📞 Questions?

**Need help or have questions?**

- Open a discussion in the repo
- Check existing issues for similar questions
- Read the README.md and documentation first

---

## 🎉 Recognition

Contributors will be:
- Listed in CHANGELOG.md for their contributions
- Credited in commit messages
- Thanked in release notes

Thank you for making this toolkit better! 🚀
