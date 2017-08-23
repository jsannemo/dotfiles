" Use , as leader
let mapleader=","
let g:mapleader=","

" Save with sudo using :W
command W w !sudo tee % > /dev/null

" Use ,pp to toggle paste mode
map <leader>pp :setlocal paste!<cr>

" Use Ctrl+L to clear highlighting
map <C-l> :noh<cr>

" Tab handling
" ,te for open new tab in current directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/
" ,tx for close tab
map <leader>tx :tabclose<cr>
" ,tn for next tab
map <leader>tn :tabnext<cr>
" ,tp for last tab
map <leader>tp :tabprevious<cr>
