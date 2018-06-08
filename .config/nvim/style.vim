" Enable CursorLine
set cursorline

" Set relativenumber
set relativenumber
set number

" Default Colors for CursorLine
highlight CursorLine ctermbg=235 ctermfg=None

" Highlight Current Line Number
hi CursorLineNR cterm=bold ctermbg=None ctermfg=Yellow

" Highlight white spaces
highlight ExtraWhitespace ctermbg=red guibg=re
match ExtraWhitespace /\s\+\%#\@<!$/

" Highlight 80 columns
highlight ColorColumn ctermbg=236
let &colorcolumn=join(range(81,999),",")

" Highlight git diff
hi DiffAdd cterm=bold ctermbg=21 ctermfg=255
hi DiffChange cterm=bold ctermbg=21 ctermfg=255
hi DiffText cterm=bold ctermbg=21 ctermfg=255
hi DiffDelete cterm=bold ctermbg=21 ctermfg=255
