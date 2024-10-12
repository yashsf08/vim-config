" config/plugin_configs.vim
" """"""""""""""""""""""""""""""""""""""""""""""""""""
" """"""""""""""""""""""""""""""""""""""""""""""""""""

source ~/.vim/config/plugins/nerdtree.vim                               " File Browser
source ~/.vim/config/plugins/airline.vim                                " Status Line
source ~/.vim/config/plugins/fzf.vim                                    " File / Text Search
source ~/.vim/config/plugins/autopair.vim                               " File / Text Search
source ~/.vim/config/plugins/snippets.vim                               " Snippets Config
source ~/.vim/config/plugins/gitgutter.vim                              " git status live
source ~/.vim/config/plugins/editor-configs.vim                         " git status live
source ~/.vim/config/plugins/python-development.vim                     " git status live

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CoC.nvim ---> OLD
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use Tab for navigating autocomplete and expanding/jumping in snippets
inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ UltiSnips#CanExpandSnippet() ? "\<C-R>=UltiSnips#ExpandSnippet()<CR>" :
      \ UltiSnips#CanJumpForwards() ? "\<C-R>=UltiSnips#JumpForwards()<CR>" :
      \ "\<Tab>"

inoremap <silent><expr> <S-Tab>
      \ pumvisible() ? "\<C-p>" :
      \ UltiSnips#CanJumpBackwards() ? "\<C-R>=UltiSnips#JumpBackwards()<CR>" :
      \ "\<S-Tab>"

" Use Enter for confirming completion
inoremap <silent><expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

" Make <C-j> and <C-k> additional UltiSnips navigation
let g:UltiSnipsExpandTrigger="<C-j>"
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"


