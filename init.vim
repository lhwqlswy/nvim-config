syntax on

set autoread
set autowrite
set backspace=indent,eol,start
set clipboard=unnamed
set cmdheight=2
set colorcolumn=80
set completeopt=longest,menuone,noinsert,noselect
set encoding=utf8
"set esckeys
set nohlsearch
set expandtab
set exrc
set incsearch
set laststatus=2
set modelines=0
set nobackup
set nocompatible
set noea
set noerrorbells
set nofixendofline
set noswapfile
set nu
set relativenumber
set ruler
set scrolloff=5
set shiftwidth=2
set smartcase
set smartindent
set tabstop=2 softtabstop=2
set termguicolors
set timeoutlen=1000
set ttimeoutlen=100
set undodir=~/.config/nvim/undo
set undofile
set updatetime=50
set wrap
"set cursorline

highlight ColorColumn ctermbg=0 guibg=lightgrey

source $HOME/.config/nvim/plugins.vim

" map
let mapleader=" "

source $HOME/.config/nvim/plugs-config/airline.vim
source $HOME/.config/nvim/plugs-config/lsp.vim
source $HOME/.config/nvim/plugs-config/floaterm.vim
source $HOME/.config/nvim/plugs-config/fugitive.vim
source $HOME/.config/nvim/plugs-config/fzf.vim
source $HOME/.config/nvim/plugs-config/nerdtree.vim
source $HOME/.config/nvim/plugs-config/netrw.vim
source $HOME/.config/nvim/plugs-config/rg.vim
source $HOME/.config/nvim/plugs-config/taskwiki.vim
source $HOME/.config/nvim/plugs-config/undotree.vim
source $HOME/.config/nvim/plugs-config/vimtex.vim
source $HOME/.config/nvim/plugs-config/vimwiki.vim
source $HOME/.config/nvim/plugs-config/react.vim

filetype on
filetype plugin on
filetype indent on

" general mapping
cnoremap <C-a> <Home>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
inoremap <C-s> <Esc>:w<CR><ESC>
nnoremap <C-s> <Esc>:w<CR>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <Leader>q :q!<CR>
nnoremap <Leader>te :tabedit %<CR>
nnoremap <Leader>tc :tabclose<CR>
" nearest square bracket
nnoremap ]b :call searchpair('\[','','\]')<cr>
nnoremap [b :call searchpair('\[','','\]','b')<cr>

" yank
au TextYankPost * silent! lua vim.highlight.on_yank {timeout=500}

