" Enable plugins based on filetype
filetype plugin on
filetype indent on

" Enable syntax highlighting
syntax enable

" Use spaces instead of tabs
set expandtab

" Will make backspace and tab use shiftwidth spaces instead
set smarttab

" Make tabs be 4 spaces
set shiftwidth=4
set tabstop=4

" Indentation
set autoindent " Use indentation from last line
set smartindent " Automatically add indentation after e.g. {
set cindent " Use C-indendation

" Namespaces and visibility labels should not increase indentation
set cino=N-sg0

" Use utf8 as standard encoding
set encoding=utf8

" Use unix line endings by default
set fileformats=unix,dos,mac

" Disable backups and swaps
set nobackup
set noswapfile
set nowritebackup

" Persistent undos
try
    set undodir=~/.vim_runtime/temp_dirs/undodir
    set undofile
catch
endtry

" Increase the edit history
set history=500

" Allow backspace to work over e.g. autoindents
set backspace=eol,start,indent

" Reload files when changed outside
set autoread

" Return to last edit position when opening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
