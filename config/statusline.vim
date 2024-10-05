" config/options.vim

" Set the color scheme
colorscheme gruvbox    " Replace with your preferred color scheme

" Enable 24-bit (true color) in Vim, if supported
if (has("termguicolors"))
  set termguicolors
endif

" Airline settings
let g:airline_theme='gruvbox'  " Set Airline theme to match the color scheme
let g:airline_powerline_fonts = 1  " Enable Powerline fonts if available

" Additional UI settings
set background=dark
