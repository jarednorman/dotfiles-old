call pathogen#infect()
set noswapfile
syntax on
colo keepitsimple
set nonumber
set nocompatible
set backspace=indent,eol,start
set nobackup
set wildmenu
set ruler
set cursorline
set colorcolumn=80

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
:nmap <c-j> j<c-e>
:nmap <c-k> k<c-y>

" Toggle line wrap
nmap <leader>qw :set nowrap! <CR>
nmap <leader>qn :set nonumber! <CR>

"""ctrlp.vim"""
let g:ctrlp_working_path_mode = 0
let g:ctrlp_open_new_file = "r"
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*
nmap <leader><leader> :CtrlP ./<cr>
nmap <leader>b :CtrlPBuffer<cr>
"RoR CtrlP stuff
nmap <leader>ec :CtrlP app/controllers<cr>
nmap <leader>ea :CtrlP app<cr>
nmap <leader>em :CtrlP app/models<cr>
nmap <leader>ev :CtrlP app/views<cr>
nmap <leader>es :CtrlP spec<cr>

nmap <leader>w :w!<cr>
nmap <leader>d :bd<cr>
nmap <leader>ee :e 
nmap <leader>. <C-^>
nmap <leader>c "*p
nmap <leader><tab> <c-w><c-w>

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
  set showtabline=2
  map <leader>[ :tabp<cr>
  map <leader>] :tabN<cr>
  map <leader>\ :tabnew<cr>
  map <leader>\| :tabclose<cr>
  "In case I forget I can't do this in gvim
  nmap <c-z> :!
endif

