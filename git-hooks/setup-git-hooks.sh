#!/bin/bash

# Setup Git Hooks for Claude Code Projects
# This script installs the pre-commit hook that reminds developers
# to update SESSION-STATUS.md before committing

echo "🔧 Setting up Git hooks for Claude Code project..."
echo ""

# Check if we're in a git repo
if [ ! -d ".git" ]; then
  echo "❌ Error: Not in a git repository"
  echo "   Run this script from your project root directory"
  exit 1
fi

# Check if .git/hooks directory exists
if [ ! -d ".git/hooks" ]; then
  echo "📁 Creating .git/hooks directory..."
  mkdir -p .git/hooks
fi

# Copy pre-commit hook
if [ -f "git-hooks/pre-commit" ]; then
  echo "📝 Installing pre-commit hook..."
  cp git-hooks/pre-commit .git/hooks/pre-commit
  chmod +x .git/hooks/pre-commit
  echo "✅ Pre-commit hook installed"
else
  echo "⚠️  Warning: git-hooks/pre-commit not found"
  echo "   Make sure you're running this script from the project root"
  echo "   and that git-hooks/pre-commit exists"
  exit 1
fi

echo ""
echo "✅ Git hooks setup complete!"
echo ""
echo "📋 What happens now:"
echo "   - Before each commit, the hook will:"
echo "     1. Check if SESSION-STATUS.md is being committed"
echo "     2. Run type/lint checks"
echo "     3. Run tests (if code changed)"
echo ""
echo "💡 To skip the hook (emergency only):"
echo "   git commit --no-verify -m \"your message\""
echo ""
echo "🔧 To disable hooks temporarily:"
echo "   export HUSKY=0"
echo ""
