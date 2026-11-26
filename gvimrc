" Make stuff less crampy. 4px line height sort of thing
set linespace=4

" Initial window size
set lines=30
set columns=120

" Font stuff
" Also includes a map for presentations to make font biggggg
set guifont=JetBrains\ Mono:h16
nnoremap <leader>big :set guifont=JetBrains\ Mono:h20<cr>

" Theme stuff
set background=dark
colorscheme gruvbox

" Cleaner gui
set go=egm

function! LargeType()
  enew
  setlocal buftype=nofile bufhidden=wipe noswapfile
  set guifont=JetBrains\ Mono:h50
  Goyo 100%x100%
  setlocal nonumber norelativenumber
  setlocal nocursorline colorcolumn=
  setlocal nospell wrap linebreak
  startinsert
endfunction

nnoremap <leader>xl :call LargeType()<CR>
