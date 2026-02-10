require'nvim-treesitter'.setup {
  -- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
  install_dir = vim.fn.stdpath('data') .. '/site'
}

-- require'nvim-treesitter'.install {
--   "astro",
--   "css",
--   "go",
--   "html",
--   "javascript",
--   "json",
--   "lua",
--   "markdown",
--   "python",
--   "scss",
--   "terraform",
--   "tsx",
--   "typescript",
--   "toml",
--   "vim",
--   "yaml"
-- }
