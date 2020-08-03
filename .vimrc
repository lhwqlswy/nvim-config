syntax on

set autoread
set autowrite
set background=dark
set backspace=indent,eol,start
set clipboard=unnamed
set cmdheight=2
set colorcolumn=80
set completeopt=longest,menuone
set encoding=utf8
set esckeys
set expandtab
set exrc
set incsearch
set laststatus=2
set modelines=0
set nobackup
set nocompatible
set noerrorbells
set noswapfile
set nu
set relativenumber
set ruler
set scrolloff=5
set shiftwidth=2
set smartcase
set smartindent
set tabstop=2 softtabstop=2
set timeoutlen=1000
set ttimeoutlen=100
set undodir=~/.vim/undo
set undofile
set updatetime=50
set wrap

highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'mbbill/undotree'
Plug 'morhetz/gruvbox'
"Plug 'prabirshrestha/vim-lsp'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-syntastic/syntastic'
Plug 'vim-utils/vim-man'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

colorscheme gruvbox

filetype on
filetype plugin on
filetype indent on

if executable('rg')
  let g:rg_derive_root='true'
endif

" map
let mapleader=" "

"let g:airline#extensions#tabline#enabled=1
"let g:airline_section_b='%{strftime("%Y/%m/%d %H:%M:%S")}'
let g:airline_section_c='%F'
let g:airline_section_y=airline#section#create_right(['ffenc', 'BN: %{bufnr("%")}'])
"let g:lsp_diagnostics_float_cursor = 1
"let g:syntastic_debug=3
"let g:syntastic_go_checkers = ['go', 'golint', 'govet'], see https://github.com/golang/go/issues/34142
let $FZF_DEFAULT_OPTS="--layout=reverse --border=rounded"
"let g:lsp_diagnostics_echo_cursor=1
let g:lsp_semantic_enabled=1
let g:netrw_banner=0
"let g:netrw_browse_split=2
let g:netrw_winsize=25
let g:syntastic_aggregate_errors=1
let g:syntastic_go_checkers = ['go', 'golint', 'gofmt']

" general mapping
cnoremap <C-a> <Home>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
inoremap <C-s> <Esc>:w<CR>a
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-p> :GFiles<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <Leader>R <Plug>NetrwRefresh
nnoremap <Leader>pf :Files<CR> 
nnoremap <Leader>phw :h <C-r>=expand("<cword>")<CR><CR>
nnoremap <Leader>ps :Rg<space>
nnoremap <Leader>pv :wincmd v<bar>:Ex<bar>:vertical resize 25<CR>
nnoremap <Leader>pw :Rg <C-r>=expand("<cword>")<CR><CR>
nnoremap <Leader>q :q!<CR>
nnoremap <Leader>u :UndotreeShow<CR>
nnoremap <Leader>. :Errors<CR><Bar>:lne<CR>
nnoremap <Leader>, :Errors<CR><Bar>:lpre<CR>

augroup LspGo
  au!
"  autocmd User lsp_setup call lsp#register_server({
"    \ 'name': 'go-lang',
"    \ 'cmd': {server_info->['gopls']},
"    \ 'whitelist': ['go'],
"    \ })
"  autocmd FileType go autocmd BufWritePre <buffer> :SyntasticCheck<CR>
"  "autocmd FileType go autocmd BufWritePre * LspDocumentFormatSync
"  autocmd FileType go inoremap <expr> <C-c> pumvisible() ? "\<C-e>" : "\<C-c>"
"  autocmd FileType go inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
"  autocmd FileType go inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
"  autocmd FileType go inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"  autocmd FileType go nmap <Leader>rn <Plug>(lsp-rename)
"  autocmd FileType go nmap K <Plug>(lsp-hover)
"  autocmd FileType go nmap gd <Plug>(lsp-definition)
"  autocmd FileType go nmap gi <Plug>(lsp-implementation)
"  autocmd FileType go nmap gr <Plug>(lsp-references)
"  autocmd FileType go nmap gs <Plug>(lsp-signature-help)
"  autocmd FileType go nmap gt <Plug>(lsp-type-definition)
"  autocmd FileType go nnoremap gf :!go fmt %<CR><CR>
"  "autocmd FileType go setlocal omnifunc=lsp#complete
augroup END

augroup LspErlang
  au!
"  autocmd User lsp_setup call lsp#register_server({
"    \ 'name': 'erlang',
"    \ 'cmd': {server_info->['erlang_ls']},
"    \ 'whitelist': ['erlang'],
"    \ })
"  autocmd FileType erlang setlocal omnifunc=lsp#complete
"  autocmd FileType erlang nmap gd <Plug>(lsp-definition)
"  "autocmd FileType erlang autocmd BufWritePre * LspDocumentFormatSync
augroup END

augroup LspCommon
  au!
  autocmd FileType go,erlang inoremap <silent> <expr> <C-c> pumvisible() ? "\<C-e>" : "\<C-c>"
  autocmd FileType go,erlang inoremap <silent> <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
  autocmd FileType go,erlang inoremap <silent> <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
  autocmd FileType go,erlang inoremap <silent> <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
  autocmd FileType go,erlang nmap <Leader>rn <Plug>(coc-rename)
  autocmd FileType go,erlang nnoremap K :call CocAction('doHover')<CR>
  autocmd FileType go,erlang nmap gd <Plug>(coc-definition)
  autocmd FileType go,erlang nmap gi <Plug>(coc-implementation)
  autocmd FileType go,erlang nmap gr <Plug>(coc-references)
  autocmd FileType go,erlang nmap gt <Plug>(coc-type-definition)
  autocmd FileType go,erlang nmap g[ <Plug>(coc-diagnostic-prev-error)
  autocmd FileType go,erlang nmap g] <Plug>(coc-diagnostic-next-error)
  "autocmd FileType go,erlang autocmd BufWritePre <buffer> :call CocAction('format')
	autocmd FileType go,erlang nnoremap <expr><C-f> coc#util#has_float() ? coc#util#float_scroll(1) : "\<C-f>"
	autocmd FileType go,erlang nnoremap <expr><C-b> coc#util#has_float() ? coc#util#float_scroll(0) : "\<C-b>"
  autocmd FileType go,erlang command! -nargs=0 Format :call CocAction('format')
augroup END

