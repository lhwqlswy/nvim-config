set completeopt=longest,menuone,noinsert,noselect
let g:completion_matching_strategy_list=['exact', 'substring', 'fuzzy']

" LSP
luafile ~/.config/nvim/lsp/astro.lua
luafile ~/.config/nvim/lsp/dart.lua
luafile ~/.config/nvim/lsp/lua.lua
luafile ~/.config/nvim/lsp/vim.lua
luafile ~/.config/nvim/lsp/golang.lua
luafile ~/.config/nvim/lsp/ts.lua
luafile ~/.config/nvim/lsp/python.lua
" luafile ~/.config/nvim/lsp/julia.lua
luafile ~/.config/nvim/lsp/markdown.lua
luafile ~/.config/nvim/lsp/terraform.lua

" LSP mapping
" use telescope pickers instead
" nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
" nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
" nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gk <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> g[ <cmd>lua vim.diagnostic.goto_prev()<CR>
nnoremap <silent> g] <cmd>lua vim.diagnostic.goto_next()<CR>
nnoremap <silent> <leader>rn <cmd>lua vim.lsp.buf.rename()<CR>

" LSP auto-format
augroup format
  autocmd BufWritePre *.astro lua vim.lsp.buf.format({async = false})
  autocmd BufWritePre *.go lua vim.lsp.buf.format({async = false})
  autocmd BufWritePre *.js lua vim.lsp.buf.format({async = false})
  autocmd BufWritePre *.jsx lua vim.lsp.buf.format({async = false})
  autocmd BufWritePre *.tsx lua vim.lsp.buf.format({async = false})
  autocmd BufWritePre *.ts lua vim.lsp.buf.format({async = false})
  autocmd BufWritePre *.py lua vim.lsp.buf.format({async = false})
  autocmd BufWritePre *.lua lua vim.lsp.buf.format({async = false})
augroup end

