" config/keymaps.vim

" Leader key
let mapleader=" "

" General keymaps
nnoremap <Leader>w :w<CR>               " Save file
nnoremap <Leader>q :q<CR>               " Quit file
nnoremap <Leader>h :nohlsearch<CR>      " Clear search highlight
inoremap kj <Esc>                       " Fast exit insert mode

" Window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Buffer navigation
nnoremap <S-l> :bnext<CR>
nnoremap <S-h> :bprevious<CR>
