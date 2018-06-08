" ----------------------------------------------------------------------
" | Plugin - NerdTree                                                  |
" ----------------------------------------------------------------------
noremap <leader>ft :NERDTreeToggle<CR>

" Vim's default file browser
let g:NERDTreeHijackNetrw = 1

" ----------------------------------------------------------------------
" | Plugin - CtrlP                                                     |
" ----------------------------------------------------------------------
let g:ctrlp_working_path_mode = 'a'

" Ignore custom folders
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|vendor'

" Ignore git ignored folders
let g:ctrlp_user_command = ['find %s -type f']

" ----------------------------------------------------------------------
" | Plugin - Ag                                                        |
" ----------------------------------------------------------------------
noremap <C-F> :Ag!<space>

" ----------------------------------------------------------------------
" | Plugin - Airline                                                   |
" ----------------------------------------------------------------------
let g:airline_powerline_fonts = 1
let g:airline_theme = 'kalisi'
let g:airline#extensions#tabline#enabled = 1

" ----------------------------------------------------------------------
" | Plugin - vim-multiple-cursors                                      |
" ----------------------------------------------------------------------
let g:multi_cursor_quit_key='<C-c>'
nnoremap <C-c> :call multiple_cursors#quit()<CR>

" ----------------------------------------------------------------------
" | Plugin - Syntastic                                                 |
" ----------------------------------------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_aggregate_errors = 1

" ----------------------------------------------------------------------
" | Plugin - 907th/vim-auto-save                                       |
" ----------------------------------------------------------------------
let g:auto_save = 1
