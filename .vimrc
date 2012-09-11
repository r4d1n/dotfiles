syntax enable
colorscheme ir_black
set colorcolumn=80
set encoding=utf-8
set t_Co=256

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
  set undodir=~/.vim/undo
endif

" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure
" Enable line numbers
set number
" Make tabs as wide as two spaces
set tabstop=2
set expandtab

" Always show status line
set laststatus=2

" Enable mouse in all modes
set mouse=a

" Disable error bells
set noerrorbells

" Don’t show the intro message when starting Vim
set shortmess=atI

" Show the current mode
set showmode

" Show the filename in the window titlebar
set title

" Show the (partial) command as it’s being typed
set showcmd

" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Strip trailing whitespace
fun! <SID>StripWhitespace()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  ''
  call cursor(l, c)
endfun

autocmd BufWritePre * :call <SID>StripWhitespace()

map - :Explore<CR>

" Enable file type detection
filetype on
filetype indent on
filetype plugin on

" Treat .json files as .js
autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
