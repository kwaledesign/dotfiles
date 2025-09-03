export ZDOTDIR="$HOME"

# ---- Homebrew ----
eval "$(/opt/homebrew/bin/brew shellenv)"  # adjust if Intel

# ---- Oh My Zsh (install once if missing) ----
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  fzf
  zsh-autosuggestions
  zsh-syntax-highlighting
  direnv
)

source $ZSH/oh-my-zsh.sh

# ---- Powerlevel10k ----
[[ -r "$HOME/.p10k.zsh" ]] && source "$HOME/.p10k.zsh"

# ---- direnv ----
eval "$(direnv hook zsh)"

# ---- Volta (preferred toolchain manager) ----
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# ---- Aliases ----
alias ll='ls -alh'
alias v='nvim'
alias ta='tmux attach || tmux'
alias gs='git status'
alias gp='git push'
alias gb='git branch'
alias dcu='docker compose up -d'
alias dcd='docker compose down'

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

