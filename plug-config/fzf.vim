let $FZF_DEFAULT_COMMAND="rg --files --line-number --hidden --follow --no-ignore-vcs -g '!{node_modules,.git}'"
let $FZF_DEFAULT_OPTS="--layout=reverse --border=rounded"
let g:fzf_layout={'window': {'width': 0.9, 'height': 0.8}}

nnoremap <C-p> :GFiles<CR>
nnoremap <Leader>pf :Files<CR> 
nnoremap <Leader>pl :Lines<CR> 
nnoremap <Leader>pm :Marks<CR> 
nnoremap <Leader>pb :Buffers<CR>
nnoremap <Leader>phw :h <C-r>=expand("<cword>")<CR><CR>

