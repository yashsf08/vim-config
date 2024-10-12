"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => snipMate (beside <TAB> support <CTRL-j>)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable SnipMate
" let g:snipMate = {}
" let g:snipMate.no_default_aliases = 1  " Disable default aliases if you want customizations
" let g:snipMate = { 'snippet_version' : 1 }

" ino <C-j> <C-r>=snipMate#TriggerSnippet()<cr>
" snor <C-j> <esc>i<right><C-r>=snipMate#TriggerSnippet()<cr>


" Set snippet triggers
" <Tab> to expand snippets
" imap <expr> <Tab> snipMate#ExpandSnippetOrJump() ? "\<C-R>=snipMate#ExpandSnippetOrJump()<CR>" : "\<Tab>"
" smap <expr> <Tab> snipMate#ExpandSnippetOrJump() ? "\<C-R>=snipMate#ExpandSnippetOrJump()<CR>" : "\<Tab>"

" <S-Tab> to jump backward in snippets
" imap <expr> <S-Tab> snipMate#CanJumpBackwards() ? "\<C-R>=snipMate#JumpBackwards()<CR>" : "\<S-Tab>"
" smap <expr> <S-Tab> snipMate#CanJumpBackwards() ? "\<C-R>=snipMate#JumpBackwards()<CR>" : "\<S-Tab>"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => snipMate (beside <TAB> support <CTRL-j>)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<cr>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories=["UltiSnips", "vim-snippets"]


