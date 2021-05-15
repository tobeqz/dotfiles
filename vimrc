syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set autoindent
set expandtab
set smartindent
set nu
set wrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

call plug#begin('~/.vim/plugged')

Plug 'jremmen/vim-ripgrep'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'junegunn/fzf'
Plug 'neoclide/coc.nvim'
Plug 'tpope/vim-surround'
Plug 'dracula/vim'
Plug 'kjwon15/vim-transparent'
Plug 'myusuf3/numbers.vim'
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc-tsserver'
Plug 'ervandew/supertab'
Plug 'raimondi/delimitmate'
Plug 'rust-lang/rust.vim'
Plug 'vim-airline/vim-airline'
Plug 'embear/vim-localvimrc'

call plug#end()
colorscheme dracula
set background=dark

let g:airline_powerline_fonts = 1

set completeopt=longest,menuone
let mapleader = " "
map <leader>p :FZF<CR>
map <leader>n :NERDTree<CR>
map <leader>h :call CocActionAsync('doHover')<CR>

let g:SuperTabMappingForward = '<s-tab>'
let g:SuperTabMappingBackward = '<tab>'

