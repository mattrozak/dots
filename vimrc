" .vimrc " Matt Rozak
set nocompatible                 " viM settings - MUST be first

""" vundle """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

filetype off                     " required for vundle!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle - required! 
Bundle 'gmarik/vundle'           

"" bundles ""

   "" syntax highlighting ""
   Bundle 'altercation/vim-colors-solarized'

   "" project traversal ""
   Bundle 'scrooloose/nerdtree'

   "" file traversal ""
   Bundle 'Lokaltog/vim-easymotion'

   "" error checking ""
   Bundle 'scrooloose/syntastic'

"" end bundles ""

filetype plugin indent on     " required!
"
" Brief help
" :BundleList                 - list configured bundles
" :BundleInstall(!)           - install (update) bundles
" :BundleSearch(!) foo        - search (or refresh cache first) for foo
" :BundleClean(!)             - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.

""" environment settings """"""""""""""""""""""""""""""""""""""""""""""""""""""

"" visual ""

syntax enable                    " altercation/vim-colors-solarized
set background=dark              " set solarized dark theme
colorscheme solarized            "

set history=50		               " keep 50 lines of command line history
set ruler		                  " show the cursor position all the time
set showcmd		                  " display incomplete commands
set showmatch                    " jumps to matching ([{}]) momentarily
set number                       " show line numbers

"" functional ""

set backspace=indent,eol,start   " allow backspacing over everything in insert
set incsearch		               " do incremental searching

set smartindent
set tabstop=3
set shiftwidth=3
set expandtab

if has('mouse')                  " Enable mouse if available 
  set mouse=a
endif

""" key remaps """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap ; :
nnoremap : ;

inoremap jj <ESC>

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
