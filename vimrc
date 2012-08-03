set nocompatible
filetype off
" On new machines remember to:
"   git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" Bundles go here dawwwg
Bundle 'gmarik/vundle'
Bundle 'jarednorman/snipmate.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'L9'
Bundle 'FuzzyFinder'
" Don't remove this guy
filetype plugin indent on

" Check this out?
set ttyfast
set ttyscroll=3
set lazyredraw
set cursorline

set background=dark
colo keepitsimple

set noswapfile
syntax enable
set list
set showtabline=2
set number
set backspace=indent,eol,start
set nobackup
set wildmenu
set ruler
set mouse=a

filetype plugin indent on
set autoindent
set expandtab
set softtabstop=4
set shiftwidth=4
autocmd FileType ruby set tabstop=2
autocmd FileType ruby set shiftwidth=2
autocmd FileType ruby set expandtab
autocmd FileType ruby set softtabstop=2

" STOP BEEPING PLEASE
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

set nohlsearch
set incsearch

set foldmethod=manual
set foldcolumn=2

set laststatus=2
set cmdheight=2
set showcmd

" Proper split sizing
set winwidth=80
set winheight=5
set winminheight=5
set winheight=999

"""EVERTHING FASTER"""
let mapleader = ","
let g:mapleader = ","

" Screen scrolling w/o moving cursor
nmap <c-j> j<c-e>
nmap <c-k> k<c-y>
" Tab movement
map <c-l> <c-PageDown>
map <c-h> <c-PageUp>

" Toggle line wrap
nmap <leader>qw :set nowrap! <CR>
nmap <leader>qh :set hlsearch! <CR>
nmap <leader>qn :set nonumber! <CR>

nmap <leader>w :w!<cr>
nmap <leader>d :bd<cr>
nmap <leader>ee :e 
nmap <leader>. <C-^>
nmap <leader>y "*p
nmap <leader><tab> <c-w><c-w>

""" Copy file to clipboard
""" TODO: generalize this for xclip or pbcopy
nmap <leader>c :w<cr>:!cat % \| pbcopy<cr>
""" Paste from clipboard
nmap <leader>v "*p

""" Download yanked url
nmap <leader>g :!curl -OL <c-r>"<cr>

""" Mapping mapping mapping mapping mapping 
map <leader>mt :map <lt>leader>t :w<lt>cr>
map <leader>mr :map <lt>leader>r :w<lt>cr>

map <leader>h <C-w>h
map <leader>j <C-w>j
map <leader>k <C-w>k
map <leader>l <C-w>l

"" Don't even think about it
map <Up> :echo "NO!"<cr>
map <Down> :echo "NO!"<cr>
map <Left> :echo "NO!"<cr>
map <Right> :echo "NO!"<cr>

if has("gui_running")
  colo gitt
  set anti enc=utf-8 guifont=Inconsolata\ Medium\ 15
  set guioptions=
  map <leader>[ :tabp<cr>
  map <leader>] :tabN<cr>
  map <leader>\ :tabnew<cr>
  map <leader>\| :tabclose<cr>
  "In case I forget I can't do this in gvim
  nmap <c-z> :!
endif

