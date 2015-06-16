execute pathogen#infect('~/.vim/bundle/{}')
syntax on
filetype plugin indent on

set encoding=utf-8

"filetype plugin on
"let g:auto_save = 1

"start ctrl p in current directory
let g:ctrlp_working_path_mode = 0

"make tabs two spaces
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set nosmarttab

set autoindent
set nosmartindent

" colors
colorscheme molokai

" line numbers 
set number

" enable mouse
set mouse=a

" Enable file type detection
filetype plugin indent on
