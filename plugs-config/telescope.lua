require "telescope".setup{
  defaults = {
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case',
      '--no-ignore-dot',
      -- '--ignore-file',
      -- '.gitignore'
    },
    file_ignore_patterns = {
      -- nodejs
      "yarn.lock",
      "node_modules",
      -- git
      ".git/.*"
    },
  }
}

vim.api.nvim_set_keymap('n', '<Leader>pf', ':lua require"telescope.builtin".find_files({hidden = true})<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>pb', '<cmd>Telescope buffers<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>ps', '<cmd>Telescope live_grep<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>pw', '<cmd>Telescope grep_string<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>pgb', '<cmd>Telescope git_branches<cr>', {noremap = true})

