call plug#begin('~/.config/nvim/plugs')
  Plug 'airblade/vim-gitgutter'
  "Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  "Plug 'junegunn/fzf.vim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'mbbill/undotree'
  Plug 'mhinz/vim-startify'
  Plug 'morhetz/gruvbox'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
  Plug 'nvim-treesitter/playground'
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/nvim-compe'
  Plug 'preservim/nerdtree'
  Plug 'ryanoasis/vim-devicons'
  "Plug 'tbabej/taskwiki'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'vim-utils/vim-man'
  Plug 'voldikss/vim-floaterm'
  "Plug 'vimwiki/vimwiki'
call plug#end()

