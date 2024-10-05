" config/plugins.vim

" Install plugins using vim-plug
call plug#begin('~/.vim/plugged')

" Essentials
Plug 'tpope/vim-sensible'            " Sensible default settings
Plug 'junegunn/fzf', { 'do': 'fzf#install()' }  " Fuzzy finder
Plug 'junegunn/fzf.vim'

Plug 'preservim/nerdtree'            " File explorer
Plug 'ryanoasis/vim-devicons'        " Icons for files

Plug 'tpope/vim-commentary'          " Commenting utility
Plug 'tpope/vim-surround'            " Surround text objects
Plug 'vim-airline/vim-airline'       " Status line
Plug 'vim-airline/vim-airline-themes'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'morhetz/gruvbox'

" Git integration
Plug 'tpope/vim-fugitive'            " Git commands in vim

" Alternative to Tree-sitter: vim-polyglot for enhanced syntax highlighting
" Syntax & Language Support
Plug 'sheerun/vim-polyglot'          " Language packs
" Plug 'neoclide/coc.nvim', {'branch': 'release'}  " Autocompletion engine

" LSP support for code navigation and IDE features
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

" Alternative for linting and static analysis: ALE
Plug 'dense-analysis/ale'

call plug#end()
