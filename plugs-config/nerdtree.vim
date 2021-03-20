autocmd StdinReadPre * let s:std_in=1
" open nerdtree when opening vim
" autocmd VimEnter * if argc() == 1 && argv(0) == '.' | call InitLayout() | endif
nnoremap <Leader>nv :call InitLayout()<CR>
nnoremap <Leader>nf :NERDTreeFind<CR>
nnoremap <Leader>nb :Bookmark<CR>

let g:NERDTreeMinimalUI=1
let g:NERDTreeMapJumpNextSibling='<Nop>'
let g:NERDTreeMapJumpPrevSibling='<Nop>'
let g:NERDTreeShowBookmarks=1

function! InitLayout() abort
  execute ":NERDTreeFocus"
  let l:win_count = winnr('$')
  if l:win_count == 1
    execute ":wincmd v | :vertical resize 30 | :wincmd l | :Startify"
  else
    execute ":vertical resize 30"
  endif
endfunction

