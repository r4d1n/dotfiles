syntax enable
colorscheme molokai

set colorcolumn=80
set encoding=utf-8
set t_Co=256
set backspace=indent,eol,start

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
  set undodir=~/.vim/undo
endif

" Enable line numbers
set number

" Make tabs as wide as two spaces
set expandtab
set shiftwidth=2
set softtabstop=2
set nosmarttab

set autoindent
set nosmartindent

" Enable mouse in all modes
set mouse=a

" Disable error bells
set visualbell

" Show the current mode
set showmode

" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Strip trailing whitespace
fun! <SID>StripWhitespace()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun

autocmd BufWritePre * :call <SID>StripWhitespace()

map - :Explore<CR>

" Enable file type detection
filetype plugin indent on

autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
autocmd BufNewFile,BufRead *.coffee setfiletype coffeescript syntax=coffee
