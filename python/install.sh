#!/usr/bin/env bash
# Python setup via pyenv (for when you need Python dev)
# Note: This script is not run by dotbot - run manually when needed

set -e

# Install pyenv if not present
if ! command -v pyenv &>/dev/null; then
  brew install pyenv
fi

# Install latest Python 3
pyenv install --skip-existing 3.12

# Set as global default
pyenv global 3.12

# Install pipx for CLI tools (isolates each tool in its own venv)
brew install pipx
pipx ensurepath

# Example CLI tools (uncomment as needed):
# pipx install yt-dlp      # youtube-dl replacement
# pipx install ruff        # fast Python linter
# pipx install httpie      # better curl for APIs

echo "Done. Restart your shell or run: eval \"\$(pyenv init -)\""
