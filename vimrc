" .vimrc " Matt Rozak
set nocompatible                 " viM settings - MUST be first

""" environment settings """"""""""""""""""""""""""""""""""""""""""""""""""""""

"" visual ""

syntax enable                    " altercation/vim-colors-solarized
"set background=dark              " set solarized dark theme
"colorscheme solarized

set history=50		               " keep 50 lines of command line history
set ruler		                  " show the cursor position all the time
set showcmd		                  " display incomplete commands
set showmatch                    " jumps to matching ([{}]) momentarily
set number                       " show line numbers

" highlight over 100 columns
""highlight OverLength ctermbg=red ctermfg=white guibg=#592929
""match OverLength /\%100v.\+/

" view trailing whitespace as dots
set listchars=trail:·
set list

"" functional ""

set backspace=indent,eol,start   " allow backspacing over everything in insert
set incsearch		               " do incremental searching

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

if has('mouse')                  " Enable mouse if available
  set mouse=a
endif

""" key remaps """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:let mapleader = ","

" flip ; and : for quicker commands
nnoremap ; :
nnoremap : ;

" it sounds weird but you'll never go back
inoremap jj <ESC>

" disable pleb mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" <Leader>vs splits current document and binds scrolling
noremap <silent> <Leader>vs
    \ ggzR:<C-u>let @z=&so<CR>
    \:set so=0 noscb<CR>
    \:bo vs<CR>
    \zRLjzt:setl scb<CR>
    \<C-w>p:setl scb<CR>
    \:let &so=@z<CR>

if has("unix")
   let s:uname = system("uname -s")
   if s:uname == "Darwin"              " check for osx
      " copy/cut to clipboard on osx
      vmap <C-x> :!pbcopy<CR>
      vmap <C-c> :w !pbcopy<CR><CR>
   endif
endif

