# Basic Vim Setup

The basic vim setup is intended to be very light and portable, while still providing many of the comforts and familiar keybindings of the full Vim IDE configuration.  Included here is just the one .vimrc file without any plugins along with one optional color scheme. This of course is the ideal setup when working on remote servers and for only minimal edits.

## Installation: 
When dealing with local file structures and differing hosts, as always - YMMV.
Here's my setup based off mediatemple's gs.  

    ssh USER@ADDRESS.com
    cd ~
    scp ~/htdocs/dotfiles/basic_vim/.vimrc USER@ADDRESS.com:/~

To include the solarized color-scheme:
    cd ~
    mkdir .vim
    cd .vim
    scp ~/htdocs/dotfiles/basic_vim/colors







