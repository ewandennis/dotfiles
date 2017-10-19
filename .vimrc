set number
set linebreak
set textwidth=0
set wrapmargin=0
set visualbell

set clipboard=unnamed

set hlsearch
set smartcase
set incsearch

set autoindent
set expandtab
set shiftwidth=2
set smartindent
set smarttab
set softtabstop=2

set ruler

set undolevels=1000
set backspace=indent,eol,start
set hidden

syntax on
colorscheme monokai

set laststatus=2
"set showtabline=2
set noshowmode

nnoremap K :bnext<Cr>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set mouse=a

" Fast timeout for key code sequences to complete - faster airline rendering
" when leaving insert mode
set ttimeoutlen=10
set timeoutlen=10
set lazyredraw

call plug#begin('~/.vim/plugged')
Plug 'Valloric/YouCompleteMe', {'do': 'git submodule update --init --recursive'}
Plug 'keith/tmux.vim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
call plug#end()


" YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion = 1

