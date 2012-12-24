" Following lines added by drush vimrc-install on Sun, 23 Dec 2012 17:34:53 +0000.
set nocompatible
call pathogen#infect('/Users/Sam/.drush/vimrc/bundle')
call pathogen#infect('/Users/Sam/.vim/bundle')
" End of vimrc-install additions.

source $VIMRUNTIME/vimrc_example.vim



" ------------------------------------------------------------------------------
" General Setup
" ------------------------------------------------------------------------------

" Don't hobble vim in favour of vi-compatibility.
set nocompatible

" Number lines (using relative line-numbering if it's available).
" if exists('+relativenumber')
" set relativenumber
" else
    set number
" endif

" Show options when tab-completing from the command line.
set wildmenu
" Show longest common sub-string on first tab, then cycle on subsequent tabs.
set wildmode=longest:full,full

" Enable mouse support in all modes.
set mouse=a

" Start scrolling slightly before the cursor reaches an edge.
set scrolloff=5
set sidescrolloff=10

" Scroll sideways a character at a time, rather than a screen at a time.
set sidescroll=1

" Keep temporary files out of working directories. Trailing double-slash tells
" vim to base the filename on the full path of the original to avoid conflicts.
set directory=~/.vim/tmp/swap//

" Configure the status line unless we're using the powerline plugin.
if !exists('g:Powerline_loaded') || !g:Powerline_loaded
" Always show a status line above the command prompt.
    set laststatus=2
    set statusline=%t\ %r%m%y\ %=[%l\ of\ %L]
endif

" ------------------------------------------------------------------------------
" Whitespace
" ------------------------------------------------------------------------------

" Auto-indent blocks.
set autoindent
set smartindent

" Use shift-width for tabbing. Ignore tabstop & softtabstop.
set smarttab

" Four space tabs, and convert tabs to spaces.
" set ts=4 sts=4 sw=4 expandtab
" Two space tabs, and convert tabs to spaces.
" set ts=2 sts=2 sw=2 expandtab

" Use nicer representations when showing invisible characters.
set listchars=tab:\▸\ ,eol:·,extends:»,precedes:«
set showbreak=↪

" Show whitespace.
set list

" Auto-commands
augroup mt_whitespace
    autocmd!

" Show trailing whitespace when out of insert mode.
    autocmd InsertEnter * :set listchars-=trail:⌴
    autocmd InsertLeave * :set listchars+=trail:⌴
    
" ------------------------------------------------------------------------------
" Coloring
" ------------------------------------------------------------------------------

"vim-colors-solarized settings:
syntax enable
set background=dark
colorscheme solarized

" Use fancy colours.
set t_Co=256

" Briefly highlight matching bracket when completing a pair
set showmatch
set matchtime=1

" ------------------------------------------------------------------------------
" Searching
" ------------------------------------------------------------------------------

" Don't keep results highlighted after searching...
" set nohlsearch
" ...just highlight as we type.
" set incsearch

" Make /-style searches case-insensitive if the search string is all lowercase.
set ignorecase
set smartcase


" ------------------------------------------------------------------------------
" Key-mappings
" ------------------------------------------------------------------------------

" Indent & unindent with tab & shift-tab.
nnoremap <tab> >>
nnoremap <s-tab> <<
vnoremap <tab> >gv
vnoremap <s-tab> <gv

" Better linewise selection in/around HTML tags.
nnoremap Vit vitVkoj
nnoremap Vat vatV

" Edit vim config in a split pane. Also reload vim config without restarting.
noremap <leader>v :vsplit $MYVIMRC<cr>
noremap <leader>u :source $MYVIMRC<cr>

" Toggle invisible characters.
noremap <leader>i :set list!<cr>
" Toggle paste mode.
noremap <leader>p :set paste!<cr>

" Toggle the NERDTree file browser in a sidebar.
noremap <leader>e :NERDTreeToggle<cr>

" Re-indent, remove trailing whitespace & convert tabs to spaces.
noremap <leader>t :execute "normal gg=G"<bar>execute "normal ''"<bar>%s/\s\+$//e<bar>retab<cr>


" ------------------------------------------------------------------------------
" Miscellaneous
" ------------------------------------------------------------------------------

" Tell netrw to keep its history file in ~/.vim/tmp
let g:netrw_home = '~/.vim/tmp'

" Don't bother listing meta-file junk in NERDTree.
let NERDTreeIgnore = ['\.o$', '\.svn$', '\.pyc$', '\~$', '\.class$', '\.dSYM$']

" Customize the NERDTree UI a bit.
" let NERDTreeMinimalUI = 1
" let NERDTreeDirArrows = 1
" let NERDTreeMouseMode = 2

" Don't render tag contents with bold, italic & underline in HTML.
" let html_no_rendering=1
