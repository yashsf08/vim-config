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
" => Fugitive
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NOTE: not really need at this moment because I can directly use lazy git
" then using a client itself inside vim

" let g:netrw_browser_viewer = 'xdg-open' " Linux
" let g:netrw_browser_viewer = 'open' " macOS

" let g:netrw_browsex_viewer = "wslview"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => git Gutter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TODO: basic implementation is done came improve on it later

let g:gitgutter_map_keys = 0     " disable default key binds
let g:gitgutter_max_signs = 500  " default value (Vim < 8.1.0614, Neovim < 0.4.0)
let g:gitgutter_max_signs = -1   " default value (otherwise)
let g:gitgutter_show_msg_on_hunk_jumping = 1
let g:gitgutter_enabled = 0

let g:gitgutter_sign_added = ''
let g:gitgutter_sign_modified = ''
let g:gitgutter_sign_removed = ''
let g:gitgutter_sign_removed_first_line = ''
let g:gitgutter_sign_removed_above_and_below = ''
let g:gitgutter_sign_modified_removed = ''

" Keybinds
nmap <Leader>gj :GitGutterNextHunk<CR>
nmap <Leader>gk :GitGutterPrevHunk<CR>
nnoremap <Leader>gs :GitGutterStageHunk<CR>
nnoremap <Leader>gu :GitGutterUndoHunk<CR>
nnoremap <Leader>gb :GitGutterBlameLine<CR>
nnoremap <Leader>gt :GitGutterToggle<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editor Configs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
au FileType gitcommit let b:EditorConfig_disable = 1                        " disable editor configs for specific file like gitcommit
" let g:EditorConfig_disable_rules = ['trim_trailing_whitespace']

