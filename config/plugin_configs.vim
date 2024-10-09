" config/plugin_configs.vim

" NERDTree config -- bascially open the NerdTree as soon as you open vim
" autocmd vimenter * NERDTree


" Basic settings for NERDTree
let NERDTreeShowHidden=1  " Show hidden files (like .git, .env, etc.)
let NERDTreeMinimalUI=1   " Simplify the NERDTree UI
let NERDTreeIgnore=['\.pyc$', '\~$', '\.class$', '\.swp$']  " Ignore Python bytecode and backup files
let NERDTreeAutoDeleteBuffer=1  " Close buffer when NERDTree opens a file

" Open files in NERDTree with Enter instead of opening a split
let NERDTreeMapActivateNode='<CR>'

" Optional: Customize NERDTree display style (icons, colors, etc.)
if exists('*WebDevIconsGetFileTypeSymbol')
    let g:NERDTreeIndicatorMapCustom = {
        \ 'Modified'  : '✹',
        \ 'Staged'    : '✚',
        \ 'Untracked' : '✭',
        \ 'Renamed'   : '➜',
        \ 'Unmerged'  : '═',
        \ 'Deleted'   : '✖',
        \ 'Dirty'     : '✗',
        \ 'Clean'     : '✔︎',
        \ 'Ignored'   : '☒',
        \ 'Unknown'   : '?'
        \ }
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => lightline/Airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Airline configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => FZF
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <Leader>f :Files<CR>
nnoremap <Leader>F :Rg<CR>



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CoC.nvim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 
" Use coc for autocompletion
inoremap <silent><expr> <C-Space> coc#refresh()


" Enable SnipMate snippets in coc.nvim
let g:coc_snippet_next = '<Tab>'
let g:coc_snippet_prev = '<S-Tab>'




let g:coc_global_extensions = ['coc-json', 'coc-python', 'coc-java', 'coc-clangd'] " coc-tsserver 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => snipMate (beside <TAB> support <CTRL-j>)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable SnipMate
let g:snipMate = {}
let g:snipMate.no_default_aliases = 1  " Disable default aliases if you want customizations
let g:snipMate = { 'snippet_version' : 1 }

ino <C-j> <C-r>=snipMate#TriggerSnippet()<cr>
snor <C-j> <esc>i<right><C-r>=snipMate#TriggerSnippet()<cr>


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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => python-development
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:python_highlight_all = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editor Configs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
au FileType gitcommit let b:EditorConfig_disable = 1                        " disable editor configs for specific file like gitcommit
" let g:EditorConfig_disable_rules = ['trim_trailing_whitespace']

