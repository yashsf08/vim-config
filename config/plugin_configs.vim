" config/plugin_configs.vim

" NERDTree config
autocmd vimenter * NERDTree

" Airline configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" fzf config
nnoremap <Leader>f :Files<CR>

" coc.nvim settings
" Use coc for autocompletion
inoremap <silent><expr> <C-Space> coc#refresh()
let g:coc_global_extensions = ['coc-json', 'coc-python', 'coc-tsserver']
