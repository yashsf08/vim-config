"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editor Configs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
au FileType gitcommit let b:EditorConfig_disable = 1                        " disable editor configs for specific file like gitcommit
" let g:EditorConfig_disable_rules = ['trim_trailing_whitespace']

