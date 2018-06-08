" identation
setlocal sw=4 ts=4 sts=4 expandtab

" syntastic for PHP
let g:syntastic_php_checkers = ["php"]
let g:syntastic_php_phpcs_args = "--standard=PSR2"

" php cs fixer
let g:php_cs_fixer_config = "default"
let g:php_cs_fixer_rules = "@PSR2"
let g:php_cs_fixer_config_file = ".php_cs"
let g:php_cs_fixer_php_path = "/home/ricardo/.local/bin/php"
let g:php_cs_fixer_enable_default_mapping = 1
let g:php_cs_fixer_dry_run = 0
let g:php_cs_fixer_verbose = 0

" Plugin swekaj/phpfoldexpr.vim
let b:phpfold_use = 1
let b:phpfold_text_right_lines = 1

" Plugin - CtrlP
set wildignore+=*/vendor/*
