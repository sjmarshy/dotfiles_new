call dein#install()
call plug#begin()

Plug 'NLKNguyen/papercolor-theme'

Plug 'w0rp/ale' " linter

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " autocomplete

Plug 'ctrlpvim/ctrlp.vim'

Plug 'ervandew/supertab'

call plug#end()

colo PaperColor

set nobackup

set showcmd
set showmode

set modeline
set modelines=1
set title

set relativenumber
set numberwidth=3

nnoremap <Space> <NOP>
let mapleader="\<Space>"

set nohlsearch
set incsearch
set ignorecase
set smartcase
set gdefault
set showmatch
set matchtime=1

set wrap
set colorcolumn=80
set cursorline

set scrolloff=20

set visualbell

set laststatus=2

set lazyredraw

set shiftwidth=4
set expandtab

filetype on
filetype plugin on
filetype plugin indent on
syntax enable

nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>h <C-w>s<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap H 0
nnoremap L $
vnoremap H 0
vnoremap L $

nmap <leader>e :CtrlP<cr>
nmap <leader>b :CtrlPBuffer<cr>
