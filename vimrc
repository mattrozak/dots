" .vimrc " Matt Rozak

" Use vim settings instead of vi settings
" This must be first, because it changes other options as a side effect.
set nocompatible

syntax enable
set background=dark
" todo figure out how to do this
" colorscheme solarized 

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set number
set showmatch

" key remaps
nnoremap ; :
nnoremap : ;

inoremap jj <ESC>

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

set smartindent
set tabstop=3
set shiftwidth=3
set expandtab

" Enable mouse if available 
if has('mouse')
  set mouse=a
endif
