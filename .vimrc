" ----------------------------------------
" Encoding
" ----------------------------------------
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8

" ----------------------------------------
" Appearance
" ----------------------------------------
colorscheme desert

" ----------------------------------------
" Tabs and Indentation
" ----------------------------------------
set tabstop=4        " Number of visual spaces per TAB
set shiftwidth=4     " Spaces used for each step of (auto)indent
set expandtab        " Use spaces instead of tabs

set autoindent       " Copy indent from current line when starting a new line
set smartindent      " Smart autoindenting when starting new lines
set cindent          " C-style indentation (useful for C, PHP, Java, etc.)

" ----------------------------------------
" Key Mappings
" ----------------------------------------
let mapleader = ","  " Set leader key to comma

" Tab navigation
nnoremap <leader>n :tabnext<CR>
nnoremap <leader>p :tabprevious<CR>

" Buffer management
nnoremap <leader>q :bd<CR>        " Close buffer
nnoremap <leader>w :w<CR>         " Save file
nnoremap <leader>e :e .<CR>       " Open file explorer
nnoremap <leader>r :source $MYVIMRC<CR>  " Reload .vimrc

" Quickfix and search
nnoremap <leader>/ :nohlsearch<CR>
nnoremap <leader>cc :cclose<CR>
nnoremap <leader>co :copen<CR>

" Disable annoying accidental Ctrl-Z (suspends Vim)
nnoremap <C-z> <Nop>
