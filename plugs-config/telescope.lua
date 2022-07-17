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

-- fzf native
-- You dont need to set any of these options. These are the default ones. Only
-- the loading is important
require('telescope').setup {
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  }
}
-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require('telescope').load_extension('fzf')
