" Start Plug bundles
call plug#begin('~/.vim/plugged')

" Productivity Plugins
Plug 'ctrlpvim/ctrlp.vim'
Plug 'rking/ag.vim'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-git'
Plug 'mhinz/vim-signify'
Plug 'airblade/vim-gitgutter'
Plug 'Raimondi/delimitMate'
Plug 'Valloric/YouCompleteMe'
Plug 'alvan/vim-closetag'

" Programming Languages Plugins
Plug 'stephpy/vim-php-cs-fixer'
Plug 'vim-syntastic/syntastic'
Plug 'swekaj/php-foldexpr.vim'
Plug 'bitfyre/vim-indent-html'
Plug 'leafgarland/typescript-vim'

" Colors and Appearance Plugins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'joshdick/onedark.vim'
Plug 'freeo/vim-kalisi'
Plug 'ryanoasis/vim-devicons'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'tpope/vim-fugitive'

call plug#end()

" Enable vim plugin
filetype plugin on

" General configs
source ~/.config/nvim/general.vim

" Keymaping
source ~/.config/nvim/keymap.vim

" Visual Configs
source ~/.config/nvim/style.vim

" Productivity and another configs
source ~/.config/nvim/misc.vim

" Configs by Filetype
" PHP
autocmd FileType php source ~/.config/nvim/php.vim

" JavaScript
autocmd FileType js source ~/.config/nvim/js.vim

" TypeScript
autocmd FileType typescript source ~/.config/nvim/ts.vim

" Others
autocmd FileType yml :setlocal sw=2 ts=2 sts=2
autocmd Filetype html :setlocal ts=2 sw=2 expandtab
