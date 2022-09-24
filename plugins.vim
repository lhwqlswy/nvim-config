call plug#begin('~/.config/nvim/plugs')
  Plug 'airblade/vim-gitgutter'
  Plug 'EdenEast/nightfox.nvim'
  Plug 'feline-nvim/feline.nvim'
  Plug 'nanozuki/tabby.nvim'
  Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
  Plug 'folke/trouble.nvim'
  Plug 'nvim-lualine/lualine.nvim'
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
  Plug 'kyazdani42/nvim-web-devicons' " for file icons
  "Plug 'ryanoasis/vim-devicons'
  "Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'kyazdani42/nvim-tree.lua'
  "Plug 'preservim/nerdtree'
  "Plug 'tbabej/taskwiki'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
  "Plug 'vim-airline/vim-airline'
  "Plug 'vim-airline/vim-airline-themes'
  Plug 'vim-utils/vim-man'
  Plug 'voldikss/vim-floaterm'
  "Plug 'vimwiki/vimwiki'
  Plug 'lukas-reineke/indent-blankline.nvim'
call plug#end()

