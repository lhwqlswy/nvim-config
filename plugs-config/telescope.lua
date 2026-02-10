require "telescope".setup {
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

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<Leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<Leader>pb', builtin.buffers, {})
vim.keymap.set('n', '<Leader>ps', builtin.live_grep, {})
vim.keymap.set('n', '<Leader>pw', builtin.grep_string, {})
vim.keymap.set('n', '<Leader>ph', builtin.help_tags, {})
vim.keymap.set('n', '<Leader>pk', builtin.keymaps, {})
vim.keymap.set('n', '<Leader>pi', builtin.lsp_incoming_calls, {})
vim.keymap.set('n', '<Leader>po', builtin.lsp_outgoing_calls, {})
vim.keymap.set('n', '<Leader>pc', builtin.autocommands, {})

-- lsp
vim.keymap.set('n', 'gd', builtin.lsp_definitions, {})
vim.keymap.set('n', 'gr', builtin.lsp_references, {})
vim.keymap.set('n', 'gx', builtin.diagnostics, {})
vim.keymap.set('n', 'gi', function() builtin.lsp_implementations({ fname_width = 100 }) end, {})
vim.keymap.set('n', 'gs', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<C-I>',
  function() vim.lsp.buf.code_action({ context = { only = { "source.organizeImports" } }, apply = true }) end, {})

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
