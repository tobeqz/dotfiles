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
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'
Plug 'tpope/vim-surround'
Plug 'dracula/vim'
Plug 'kjwon15/vim-transparent'
Plug 'myusuf3/numbers.vim'
Plug 'scrooloose/nerdtree'
Plug 'raimondi/delimitmate'
Plug 'rust-lang/rust.vim'
Plug 'vim-airline/vim-airline'
Plug 'embear/vim-localvimrc'
Plug 'vimsence/vimsence'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'tpope/vim-fugitive'
Plug 'ryanoasis/vim-devicons'
Plug 'ervandew/supertab'
Plug 'kien/rainbow_parentheses.vim'
Plug 'habamax/vim-godot'
Plug 'sheerun/vim-polyglot'
"Plug 'hrsh7th/nvim-compe'
Plug 'neoclide/coc.nvim'
Plug 'evanleck/vim-svelte'

call plug#end()
colorscheme dracula
set background=dark

let g:airline_powerline_fonts = 1

set completeopt=longest,menuone
let mapleader = " "
map <leader>p :GFiles<CR>
map <leader>o :Buffers<CR>
map <leader>n :NERDTree<CR>
map <leader>h :call CocActionAsync('doHover')<CR>

nnoremap <C-J> :bprev<CR>
nnoremap <C-L> :bnext<CR>

let g:SuperTabMappingForward = '<s-tab>'
let g:SuperTabMappingBackward = '<tab>'

let g:DevIconsEnableFoldersOpenClose = 1
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ""
let g:DevIconsDefaultFolderOpenSymbol = ""

let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {}
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['js'] = ""

" LSP config (the mappings used in the default file don't quite work right)
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>


set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
let g:completion_enable_auto_popup = 1

luafile /home/main/.config/nvim/compe-config.lua
