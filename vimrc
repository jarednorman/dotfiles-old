set nocompatible
filetype off
" On new machines remember to:
"   git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" Language Support
Bundle 'kchmck/vim-coffee-script'
Bundle 'nono/vim-handlebars'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-haml'
Bundle 'bbommarito/vim-slim'

" Functionality
Bundle 'tomtom/tcomment_vim'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-fugitive'
Bundle 'altercation/vim-colors-solarized'
Bundle 'jarednorman/snipmate.vim'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'bbommarito/vim-slim'
"
" Don't remove this guy:
filetype plugin indent on

set ttyfast
set ttyscroll=3
set lazyredraw
set cursorline
set background=dark
colo solarized
set noswapfile
syntax enable
set showtabline=2
set number
set backspace=indent,eol,start
set nobackup
set wildmenu
set ruler
filetype plugin indent on
set autoindent
set expandtab
set softtabstop=4
set shiftwidth=4
" STOP BEEPING PLEASE
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
set nohlsearch
set incsearch
set foldmethod=manual
" set foldcolumn=2
set laststatus=2
set cmdheight=2
set showcmd
" Proper split sizing
"set winwidth=80
"set winheight=5
"set winminheight=5
"set winheight=999

" Specific File Settings
autocmd FileType ruby set tabstop=2
autocmd FileType ruby set shiftwidth=2
autocmd FileType ruby set softtabstop=2
autocmd FileType scss set tabstop=2
autocmd FileType scss set shiftwidth=2
autocmd FileType scss set softtabstop=2
autocmd FileType sass set tabstop=2
autocmd FileType sass set shiftwidth=2
autocmd FileType sass set softtabstop=2
autocmd FileType css set tabstop=2
autocmd FileType css set shiftwidth=2
autocmd FileType css set softtabstop=2
autocmd FileType html set tabstop=2
autocmd FileType html set shiftwidth=2
autocmd FileType html set softtabstop=2

"""EVERTHING FASTER"""
let mapleader = "\<space>"
let g:mapleader = "\<space>"
nmap <cr> :

"" TADA!!!!!
nmap <leader>1234567890 :wq<cr>

" Who bound this stupid thing?
nmap K \<noop>

" Screen scrolling w/o moving cursor
nmap <c-j> j<c-e>
nmap <c-k> k<c-y>

" Tab movement
map <c-l> <c-PageDown>
map <c-h> <c-PageUp>

" Settings
nmap <leader>qw :set nowrap! <CR>
nmap <leader>qh :set hlsearch! <CR>
nmap <leader>qn :set nonumber! <CR>

" Fuzzy Search
nmap <leader><leader> :FufFile<cr>
nmap <leader>t :FufTag<cr>
nmap <leader>b :FufBuffer<cr>

nmap <leader>w :w!<cr>
nmap <leader>d :bd<cr>
nmap <leader>. <C-^>
nmap <leader>y "*p
nmap <leader><tab> <c-w><c-w>

""" Copy/Paste file to clipboard
nmap <leader>c :w<cr>:!cat % \| pbcopy<cr>
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

