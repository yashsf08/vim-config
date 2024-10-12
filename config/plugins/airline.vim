"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Airline settings
let g:airline_theme='oceanicnext'  " Set Airline theme to match the color scheme
let g:airline_powerline_fonts = 1  " Enable Powerline fonts if available

" Bold mode letters using Unicode
let g:airline_mode_map = {
      \ '__'   : '-',
      \ 'n'    : '𝐍',
      \ 'i'    : '𝐈',
      \ 'R'    : '𝐑',
      \ 'v'    : '𝐕',
      \ 'V'    : '𝐕𝐋',
      \ 'c'    : '𝐂',
      \ 's'    : '𝐒',
      \ 'S'    : '𝐒𝐋',
      \ 't'    : '𝐓'
      \ }
" \ ''   : '𝐕𝐁',          " Bold Visual Block mode
" \ ''   : '𝐒𝐁',          " Bold Select Block mode
      

" Airline configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
