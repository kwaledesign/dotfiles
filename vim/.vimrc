set nocompatible
execute pathogen#infect()
"call pathogen#infect('bundle/*')
" End of vimrc-install additions.

" ctrlp config
"set runtimepath^=~/.vim/bundle/ctrlp.vim
"set runtimepath^=~/.vim

" ------------------------------------------------------------------------------
" Vim Admin and Debugging 
" ------------------------------------------------------------------------------

" To start vim without loading any .vimrc or plugins, use:
"vim -u NONE
" To start vim without using this .vimrc file, use:
" vim -u NORC
" Edit vim config in a split pane. Also reload vim config without restarting.
"noremap <leader>v :vsplit $MYVIMRC<cr>

" Source the vimrc file after saving it to avoid reload   
if has("autocmd")  
 augroup myvimrchooks  
  au!  
  autocmd bufwritepost .vimrc source ~/.vimrc  
 augroup END  
endif


" ------------------------------------------------------------------------------
" General Setup
" ------------------------------------------------------------------------------

call pathogen#helptags()

"Hide MacVim toolbar by default  
set go-=T

" Enable mouse support in all modes.
set mouse=a

"Hide mouse when typing  
set mousehide

" visually indicate an error
set visualbell 
" don't beep       
set noerrorbells

" Keep temporary files out of working directories. Trailing double-slash tells
" vim to base the filename on the full path of the original to avoid conflicts.
set directory=~/.vim/tmp/swap//

" Change leader
let mapleader = ","
let g:mapleader = ","

" Lessen the lag after <leader> commands
set timeoutlen=500

"Map escape key to <leader>jj  
imap <leader>jj <esc>

" Number lines 
set number

" Relative line numbering  
" set relativenumber

"Show command in bottom right portion of the screen  
set showcmd

"Display current cursor position in lower right corner.  
set ruler

"Always show the status line  
set laststatus=2

"Enable code folding  
" set foldenable
set nofoldenable    " disable folding

" ------------------------------------------------------------------------------
" Auto-completion, Filetypes, and Syntax
" ------------------------------------------------------------------------------

"Enable filetypes  
filetype on  
filetype plugin on    " required for many plugins
filetype indent on

" Create dictionary for custom expansions  
" set dictionary+=/Users/Sam/.vim/dict.txt

"Map code completion to <leader>tab  
"imap <leader><tab> <C-x><C-o>

" Show options when tab-completing from the command line.
set wildmenu
" Show longest common sub-string on first tab, then cycle on subsequent tabs.
set wildmode=longest:full,full

