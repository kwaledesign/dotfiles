# This is My Vim Config.  There Are Many Like It, But This One is Mine.

---

There are two versions, the full IDE and a basic version.

## Basic VIM Installation:

The basic vim setup is intended to be very light and portable. Included here is just the one .vimrc file without any plugins and one optional color scheme. This of course is the ideal setup when working on remote servers and for only minimal edits.

Here's my setup based off mediatemple's gs.  

    ssh USER@ADDRESS.com
    cd ~
    scp ~/htdocs/dotfiles/basic_vim/.vimrc USER@ADDRESS.com:/~

To include the solarized color-scheme:

    cd ~
    mkdir .vim
    cd .vim
    scp ~/htdocs/dotfiles/basic_vim/colors

## Installation of Full Development IDE: 
    cd ~/
    git clone git://github.com/kwaledesign/dotfiles.git ~/.vim

Then, symlink files to appropriate locations

    cd ~
    git clone http://github.com/kwaledesign/dotfiles.git
    ln -s ~/vim/.vimrc ~/.vimrc
    cd ~/.vim
    git submodule update --init

### Update to Latest Version
    git pull

### Update All Submodules (plugins)
    git submodule foreach git pull origin master

## Oh My Zsh!

## Vim Plugins Included
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

## Extra Goodies:
[trash](https://github.com/sindresorhus/trash) - don't rm urself
[vtop](https://www.npmjs.com/package/vtop) - cli realtime performance monitoring of your machine
