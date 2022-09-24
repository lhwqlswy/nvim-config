require("nvim-tree").setup()

vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

vim.api.nvim_set_keymap('n', '<Leader>nv', ':NvimTreeOpen<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>nf', ':NvimTreeFindFile<CR>', { noremap = true })
