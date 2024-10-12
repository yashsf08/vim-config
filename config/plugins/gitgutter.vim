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
noremap <Leader>gs :GitGutterStageHunk<CR>
nnoremap <Leader>gu :GitGutterUndoHunk<CR>
nnoremap <Leader>gb :GitGutterBlameLine<CR>
nnoremap <Leader>gt :GitGutterToggle<CR>
