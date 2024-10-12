" =====================
" Light Line Configuration
" =====================

" let g:lightline = {
"       \ 'colorscheme': 'gotham256',
"       \ 'active': {
"       \   'left': [ [ 'mode', 'paste' ],
"       \             [ 'readonly', 'filename', 'modified', 'helloworld' ] ]
"       \ },
"       \ 'component': {
"       \   'helloworld': 'Hello, world!'
"       \ },
"       \ }
"
" lightline configuration
let g:lightline = {
      \ 'colorscheme': 'gotham256', 
      \ 'active': {
      \   'left': [ [ 'mode' ], [ 'gitbranch', 'readonly', 'filename', 'modified' ], [ 'gitdiff' ] ],
      \   'middle': [ [ 'coc_status' ] ],
      \   'right': [ [ 'lineinfo' ], [ 'percent' ], [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'coc_status': 'LightlineCocStatus',
      \   'gitbranch': 'FugitiveHead',
      \   'gitdiff': 'GitGutterDiff',
      \ }
      \ }

" Function to show Coc diagnostic status in the statusline with icons
function! LightlineCocStatus()
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info)
    return ''
  endif
  let errors = get(info, 'error', 0)
  let warnings = get(info, 'warning', 0)
  let hints = get(info, 'hint', 0)
  let messages = []
  if errors > 0
    call add(messages, ' '.errors)  " Error icon
  endif
  if warnings > 0
    call add(messages, ' '.warnings)  " Warning icon
  endif
  if hints > 0
    call add(messages, ' '.hints)  " Optional: Add an icon for hints if you want
  endif
  return join(messages, ' ')
endfunction

" Function to show Git diff (added, modified, removed) in the statusline with icons
function! GitGutterDiff()
  if exists('*GitGutterGetHunkSummary')
    let [added, modified, removed] = GitGutterGetHunkSummary()
    return '  '.added . '  '.modified . '  '.removed  " Git diff icons: added, modified, removed
  endif
  return ''
endfunction


