# This is My Vim Config.  There Are Many Like It, But This One is Mine.
my personal vim config and dotfiles, tailored towards front-end development and
Drupal. [Blog
Article](http://kwaledesign.comblog/articles/vim-zsh-tmux-ide-front-end-drupal-development) 

There are two versions:
* **Basic** - basic functional setup (only one file). Good for remote servers
  where edits are minimal.
* **Full**  - full setup (includes all dotfiles and plugins). Good for
  day-to-day development.

## Installation of Basic Setup:
    cp basic .vimrc file to remote server root
## Installation of Full Development IDE: 
    cd ~/
    git clone git://github.com/kwaledesign/dotfiles.git
Then, symlink files to appropriate locations
    cd ~/ 
    ln -s ~/dotfiles/.vimrc
    ln -s ~/dotfiles/.tmux.conf
    ln -s ~/dotfiles/.zshrc
    ln -s ~/dotfiles/.ctags
    ln -s ~/dotfiles/.gitignore
    ln -s ~/dotfiles/.gitconfig

### Update to Latest Version
    git pull --rebase

## Oh My Zsh!

## TMUX

## TMUXINATOR

## ACK

## Vim Plugins
* pathogen - manages the runtime path of the plugins 
* NERDTree - Tree file explorer for vim
* YankRing - History for yanks, changes, deletes
* snipMate - Vim implimentation of TextMate's snippets
* BufClose -
* command-t -
* ctrlp - 
* drupal-snippets
* fugitive -
* gist
* html5
* jquery
* minibufexpl
* nerdcommenter
* nerdtree
* scss-snippets
* scss-syntax
* snipmate-snippets
* syntastic
* tComment
* tabular
* tagbar
* tagbar-phpctags
* tlib
* vim-addon-mw-utils
* vim-autoclose
* vim-colors-solorized
* vim-css
* vim-easymotion
* vim-indent-guides
* vim-javascript-syntax
* vim-matchit
* vim-notes
* vim-powerline
* vim-scratch
* vim-snipmate
* vim-surround
* webapi-vim
* vim-repeat





