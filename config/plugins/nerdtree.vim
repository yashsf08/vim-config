"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NerdTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" autocmd vimenter * NERDTree                               " bascially open the NerdTree as soon as you open vim

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
