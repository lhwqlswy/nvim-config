call plug#begin('~/.config/nvim/vim-plug')
  Plug 'airblade/vim-gitgutter'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'lervag/vimtex'
  " Plug 'maxmellon/vim-jsx-pretty'
  Plug 'mbbill/undotree'
  Plug 'mhinz/vim-startify'
  Plug 'morhetz/gruvbox'
  Plug 'neovim/nvim-lspconfig'
  " Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'preservim/nerdtree'
  Plug 'ryanoasis/vim-devicons'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'vim-utils/vim-man'
  Plug 'voldikss/vim-floaterm'
call plug#end()

