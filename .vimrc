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

" Don't save swp files in cwd
set directory-=.

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

" tmux.conf syntax hilighting
Plug 'keith/tmux.vim'

" A solid language pack
Plug 'sheerun/vim-polyglot'

" Git 
Plug 'tpope/vim-fugitive'

" Linting
Plug 'w0rp/ale'

" Git line-by-line status info
Plug 'airblade/vim-gitgutter'

" Distraction free mode
Plug 'junegunn/goyo.vim'

call plug#end()

" ALE config
let g:ale_sign_warning = '▲'
let g:ale_sign_error = '✗'
let g:ale_fixers = {
  \ 'javascript': ['eslint']
  \}

" gitgutter config
set updatetime=250
let g:gitgutter_sign_added = '∙'
let g:gitgutter_sign_modified = '∙'
let g:gitgutter_sign_removed = '∙'
let g:gitgutter_sign_modified_removed = '∙'

" A polite reminder to try new things
autocmd VimEnter * echo "Try :Gblame or :Goyo"

