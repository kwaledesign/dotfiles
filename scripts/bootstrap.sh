#!/usr/bin/env bash
set -euo pipefail

# 1) Homebrew
if ! command -v brew >/dev/null 2>&1; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
eval "$(/opt/homebrew/bin/brew shellenv)" || true

# 2) Brewfile
brew update
brew bundle

# 3) FZF keybindings/completion (idempotent)
"$(brew --prefix)"/opt/fzf/install --key-bindings --completion --no-update-rc || true

# 4) Volta toolchain (Node + pnpm)
if command -v volta >/dev/null 2>&1; then
  volta install node@20
  volta install npm@latest
  volta install pnpm@latest
  volta install prettier@latest
  volta install eslint@latest
fi

# 5) Python baseline via pyenv + pipx CLIs
if command -v pyenv >/dev/null 2>&1; then
  pyenv install -s 3.12.4
  pyenv global 3.12.4
fi
if command -v pipx >/dev/null 2>&1; then
  pipx ensurepath
  pipx install pre-commit || true
  pipx install ruff || true
  pipx install black || true
fi

# 6) Stow dotfiles
cd "$(dirname "$0")/../stow"
stow */

