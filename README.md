# Dotfiles (2025 modernization)

Modern setup for macOS: Warp + Zsh + Neovim with lazy.nvim, LSP/Treesitter, Conform, nvim-lint, neotest, tmux, and Docker. Dotfiles are linked with GNU Stow.

## Requirements

- macOS
- Command Line Tools (once): `xcode-select --install`
- Homebrew (if missing):
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

Note: On Apple Silicon, Homebrew is at /opt/homebrew; on Intel, it’s /usr/local.

## Quick start (copy/paste)

```bash
# 1) Clone and enter repo
git clone https://github.com/kwaledesign/dotfiles.git ~/dotfiles
cd ~/dotfiles

# 2) Install packages and apps
brew bundle

# 3) Bootstrap (Stow links, FZF bindings, Volta, pyenv+pipx)
./scripts/bootstrap.sh

# 4) Finish shell setup
exec zsh -l
p10k configure        # generate ~/.p10k.zsh (prompt)
```

Warp setup
- Settings → Input → enable Vim keybindings
- Settings → Appearance → Solarized Dark theme, JetBrains Mono Nerd Font
- See stow/warp/README.md for suggested Workflows

Neovim first run
```bash
nvim   # lazy.nvim auto-installs; then run :checkhealth
```

tmux
```bash
tmux  # inside: press prefix + I to install TPM plugins
```

Docker (optional, n8n example)
```bash
docker compose -f stow/misc/docker/compose.yml up -d n8n
open http://localhost:5678
```

direnv (per project)
```bash
cd your/project
direnv allow
```

## What gets installed (Brewfile highlights)

- CLI: git, gh, ripgrep, fd, fzf, bat, jq, yq, delta, direnv, tmux, stow, httpie, glow, pyenv, pipx, coreutils, gnupg, just, volta
- Apps: warp, docker, font-jetbrains-mono-nerd-font
- Editor: neovim

Toolchains
- Node via Volta (Node 20, pnpm default, npm available)
- Python via pyenv (3.12) + pipx (for black, ruff, pre-commit)

## Layout (Stow-managed)

```
dotfiles/
  Brewfile
  scripts/bootstrap.sh
  stow/
    zsh/.zshrc
    zsh/.p10k.zsh               # created by `p10k configure`
    nvim/.config/nvim/...       # init.lua, plugins, LSP, Telescope, Treesitter, etc.
    tmux/.tmux.conf
    git/.gitconfig
    git/.gitignore_global
    git/.editorconfig
    warp/README.md              # suggested Warp Workflows
    misc/docker/compose.yml
    misc/docker/README.md
  bin/
    dev-web      # pnpm dev
    dev-convex   # pnpm convex dev (or npx convex dev)
    dev-n8n      # start n8n via Docker Compose
    grep-code    # ripgrep with sane defaults
    fmt-all      # prettier + black
    lint-all     # eslint + ruff
```

Linking with Stow
- Bootstrap already runs `stow */` from stow/. If you add new packages, re-run:
  cd stow && stow */

## Neovim features

- Colorscheme: Solarized Dark
- Telescope: <leader>ff files, <leader>fg live grep, <leader>fb buffers, <leader>fh help
- LSP (TS/JS, Tailwind, HTML/CSS, JSON/YAML, Python)
  - gd goto def, gr refs, K hover, <leader>rn rename, <leader>ca code action
- Treesitter for TSX/TS/JS/JSON/CSS/HTML/Lua/Python/Markdown
- Editing QoL: autopairs, surround, comments, indent guides, todo-comments, autotag
- Git: gitsigns
- Format: <leader>f via Conform
  - JS/TS/TSX/MD/JSON/YAML → Prettier (prettierd preferred), Python → Black
- Lint on save: ESLint (JS/TS), Ruff (Python), markdownlint (MD)
- Tests: neotest
  - <leader>tn nearest, <leader>tf file, <leader>ts summary, <leader>to output
- Optional: vim-tmux-navigator

## Zsh & Oh My Zsh

- Auto-installs OMZ if missing
- Powerlevel10k prompt (run `p10k configure`)
- Plugins: git, fzf, zsh-autosuggestions, zsh-syntax-highlighting, direnv
- Aliases: v (nvim), ta (attach/start tmux), ll, dcu/dcd, etc.

## tmux

- Truecolor, mouse, large history, base index 1
- TPM plugins: sensible, resurrect, continuum, yank
- Install once: prefix + I (capital i)

## Docker & Compose

- Prefer Debian/Ubuntu slim images (`node:20-bookworm-slim`, `python:3.12-slim`)
- Compose v2 syntax (`docker compose ...`)
- Example: n8n service provided

## Git defaults

- delta as pager (side-by-side, Solarized) for diff/log/show
- global ignore, editorconfig
- Set your identity in stow/git/.gitconfig:
  - user.name, user.email

## Troubleshooting

- Docker cask: If install fails, launch Docker.app once and retry `brew install --cask docker` or `brew bundle`.
- Treesitter/LSP tool builds: Install Xcode CLTs (`xcode-select --install`).
- Intel Macs: If `eval "$(/opt/homebrew/bin/brew shellenv)"` fails, use `/usr/local/bin/brew`.

## Verification checklist

- brew bundle completes without errors
- Stow links are present in $HOME (bootstrap does this)
- Warp: Solarized Dark + Nerd Font, Vim mode on
- nvim: plugins auto-installed; :checkhealth green
- LSP, formatting, linting OK in TS/TSX/MD/Python
- neotest runs Jest/Vitest/Pytest with keymaps
- tmux TPM plugins installed; mouse/scroll/history OK
- docker compose up -d n8n exposes http://localhost:5678

## Migration notes (legacy)

- Pathogen + git submodules are deprecated in this repo
- Legacy plugin set replaced by Telescope, Treesitter, LSP, Conform, nvim-lint, Gitsigns
- Old YankRing temp-dir steps removed
- Manual .vimrc/.vim/bundle symlinks replaced by Stow

## Contributing / Personalization

- Adjust plugins in stow/nvim/.config/nvim/lua/plugins.lua
- Add/remove Stow packages under stow/
- Keep secrets in .envrc (direnv) or your secret manager

