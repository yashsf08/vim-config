" config/plugin_configs.vim

" NERDTree config -- bascially open the NerdTree as soon as you open vim
" autocmd vimenter * NERDTree

" Airline configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" fzf config
nnoremap <Leader>f :Files<CR>

" coc.nvim settings
" Use coc for autocompletion
inoremap <silent><expr> <C-Space> coc#refresh()
let g:coc_global_extensions = ['coc-json', 'coc-python', 'coc-tsserver']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Auto Pairs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Basic configuration for auto-pairs
let g:AutoPairsMapBS = 1  " Allow backspace to delete bracket pairs
let g:AutoPairsMapCR = 1  " Auto complete pairs on Enter
let g:AutoPairsFlyMode = 0  " Disable fly mode for better control

" Java-specific configuration
autocmd FileType java let b:AutoPairs = {
    \ '(': ')',
    \ '[': ']',
    \ '{': '}',
    \ '"': '"',
    \ "'": "'",
    \ '<': '>',  " For generics and other cases in Java
    \ }

" Python-specific configuration
autocmd FileType python let b:AutoPairs = {
    \ '(': ')',
    \ '[': ']',
    \ '{': '}',
    \ '"': '"',
    \ "'": "'",
    \ }

" Optional: Disable auto-pairs for specific file types
" autocmd FileType markdown let b:AutoPairs = {}

