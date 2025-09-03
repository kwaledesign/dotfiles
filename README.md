# kwaledesign/dotfiles (2025 modernization)

## Quick start (macOS + Warp + Zsh)

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" || true
brew bundle
./scripts/bootstrap.sh
```


Then:

Open Warp → Settings:

Input: enable Vim keybindings

Appearance: font JetBrains Mono Nerd Font, theme Solarized Dark

nvim → plugins auto-install via lazy.nvim. Run :checkhealth.

tmux → press prefix + I to install TPM plugins.

docker compose -f stow/misc/docker/compose.yml up -d n8n → open http://localhost:5678

Keybindings (Neovim)

Telescope: <leader>ff files, <leader>fg live grep, <leader>fb buffers

LSP: gd/gr goto/refs, K hover, <leader>rn rename, <leader>ca code action

Format: <leader>f (Conform)

Tests (neotest): <leader>tn nearest, <leader>tf file, <leader>ts summary, <leader>to output

Notes

Node toolchain via Volta; default Node 20; pnpm preferred, npm available

Python via pyenv (3.12), CLI tools via pipx (black, ruff, pre-commit)

Dotfiles linked via Stow


---

## 3) Apply and test (agent runbook)

```bash
# 1) Install & link
brew bundle
./scripts/bootstrap.sh

# 2) Open Warp, set Vim keys + Solarized Dark
# 3) Neovim first launch
nvim  # wait for lazy.nvim to install
:checkhealth

# 4) tmux
tmux
# press prefix + I (capital i) to install TPM plugins

# 5) Docker
docker compose -f stow/misc/docker/compose.yml up -d n8n
open http://localhost:5678
```


Verify

P10k prompt renders instantly; autosuggestions & syntax highlighting work

direnv prompts on .envrc

In a TS/TSX file: hover/rename/diagnostics, Tailwind class hints

Save → formats (Prettier/Black). Save → lints (ESLint/Ruff)

neotest runs Jest/Vitest/Pytest with the keymaps above

tmux mouse, yank, resurrect/continuum OK

4) Legacy migration & cleanup (2nd commit)

Your repo uses legacy Vim (Pathogen + submodules). Do this after you’re happy with the new setup:

# Archive old trees rather than delete (easy rollback)
git mv vim vim_legacy || true
git mv zsh zsh_legacy || true

# Remove submodule wiring if present
# 1) edit .gitmodules and remove entries
# 2) remove cached modules (example)
# git rm --cached vim/bundle/whatever
# rm -rf .git/modules/vim/bundle/whatever

git add -A
git commit -m "chore(legacy): archive old vim/zsh + remove submodule wiring"


Nothing is deleted from disk until you approve — this just quarantines legacy configs.

5) Done → open PR
git add -A
git commit -m "feat: 2025 modernization (Stow, Warp, Neovim, Volta, pnpm, tmux, Docker, neotest)"
git push origin modernize-2025

