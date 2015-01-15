This is My Vim Config.  There Are Many Like It, But This One is Mine.
my personal vim config and dotfiles, tailored towards front-end development

---

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

## Vim Plugins
* [pathogen](https://github.com/tpope/vim-pathogen) - manages the runtime path of the plugins 
* fugitive -
* [YankRing](https://github.com/vim-scripts/YankRing.vim) - History for yanks, changes, deletes
* [BufClose](https://github.com/vim-scripts/BufClose.vim) - close current
  buffer, or a buffer by name
* command-t -
* [ctrlp](https://github.com/kien/ctrlp.vim) - Fuzzy file, buffer, mru, tag, etc finder
* [minibufexpl](https://github.com/fholgado/minibufexpl.vim) - Elegant buffer
  explorer - takes very little screen space
* nerdcommenter
* [nerdtree](https://github.com/scrooloose/nerdtree) - A tree explorer plugin for vim.
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
* [vim-autoclose](https://github.com/Townk/vim-autoclose) - enable an
  auto-close chars feature
* [vim-easymotion](https://github.com/Lokaltog/vim-easymotion) - Vim motion
  on speed!
* [vim-powerline](https://github.com/Lokaltog/vim-powerline) - better-looking, more functional vim statuslines. (still using despite depreciated to avoid the python dependency of [its successor](https://github.com/powerline/powerline) )
* [vim-repeat](https://github.com/tpope/vim-repeat) - repeat.vim: enable
  repeating supported plugin maps with "."

