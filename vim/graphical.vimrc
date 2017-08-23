" Complement command mode with Ctrl+A for start, Ctrl+E for end
cnoremap <C-A> <Home>
cnoremap <C-E> <End>

" Add line numbers
set number

" Highlight current line with a cursor line
set cursorline

" Custom status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c
set laststatus=2 " Always show status line

" Use colors that look good on dark backgrounds
set background=dark

" Use molokai color scheme
let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai

" Do not use bells on errors
set noerrorbells
set novisualbell

" Do not redraw screen while executing macros
set lazyredraw

" Show current position in file
set ruler

" Helper functions
" Return true if we are in pastemode
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

" Disable vim intro
set shm+=I

" Show matching brackets when the cursor is over one
set showmatch

" Get some margin for the current line cursor
set scrolloff=7
