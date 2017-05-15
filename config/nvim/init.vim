call plug#begin()

Plug 'nightsense/seabird' " requires terminal config: https://github.com/nightsense/seabird#step-3-configure-terminal-colours-if-using-vim-in-a-terminal

Plug 'w0rp/ale' " linter
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " autocomplete
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ervandew/supertab'
Plug 'hecal3/vim-leader-guide'
Plug 'editorconfig/editorconfig-vim'
Plug 'dodie/vim-disapprove-deep-indentation'
Plug 'takac/vim-hardtime'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'Zuyuanp/nerdtree-git-plugin'
Plug 'Raimondi/VimRegEx.vim'
Plug 'tpope/vim-surround'
Plug 'sbdchd/neoformat'
Plug 'christoomey/vim-tmux-navigator'
Plug 'benmills/vimux'

" javascript
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'ternjs/tern_for_vim', { 'for': 'javascript' }
Plug 'carlitux/deoplete-ternjs', { 'for': 'javascript' }
Plug 'othree/yajs.vim', { 'for': 'javascript' }
Plug 'othree/es.next.syntax.vim', { 'for': 'javascript' }
Plug 'mxw/vim-jsx', { 'for': 'javascript' }
Plug 'moll/vim-node', { 'for': 'javascript' }
Plug 'fleischie/vim-styled-components', { 'for': 'javascript' }
Plug 'flowtype/vim-flow', { 'for': 'javascript' }

call plug#end()

colo greygull

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
set colorcolumn=120
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

" prettier
let g:neoformat_javascript_prettier = {
    \ 'exe': 'prettier',
    \ 'args': ['--stdin', '--single-quote', '--trailing-comma es5', '--print-width 72', '--tab-width 4', '--write'],
    \ 'stdin': 1,
    \ }
let g:neoformat_enabled_javascript = ['prettier']

" auto-close vim if the only window left is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd BufWritePre *.js Neoformat " format when saving js files

nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>h <C-w>s<C-w>l

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

" NERDTree
nnoremap <leader>t :NERDTreeToggle<CR>

" vimux
map <leader>vp :VimuxPromptCommand<CR>
map <leader>vl :VimuxRunLastCommand<CR>
map <leader>vz :VimuxZoomRunner<CR>
