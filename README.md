# Dotfiles

*This is My Vim Config.  There Are Many Like It, But This One is Mine.*

---

Dotfiles, inlcuding my .vimrc, are managed with git and symlinks. Vim plugins are handled with [Pathogen](https://github.com/tpope/vim-pathogen) and git-submodules.

See also my [Vagrant Ubuntu Node VM](https://github.com/kwaledesign/vagrant_ubuntu_node_vm) and environment provisioning scripts that include other goodies like [vifm](http://vifm.info/), [tig](http://jonas.nitro.dk/tig/), etc...

## Installation:
(running on both Ubuntu and OS X, YMMV on other systems)

Clone dot files
```
cd ~/ && \
git clone https://github.com/kwaledesign/dotfiles.git
```

Install pathogen [pathogen](https://github.com/tpope/vim-pathogen) - (manages the runtime path of the plugins)
```
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```

Symlink .vimrc file and bundle directory
```
ln -s ./dotfiles/vim/.vimrc && \
ln -s ~/dotfiles/vim/.vim/bundle/* ~/.vim/bundle/
```

pull and update git submodules (vim plugins)
```
cd dotfiles/vim/.vim/bundle/ && \
git submodule update --init && \
git submodule foreach git pull origin master && \
cd
```

Oh My Zsh!
```
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
```
symlink .zshrc
```
mv .zshrc .zshrc.old && \
ln -s ~/dotfiles/zsh/.zshrc
```

Yankring Plugin Config (needs a `tmp/file` with read/write permissions)
```
mkdir ~/.vim/tmp && \
cd ~/.vim/tmp/ && \
mkdir yankring-tmp/ && \
cd yankring-tmp && \
touch yankring_history_v2.txt && \
cd
```
Set permissions on the `tmp/` directory (YMMV, I'm using vagrant...)
```
sudo chown vagrant ~/.vim/tmp && \
sudo chmod 777 -R ~/vim/tmp
```

---

### Vim Plugins 

* [YankRing](https://github.com/vim-scripts/YankRing.vim) - History for yanks, changes, deletes
* [BufClose](https://github.com/vim-scripts/BufClose.vim) - close current
  buffer, or a buffer by name
* [ctrlp](https://github.com/kien/ctrlp.vim) - Fuzzy file, buffer, mru, tag, etc finder
* [nerdtree](https://github.com/scrooloose/nerdtree) - A tree explorer plugin for vim.
* [vim-easymotion](https://github.com/Lokaltog/vim-easymotion) - Vim motion
  on speed!
* [vim-autoclose](https://github.com/Townk/vim-autoclose) - enable an
  auto-close chars feature
* [vim-repeat](https://github.com/tpope/vim-repeat) - repeat.vim: enable repeating supported plugin maps with "."
* [Syntastic](http://github.com/scrooloose/syntastic)
* [Surround](http://github.com/tpope/vim-surround)
* [nerdcommenter](https://github.com/scrooloose/nerdcommenter)
* [Eunuch](http://github.com/tpope/vim-eunuch)
* [Ack](http://github.com/mileszs/ack.vim)
* [Fugitive](http://github.com/tpope/vim-fugitive)
* [indentLine](http://github.com/Yggdroot/indentLine)
* [Airline](http://github.com/bling/vim-airline)
* [Bufferline](http://github.com/bling/vim-bufferline)
* [Signify](http://github.com/mhinz/vim-signify)
* [vim notes](https://github.com/xolox/vim-notes)
* [Emmet Vim](https://github.com/mattn/emmet-vim/)
* [Vitality](http://github.com/sjl/vitality.vim) - make tmux play nicely with vim and iterm2
* [Vimux](https://github.com/benmills/vimux)
* [vim grep](https://github.com/vim-scripts/grep.vim) 


