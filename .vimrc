execute pathogen#infect('~/.vim/bundle/{}')
syntax on
filetype plugin indent on

" colors
colorscheme molokai


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

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
set undodir=~/.vim/undo
endif

" line numbers 
set number

" enable mouse
set mouse=a

" Disable error bells
set visualbell
" Show the current mode
set showmode
" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Enable file type detection
filetype plugin indent on

autocmd BufNewFile,BufRead *.hbs setfiletype html syntax=html
autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
