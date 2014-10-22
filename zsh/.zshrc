# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH

export PATH=/usr/local/ruby/bin:/usr/local/mysql/bin:/usr/bin:/usr/local/sbin:/usr/local/bin:/usr/local/apache2/bin:/usr/local/git/bin:/usr/local/wkhtmltopdf/bin:$PATH 


# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# Tmuxinator 
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator 

# Set Vim as default editor
export EDITOR="vim"
bindkey -v 

alias a3='cd $HOME/Sites/abaqis3'
alias a2='cd $HOME/Sites/abaqis2'
alias maria='cd /usr/local/Cellar/mariadb/10.0.13'
alias kd='cd $HOME/Sites/kwaledesign.com'
alias archetype='cd $HOME/Sites/Open-Source/Archetype'

# This loads RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# This loads nvm
[ -s "/Users/sashley/.nvm/nvm.sh" ] && . "/Users/sashley/.nvm/nvm.sh" 
