" Enable CursorLine
set cursorline

" Set relativenumber
set relativenumber
set number

" plugin - airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'simple'
let g:airline#extensions#tabline#enabled = 1

" set color scheme
colorscheme onedark

" Highlight 80 columns
highlight ColorColumn ctermbg=236
let &colorcolumn=join(range(81,999),",")
