" config/keymaps.vim

" Remap space as the leader key
noremap <Space> <Nop>
let mapleader = " "

" General keymaps
nnoremap <Leader>w :w<CR>               " Save file
nnoremap <C-s>     :w<CR>
inoremap <C-s>     :<Esc>w<CR>

nnoremap <C-q>     :q<CR>               " Quit file
inoremap kj <Esc>                       " Fast exit insert mode

" Window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


" =====================
" Search Enhancements
" =====================

" Clear search highlighting quickly
nnoremap <Leader>h :noh<CR>

" Search word under cursor and center screen
nnoremap * :keepjumps normal! mi*`i<CR>

" Faster search and replace
nnoremap <Leader>s :%s//g<Left><Left>  " Start a global search and replace

" ======================
" Indentation Shortcuts
" ======================

nnoremap < <<
nnoremap > >>

" In visual mode, use < and > to indent or un-indent without leaving visual mode
vnoremap < <gv
vnoremap > >gv

" ======================
" Text Manipulation
" ======================

" Move lines of text up or down (Visual Mode)
xnoremap <A-j> :m '>+1<CR>gv-gv
xnoremap <A-k> :m '<-2<CR>gv-gv

" Move lines of text up or down (Normal Mode)
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==

" ======================
" Buffer & Tab Management
" ======================

" Close current buffer
nnoremap <Leader>bd :bdelete<CR>
nnoremap <Leader>c  :close<CR>

" Close all buffers except current one
nnoremap <Leader>bo :bufdo bdelete<CR>:e#<CR>

" move between buffers
nnoremap <A-l>  :bnext<CR>
nnoremap <A-h>  :bprev<CR>

nnoremap <S-l>  $
nnoremap <S-h>  0

" ======================
" Quickfix / Location List
" ======================

" Open and navigate quickfix list
nnoremap <Leader>co :copen<CR>
nnoremap <Leader>cn :cnext<CR>
nnoremap <Leader>cp :cprev<CR>
nnoremap <Leader>cc :cclose<CR>

" config/keymaps.vim

" Fast Ex command mode
nnoremap ; :
nnoremap : ;


" Tab management
nnoremap <F1> :tabnew<CR>
vnoremap <F1> <Esc>:tabnew<CR>
inoremap <F1> <Esc>:tabnew<CR>

nnoremap <F2> :tabnext<CR>
vnoremap <F2> <Esc>:tabnext<CR>
inoremap <F2> <Esc>:tabnext<CR>

nnoremap <F6> :tabclose<CR>

" Window management
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Resize windows with arrows
nnoremap <C-Up> :resize -2<CR>
nnoremap <C-Down> :resize +2<CR>
nnoremap <C-Left> :vertical resize -2<CR>
nnoremap <C-Right> :vertical resize +2<CR>

" Open file explorer (NERDTree or alternative)
nnoremap <Leader>e :NERDTreeToggle<CR>

" Yank to system clipboard
vnoremap <Leader>y "+y

