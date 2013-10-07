"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

""use keys for navigating between tabs
nnoremap <C-Up> gT
nnoremap <C-Down> gt
nnoremap <C-n>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
nnoremap <C-b>     :tabprev<CR>

" Fast saving
nmap <leader>w :w!<cr>

"TAB settings.
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" More Common Settings.
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell

"set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2

"set relativenumber
set number
set norelativenumber

"set undofile
set shell=/bin/bash
set lazyredraw
set matchtime=3

syntax on

set term=builtin_ansi
if $TERM == 'screen'
    set term=xterm
endif
