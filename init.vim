" NeoVim Configuration
" Version: Python Config
" By Alex Oloriz
" October 2019

"" CUSTOM SHORTCUTS
"
" Remap Escape
inoremap jk <ESC>

" Remap Leader key to '
let mapleader = "'"

" Semicolon to run commands
nnoremap ; :

" Leader key - save
noremap <Leader>w :w<CR>

" Leader key - save and exit NVim
noremap <Leader>e :wq<CR>

" Leader key - exit with no save
noremap <Leader>q :q!<CR>

" Pane Navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Paste from system function
vnoremap <Leader>y "+y
nnoremap <Leader>y "+y
vnoremap <Leader>p "+p
nnoremap <Leader>p "+p

" Line Numbering
nnoremap <Leader>n :set nonumber!<CR>
nnoremap <Leader>rn :set norelativenumber!<CR>

"" BASIC LOOK CONFIGURATION
"Enable syntax highlighting
syntax on

"Set shell as BASH
set shell=/bin/bash


"" PLUGIN MANAGEMENT
packadd minpac
call minpac#init()

" Managed plugins
call minpac#add('k-takata/minpac', {'type': 'opt'})
" Airline Statusbar
call minpac#add('vim-airline/vim-airline')
call minpac#add('vim-airline/vim-airline-themes')
let g:airline#extensions#tabline#enabled=1

" Code Folding
" call minpac#add('tmhedberg/SimpylFold')
" let g:SimpylFold_docstring_preview=1

" Syntax Checking
call minpac#add('vim-syntastic/syntastic')

" File Browsing from Vim
call minpac#add('scrooloose/nerdtree')
nnoremap <C-n> :NERDTreeToggle<CR>

" Code-completion engine
call minpac#add('ycm-core/YouCompleteMe')

" Plugin install and update
command! Pu call minpac#update()
command! Pc call minpac#clean()

"" PEP indentation
au BufNewFile,BufRead *.py
	\set tabstop=4
	\set softtabstop=4
	\set shiftwidth=4
	\set textwidth=79
	\set expandtab
	\set autoindent
	\set fileformat=unix
	\set encoding=utf-8
	\call minpac#add('vim-scripts/indentpython.vim')

" For future consideration:
" 1) Setup to recognize virtualenv
" 2) Add CtrlP search plugin
" 3) Add Tmux integration
" 4) Add mouse integration