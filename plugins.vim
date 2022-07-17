call plug#begin('~/.config/nvim/plugs')
  Plug 'airblade/vim-gitgutter'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
  Plug 'mbbill/undotree'
  Plug 'mhinz/vim-startify'
  Plug 'morhetz/gruvbox'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
  Plug 'nvim-treesitter/playground'
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/nvim-compe'
  "Plug 'kyazdani42/nvim-web-devicons' " for file icons
  Plug 'ryanoasis/vim-devicons'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  "too many files open error
  "Plug 'kyazdani42/nvim-tree.lua'
  Plug 'preservim/nerdtree'
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

