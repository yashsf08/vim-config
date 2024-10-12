"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Auto Pairs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Basic configuration for auto-pairs
let g:AutoPairsMapBS = 1  " Allow backspace to delete bracket pairs
let g:AutoPairsMapCR = 0  " Auto complete pairs on Enter | @Yash - Avoid since conflicting the key binds for <cr> 
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
