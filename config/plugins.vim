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

" Statusline / Tabline

Plug 'vim-airline/vim-airline'       " Status line
Plug 'vim-airline/vim-airline-themes'
" Plug 'itchyny/lightline.vim'

" Themes
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'morhetz/gruvbox'
Plug 'whatyouhide/vim-gotham'

Plug 'editorconfig/editorconfig-vim'


" Auto-pairing plugin
Plug 'jiangmiao/auto-pairs'


" Git integration
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Alternative to Tree-sitter: vim-polyglot for enhanced syntax highlighting
" Syntax & Language Support
Plug 'sheerun/vim-polyglot'          " Language packs
Plug 'neoclide/coc.nvim', {'branch': 'release'}  " Autocompletion engine

" Code Snippets
" Plug 'MarcWeber/vim-addon-mw-utils'  " Deps for SnipMate
" Plug 'garbas/vim-snipmate'           " engine for snippet

Plug 'SirVer/ultisnips'              " another engine for snippet
Plug 'honza/vim-snippets'  " Snippet library for various languages


" LSP support for code navigation and IDE features
" Plug 'prabirshrestha/vim-lsp'
" Plug 'mattn/vim-lsp-settings'

" Alternative for linting and static analysis: ALE
" Plug 'dense-analysis/ale'


" Spcific to python 
Plug 'vim-python/python-syntax'

call plug#end()
