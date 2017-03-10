call plug#begin()

Plug 'NLKNguyen/papercolor-theme'
Plug 'w0rp/ale' " linter
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " autocomplete
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ervandew/supertab'
Plug 'hecal3/vim-leader-guide'
Plug 'editorconfig/editorconfig-vim'
Plug 'dodie/vim-disapprove-deep-indentation'
Plug 'takac/vim-hardtime'
Plug 'scrooloose/nerdtree'
Plug 'Zuyuanp/nerdtree-git-plugin'
Plug 'Raimondi/VimRegEx.vim'
Plug 'tpope/vim-surround'

" javascript
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'ternjs/tern_for_vim', { 'for': 'javascript' }
Plug 'carlitux/deoplete-ternjs', { 'for': 'javascript' }
Plug 'othree/yajs.vim', { 'for': 'javascript' }
Plug 'othree/es.next.syntax.vim', { 'for': 'javascript' }
Plug 'mxw/vim-jsx', { 'for': 'javascript' }
Plug 'moll/vim-node', { 'for': 'javascript' }

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

set conceallevel=1

set statusline+='%{ALEGetStatusLine()}'

filetype on
filetype plugin on
filetype plugin indent on
syntax enable

let g:deoplete#enable_at_startup = 1

" vim-javascript
let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
let g:javascript_conceal_arrow_function       = "⇒"

" vim-jsx
let g:jsx_ext_required = 0

" ctrlp
let g:ctrlp_custom_ignore = '\(node_modules\|dist\|coverage\|yarn.lock\)$'

" hardtime
let g:hardtime_default_on = 1
let g:hardtime_ignore_buffer_patterns = [ "NERD.*" ]

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

nnoremap <silent> <leader> :<c-u>LeaderGuide '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>LeaderGuideVisual '<Space>'<CR>

"ale
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

nnoremap <leader>t :NERDTreeToggle<CR>
