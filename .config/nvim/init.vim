" --------------------------------------------------------------------
" | General Settings                                                 |
" --------------------------------------------------------------------
if $SHELL =~ 'zsh'
  set shell=/bin/zsh
endif

" Don't make vim vi-compatible
set nocompatible

" Enable syntax highlighting
syntax on

" Allow `backspace` in insert mode
set backspace=indent
set backspace+=eol
set backspace+=start

" Set local directories for backup and swap files
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set undodir=~/.vim/undo

" Display incomplete commands
set showcmd

" Display the mode you're in
set showmode

" Enhanced command line completion
set wildmenu

" Complete files like a shell
set wildmode=list:longest

" Increase command line history
set history=50

" Enable search highlighting
set hlsearch
set incsearch

" Search case-insensitive
set ignorecase

" Search case-sensitive if expression contains a capital letter
set smartcase

" Show line numbers
set relativenumber

" Show cursor position
set ruler

" Show 3 lines of context around the cursor.
set scrolloff=3

" Set the terminal's title
set title

" Use visual bell instead of audible bell
set visualbell

" Enable mouse in all modes
set mouse=a

" Show the status line all the time
set laststatus=2

" Set global <TAB> settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Start Plug bundles
call plug#begin('~/.vim/plugged')

" Productivity Plugins
Plug 'ctrlpvim/ctrlp.vim'
Plug 'rking/ag.vim'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'terryma/vim-multiple-cursors'

" Programming Languages Plugins
Plug 'stephpy/vim-php-cs-fixer'
Plug 'vim-syntastic/syntastic'

" Colors and Appearance Plugins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'freeo/vim-kalisi'
Plug 'ryanoasis/vim-devicons'

call plug#end()

" ----------------------------------------------------------------------
" | Automatic Commands                                                 |
" ----------------------------------------------------------------------

if has('autocmd')
  " Automatically reload the configurations from the
  " `~/.vimrc` and `~/.gvimrc` files whenever they are changed
  augroup auto_reload_vim_configs
    autocmd!
    autocmd BufWritePost vimrc source $MYVIMRC

    if has('gui_running')
      autocmd BufWritePost gvimrc source $MYGVIMRC
    endif
  augroup END

" Automatically set the color scheme
  augroup set_font
    autocmd!

    set guifont=Droid_Sans_Mono_for_Powerline:h13
    set linespace=2
  augroup END
endif
set guifont=Droid_Sans_Mono_for_Powerline:h13

" ----------------------------------------------------------------------
" | Key Mappings                                                       |
" ----------------------------------------------------------------------

" Set map leader
let mapleader = "\<Space>"

" Navigate through windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Create windows
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>m <C-w>s<C-w>j
nnoremap <leader>d <C-w>q

" Edit .vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" Reload .vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

" Map <C-C> to <esc>
noremap <C-C> <esc>

" Map tab to ident code
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_

" Map tab to ident code in visual mode
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" Cut line
nnoremap <C-S-d> yy p

" Move lines
nnoremap <C-Down> :m .+1<CR>==
nnoremap <C-Up> :m .-2<CR>==
inoremap <C-Down> <Esc>:m .+1<CR>==gi
inoremap <C-Up> <Esc>:m .-2<CR>==gi
vnoremap <C-Down> :m '>+1<CR>gv=gv
vnoremap <C-Up> :m '<-2<CR>gv=gv
nnoremap <C-S-d> yy p

" Move tab
nnoremap <C-u> :bprevious<CR>
nnoremap <C-i> :bnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>

" Save file
nnoremap <C-s> <Esc>:w<CR>

" ----------------------------------------------------------------------
" | Plugin - NerdTree                                                  |
" ----------------------------------------------------------------------
noremap <leader>ft :NERDTreeToggle<CR>

" Vim's default file browser
let g:NERDTreeHijackNetrw = 1

" ----------------------------------------------------------------------
" | Plugin - CtrlP                                                     |
" ----------------------------------------------------------------------
" Work not only in ancestor directories of the working directory
set wildignore+=*/vendor/*

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
" | Visual Configuration                                               |
" ----------------------------------------------------------------------
" Enable CursorLine
set cursorline

" Default Colors for CursorLine
highlight CursorLine ctermbg=235 ctermfg=None

" Set Number Trigger
let g:NumberToggleTrigger="<leader>ll"

" Highlight Current Line Number
hi CursorLineNR cterm=bold ctermbg=None ctermfg=Yellow

" Use tab navigation
set switchbuf=usetab

" ----------------------------------------------------------------------
" | Plugin - Syntastic                                                 |
" ----------------------------------------------------------------------
let g:syntastic_php_checkers = ["php", "phpcs", "phpmd"]
let g:syntastic_php_phpcs_args = "--standard=PSR2"

" ----------------------------------------------------------------------
" | Plugin - php-cs-fixer                                              |
" ----------------------------------------------------------------------
let g:php_cs_fixer_config = "default"
let g:php_cs_fixer_rules = "@PSR2"
let g:php_cs_fixer_config_file = ".php_cs"
let g:php_cs_fixer_php_path = "/usr/bin/php"
let g:php_cs_fixer_enable_default_mapping = 1
let g:php_cs_fixer_dry_run = 0
let g:php_cs_fixer_verbose = 0

" ----------------------------------------------------------------------
" | Plugin - vim-multiple-cursors                                      |
" ----------------------------------------------------------------------
let g:multi_cursor_quit_key='<C-c>'
nnoremap <C-c> :call multiple_cursors#quit()<CR>