" More useful command-line completion and files to ignore
set wildmenu
set wildmode=list:longest
set completeopt=longest,menuone
set wildignore+=.git
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg 
set wildignore+=*.sw?      
set wildignore+=*.DS_Store 
set wildignore+=*.gem
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=log/**
set wildignore+=tmp/**

" IDE Auto completion menu (see: http://vim.wikia.com/wiki/Make_Vim_completion_popup_menu_work_just_like_in_an_IDE ) 
set completeopt=longest,menuone

"inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"  
"inoremap <expr> <C-n> pumvisible() ? '<C-n>' :  
"  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'  
"inoremap <expr> <M-,> pumvisible() ? '<C-n>' :  
"  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" use j/k to move up and down auto completion menu (easier than above method)
inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))


" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP

" omnicompletion : words
inoremap <leader><Space> <C-x><C-o>

" Set scss file type, treat sass as scss
au BufRead,BufNewFile *.scss set filetype=scss
au BufRead,BufNewFile *.sass set filetype=scss

au BufRead,BufNewFile {*.voice,Guardfile,Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru,*.jsonify} set ft=ruby
au BufNewFile,BufRead *.json set ft=javascript
au BufNewFile,BufRead *.js set ft=javascript syntax=jquery
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
au BufNewFile,BufRead {*.handlebars} set ft=html
au BufNewFile,BufRead *.coffee set ft=coffee syntax=coffee

" Show matching brackets
set showmatch  

" Don't render tag contents with bold, italic & underline in HTML.
" let html_no_rendering=1

" ------------------------------------------------------------------------------
" 'Edit' Commands and Backup
" ------------------------------------------------------------------------------

" Share system clipboard (macVim only)
set clipboard=unnamed

" Toggle paste mode.
"noremap <leader>p :set paste!<cr>

" Persistent Undo 
" Keep undo history across sessions, by storing in file.
silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undofile
set undodir=~/.vim/backups

"buffers can exist in the background without saving or being in a window
set hidden

set history=1000 " remember more commands and search history
set undolevels=1000 " use many muchos levels of undo

" Backups 
" backup file directory 
set backupdir=~/.vim/tmp/backup//
" enable backup   
set backup

" swap file directory, if in use  
" set directory=~/.vim/tmp/swap//   
" disable swapfiles                         
set noswapfile                      

" ------------------------------------------------------------------------------
" Coloring and Type
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

"Set font type and size 
set guifont=Menlo:h13

"Prefer a slightly higher line height  
set linespace=3

" ------------------------------------------------------------------------------
" Whitespace
" ------------------------------------------------------------------------------

" Auto-indent blocks
set autoindent
set smartindent

" Use shift-width for tabbing. Ignore tabstop & softtabstop.
" set smarttab

" Tab settings  
set tabstop=2  
set shiftwidth=2 
set softtabstop=2  
set expandtab

" Use nicer representations when showing invisible characters.
" set listchars=tab:\▸\ ,eol:·,extends:»,precedes:«
" set showbreak=↪

" Show whitespace.
" set list

" Show trailing whitespace when out of insert mode.
" autocmd InsertEnter * :set listchars-=trail:⌴
" autocmd InsertLeave * :set listchars+=trail:⌴

"Better line wrapping  
set wrap  
set textwidth=79  
set formatoptions=qrn1

" Indent & unindent with tab & shift-tab.
nnoremap <tab> >>
nnoremap <s-tab> <<
vnoremap <tab> >gv
vnoremap <s-tab> <gv

" Re-indent, remove trailing whitespace & convert tabs to spaces.
noremap <leader>t :execute "normal gg=G"<bar>execute "normal ''"<bar>%s/\s\+$//e<bar>retab<cr>

" ------------------------------------------------------------------------------
" Search
" ------------------------------------------------------------------------------

" Don't keep results highlighted after searching
set nohlsearch
" Set incremental searching
set incsearch

" ignore case if the search string is all lowercase
set ignorecase
set smartcase
 
"Highlight searching  
"set hlsearch  

" ------------------------------------------------------------------------------
" Miscellaneous
" ------------------------------------------------------------------------------
     
"Split windows below the current window.  
set splitbelow
set splitright

" Shortcut to opening a virtual split to right of current pane
nmap <leader>bv :bel vsp 

" Better line-wise selection in/around HTML tags.
nnoremap Vit vitVkoj
nnoremap Vat vatV

" Toggle invisible characters.
noremap <leader>i :set list!<cr>

"Shortcut to fold tags  
nnoremap <leader>ft Vatzf

" Quick alignment of text
nnoremap <leader>al :left<CR>
nnoremap <leader>ar :right<CR>
nnoremap <leader>ac :center<CR>

" ------------------------------------------------------------------------------
" Navigation
" ------------------------------------------------------------------------------

" Get to home dir easier  <leader>hm is easier than :cd ~  
nmap <leader>hm :cd ~/ <CR>

" Easy window navigation
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

"Automatically change current directory to that of the file in the buffer  
"autocmd BufEnter * cd %:p:h

"Bubble single lines  (see: http://vimcasts.org/episodes/bubbling-text/ )
nmap <C-Up> ddkP  
nmap <C-Down> ddp  
"Bubble multiple lines  
vmap <C-Up> xkP`[V`]  
vmap <C-Down> xp`[V`]

" easier window navigation  
nmap <C-h> <C-w>h  
nmap <C-j> <C-w>j  
nmap <C-k> <C-w>k  
nmap <C-l> <C-w>l

" Resize splits when the window is resized
au VimResized * exe "normal! \<c-w>="

"allow backspacing over everything in insert mode
set backspace=indent,eol,start

" allow moving into a blank space in v mode
set virtualedit=block

" Start scrolling slightly before the cursor reaches an edge.
set scrolloff=5
set sidescrolloff=10

" Scroll sideways a character at a time, rather than a screen at a time.
set sidescroll=1

" Underscores denote words - very hand when using BEM syntax
set iskeyword-=_

" ------------------------------------------------------------------------------
" Plugins (managed via pathogen https://github.com/tpope/vim-pathogen )
" ------------------------------------------------------------------------------

" YankRing  https://github.com/vim-scripts/YankRing.vim
" ------------------------------------------------------------------------------
" define yankring history directory
let g:yankring_history_dir = '$HOME/.vim/tmp/yankring-tmp'
" remap yankring trigger
nnoremap <leader>r :YRShow<CR>


" NerdTree  https://github.com/scrooloose/nerdtree
" ------------------------------------------------------------------------------

" automaticlly open NERDTree when vim starts up
"autocmd vimenter * NERDTree

" Toggle the NERDTree file browser in a sidebar.
noremap <leader>e :NERDTreeToggle<cr>

"Show hidden files in NerdTree  
let NERDTreeShowHidden=1

" Tell NERDTree to keep its history file in ~/.vim/tmp
let g:netrw_home = '~/.vim/tmp'

" Don't bother listing meta-file junk in NERDTree.
let NERDTreeIgnore = ['\.o$', '\.svn$', '\.pyc$', '\~$', '\.class$', '\.dSYM$', '\.sass-cache/$']

" Customize the NERDTree UI
" let NERDTreeMinimalUI = 1
" let NERDTreeDirArrows = 1
" let NERDTreeMouseMode = 2

" Store the bookmarks file
let NERDTreeBookmarksFile=expand("$HOME/.vim/NERDTreeBookmarks")

" Show the bookmarks table on startup
let NERDTreeShowBookmarks=1

" Show hidden files, too
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1

" Don't display these kinds of files
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.py\$class$', '\.obj$',
            \ '\.o$', '\.so$', '\.egg$', '^\.git$' ]

" Highlight the selected entry in the tree
let NERDTreeHighlightCursorline=1

" Use a single click to fold/unfold directories and a double click to open files
let NERDTreeMouseMode=2

" MiniBufferExplorer  https://github.com/fholgado/minibufexpl.vim
" ------------------------------------------------------------------------------
let g:miniBufExplSplitBelow= 0 " Put new window above current or on the left for vertical split                                          
let g:miniBufExplMinSize = 1   " set the min height, default = 1, no effect unless max size also set
let g:miniBufExplMaxSize = 0   " set the max height, defualt = 0, default allows window to resize to fit all buffers
let g:miniBufExplorerMoreThanOne = 1 " auto open, set to 2 or more to only open for multiple buffers

" tComment  https://github.com/vim-scripts/tComment
" ------------------------------------------------------------------------------
"Faster shortcut for T-comment plugin
noremap <leader>c :TComment<cr>


" vim-indent-guides https://github.com/nathanaelkane/vim-indent-guides
" ------------------------------------------------------------------------------
" set custom indent indicator colors
"let g:indent_guides_auto_colors = 0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4


" Command-T  https://github.com/wincent/Command-T
" ------------------------------------------------------------------------------
"  ****** issues with ruby and rvm so use ctrl-p plugin instead *********
"
" Preserve Command-T key mappings
"nnoremap <silent> <Leader>t :CommandT<CR>
"nnoremap <silent> <Leader>b :CommandTBuffer<CR>


" Powerline https://github.com/Lokaltog/vim-powerline
" ------------------------------------------------------------------------------
let g:Powerline_symbols = 'fancy'
let g:Powerline_theme = 'solarized256'
let g:Powerline_colorscheme ='solarized256'


" Syntastic  https://github.com/scrooloose/syntastic
" ------------------------------------------------------------------------------
"mark syntax errors with :signs
let g:syntastic_enable_signs=1
"automatically jump to the error when saving the file
let g:syntastic_auto_jump=0
"show the error list automatically
let g:syntastic_auto_loc_list=1
"don't care about warnings
"let g:syntastic_quiet_warnings=0

let g:syntastic_javascript_checker = "jshint"
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': [],
                           \ 'passive_filetypes': ['sass', 'scss'] }

" config coffeelint:
let g:syntastic_coffee_coffeelint_args = "--reporter --file ~/dotfiles/vim/syntax_checkers/coffee/coffeelint.json"


" HTML5.vim  https://github.com/othree/html5.vim
" ------------------------------------------------------------------------------
"Disable event-handler attributes support:
"let g:html5_event_handler_attributes_complete = 0
"Disable RDFa attributes support:
"let g:html5_rdfa_attributes_complete = 0
"Disable microdata attributes support:
"let g:html5_microdata_attributes_complete = 0
"Disable WAI-ARIA attribute support:
"let g:html5_aria_attributes_complete = 0


" vim-javascript-syntax  https://github.com/jelera/vim-javascript-syntax
" ------------------------------------------------------------------------------
" enable javascript code folding
au FileType javascript call JavaScriptFold()


" jquery.vim  https://github.com/nono/jquery.vim
" ------------------------------------------------------------------------------
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery


" emmet-vim
" ------------------------------------------------------------------------------
" re-map emmet trigger
"let g:user_emmet_leader_key='<E-M>'


" Vim Notes  https://github.com/xolox/vim-notes.git
" ------------------------------------------------------------------------------
" location of notes directory
:let g:notes_directory = '~/.vim/tmp/notes'
:let g:notes_suffix = '.txt'


" Snipmate  https://github.com/garbas/vim-snipmate
" ------------------------------------------------------------------------------
" allow multiple snippets files to be used for a filetype without changing the filetype
"let g:snipMate = {}
"let g:snipMate.scope_aliases = {}
"let g:snipMate.scope_aliases['scss'] = 'scss'


" EasyMotion  https://github.com/Lokaltog/vim-easymotion
" ------------------------------------------------------------------------------
" Override EasyMotion red with yellow
hi clear EasyMotionTarget
hi! EasyMotionTarget guifg=yellow


" Tagbar  https://github.com/majutsushi/tagbar
" ------------------------------------------------------------------------------
" set ctags location
let g:tagbar_ctags_bin = '/usr/local/bin/ctags'  
" set phpctags location (https://github.com/techlivezheng/tagbar-phpctags)          
let g:tagbar_phpctags_bin = '/usr/local/bin/ctags'        

" change tagbar's default width
let g:tagbar_width = 30
" remap tagbar trigger
map <Leader>y :TagbarToggle
" open Tagbar automatically on Vim startup
"autocmd VimEnter * nested :TagbarOpen   
" open Tagbar only if current file/files is supported             
"autocmd VimEnter * nested :call tagbar#autoopen(1)    

" Enable CSS in Tagbar
let g:tagbar_type_css = {
\ 'ctagstype' : 'css',
  \ 'kinds' : [
    \ 'c:classes',
    \ 'o:objects',
    \ 't:tags'
    \ ]
\ }

" Enable Markdown in Tagbar
let g:tagbar_type_markdown = {
	\ 'ctagstype' : 'markdown',
	\ 'kinds' : [
		\ 'h:Heading_L1',
		\ 'i:Heading_L2',
		\ 'k:Heading_L3'
	\ ]
\ }
