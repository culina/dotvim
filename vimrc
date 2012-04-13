" ----------------------------------------
" Vundle
" ----------------------------------------

set nocompatible " be iMproved
filetype off " required!
filetype plugin indent on

set rtp+=~/dotvim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

" ---------------
" Plugin Bundles
" ---------------
Bundle 'scrooloose/nerdtree'
Bundle 'SuperTab-continued.'
Bundle 'scrooloose/nerdcommenter'
Bundle 'Lokaltog/vim-powerline'
Bundle 'LaTeX-Suite-aka-Vim-LaTeX'
Bundle 'SingleCompile'
Bundle 'xoria256.vim'
Bundle 'acx0/Conque-Shell'
" ----------------------------------------
" Regular Vim Configuration (No Plugins Needed)
" ----------------------------------------

" ---------------
" Color
" ---------------
set t_Co=256
set background=dark
colorscheme xoria256
" ---------------
" Backups
" ---------------
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

" ---------------
" UI
" ---------------
set ruler " Ruler on
set nu " Line numbers on
set nowrap " Line wrapping off
set laststatus=2 " Always show the statusline
set cmdheight=1
set encoding=utf-8

" ---------------
" Behaviors
" ---------------
syntax enable
set autoread " Automatically reload changes if detected
set autochdir " Directory is always the same as the file you are editing
set wildmenu " Turn on WiLd menu
set hidden " Change buffer - without saving
set history=768 " Number of things to remember in history.
set cf " Enable error files & error jumping.
set clipboard+=unnamed " Yanks go on clipboard instead.
set autowrite " Writes on make/shell commands
set timeoutlen=350 " Time to wait for a command (after leader for example)
set foldlevelstart=99 " Remove folds
set formatoptions=crql

" ---------------
" Text Format
" ---------------
set tabstop=2
set backspace=2 " Delete everything with backspace
set shiftwidth=2 " Tabs under smart indent
set cindent
set autoindent
set smarttab
set expandtab
set backspace=2

" ---------------
" Searching
" ---------------
set ignorecase " Case insensitive search
set smartcase " Non-case sensitive search
set incsearch
set hlsearch
set wildignore+=*.o,*.obj,*.exe,*.so,*.dll,*.pyc,.svn,.hg,.bzr,.git,.sass-cache

" ---------------
" Visual
" ---------------
set showmatch " Show matching brackets.
set matchtime=2 " How many tenths of a second to blink

" ---------------
" Sounds
" ---------------
set noerrorbells
set novisualbell
set t_vb=

" ---------------
" Mouse
" ---------------
set mousehide " Hide mouse after chars typed
set mouse=a " Mouse in all modes

" Better complete options to speed it up
set complete=.,w,b,u,U

" ----------------------------------------
" Bindings
" ----------------------------------------
" Fixes common typos
command W w
command Q q
map <F1> <Esc>
imap <F1> <Esc>
set pastetoggle=<F2>
map <F3> :tabprevious<CR>
imap <F3> <Esc>:tabprevious<CR>
map <F4> :tabnext<CR>
imap <F4> <Esc>:tabnext<CR>
imap jj <Esc>

" Removes doc lookup binding because it's easy to fat finger
nmap K k
vmap K k
let g:Tex_DefaultTargetFormat = "pdf"
let g:Tex_ViewRule_pdf = "evince"
nmap <F9> :SCCompile<cr>
nmap <F10> :SCCompileRun<cr>
set ofu=syntaxcomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guifont =Monaco\ 10
