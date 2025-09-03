# Warp setup

1) Settings → Input → enable **Vim keybindings**.
2) Settings → Appearance → choose **JetBrains Mono Nerd Font** and **Solarized Dark** theme.
3) Create Workflows for:
   - **SPS: Web dev** → runs `~/dotfiles/bin/dev-web` (or project-local)
   - **SPS: Convex dev** → `~/dotfiles/bin/dev-convex`
   - **SPS: n8n (Docker)** → `~/dotfiles/bin/dev-n8n`
   - **Project grep** → `~/dotfiles/bin/grep-code "{query}"`
   - **Docker prune** → `docker system prune -f`
4) (Optional) Create a Notebook “SPS Dev Runbook” with the above flows.

