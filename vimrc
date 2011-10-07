set nocompatible
filetype plugin on
filetype plugin indent on
syntax on

" general options
set laststatus=2 " turn on status line
set nowrap  " no wrapping lines
set nobackup " no backup files (backupfile~)
set clipboard+=unnamed " yank and copy to X clipboard
set backspace=2 " full backspacing capabilities
set ruler " show ruler
set mouse=a " enable mouse
set showmatch " show matching parentesis
set number " show line numbers
set wildmenu " show command tab-completion menu
set hlsearch " highlight search results
set ignorecase " case-insensetive search
set smartcase " uppercase causes case-sensetive search
set autoindent " automatically indent the next line
set smartindent " be smart about it
set tabstop=4 " tabs are four spaces wrong
set shiftwidth=4 " n cols for autoindenting
set expandtab " insert spaces  instead of tabs
set guioptions-=m " remove the menubar from gvim
set guioptions-=T " remove the toolbar from gvim
set guioptions-=r " remove right-hand scrollbar
set guifont=Monaco\ 9

if v:version >= 703
    set colorcolumn=80
endif

if has("gui_running")
    set lines=999 columns=999
endif

" statusline
set statusline=%#Identifier#%{winnr()}\ " window number
set statusline+=%* " Switch back to normal statusline highlight
set statusline+=%f
set statusline+=%#Comment#\ %r%m " [RO][modified]
set statusline+=%#Comment#\ (\%L\ lines)[%l:%c]\ " Lines in file, lineno, colno
set statusline+=%* 

" Solarized options
set t_Co=16
let g:solarized_termcolors=16
syntax enable

if has('gui_running')
    set background=dark
else
    set background=dark
endif

colorscheme solarized

" Taglist settings
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Use_Right_Window = 1
let Tlist_Auto_Update = 1
let Tlist_WinWidth = 50
let Tlist_GainFocus_On_ToggleOpen = 1

noremap <silent> <left> :NERDTreeToggle<CR>
noremap <silent> <right> :TlistToggle<CR>

" Vundle config
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'vim-scripts/taglist.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'ervandew/supertab'
