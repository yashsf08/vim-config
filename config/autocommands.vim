" config/autocommands.vim

" Automatically read file when changed outside of Vim
autocmd BufEnter * checktime

" Highlight yanked text
autocmd TextYankPost * silent! lua vim.highlight.on_yank()
