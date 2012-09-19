
""" Vundle
""""""""""

set nocompatible
filetype off
" On new machines remember to:
"   git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

let mapleader = "\<space>"
let g:mapleader = "\<space>"

""" Language Support
""""""""""""""""""""

" Coffeescript
Bundle 'kchmck/vim-coffee-script'

" Handlebars
Bundle 'nono/vim-handlebars'

" Haml
Bundle 'tpope/vim-haml'

" Slim
Bundle 'bbommarito/vim-slim'

" Javascript (works for semicolonless js)
Bundle 'jiangmiao/simple-javascript-indenter'
let g:SimpleJsIndenter_BriefMode = 1

" Slim
Bundle 'bbommarito/vim-slim'

""" Functionality
"""""""""""""""""

" Unimpaired
Bundle 'tpope/vim-unimpaired'

" TComment
Bundle 'tomtom/tcomment_vim'

" Surround
Bundle 'tpope/vim-surround'

" Ragtag
Bundle 'tpope/vim-ragtag'

" Fugitive
Bundle 'tpope/vim-fugitive'

" Solarized
Bundle 'altercation/vim-colors-solarized'
syntax enable
set background=light
colo solarized
highlight RedundantSpaces ctermbg=red
match RedundantSpaces /\s\+$\| \+\ze\t\|\t/

" SnipMate
Bundle 'jarednorman/snipmate.vim'

" L9
Bundle 'L9'

" FuzzyFinder
Bundle 'FuzzyFinder'
nmap <leader><leader> :FufFile<cr>
nmap <leader>t :FufTag<cr>
nmap <leader>b :FufBuffer<cr>
nmap <F5> :FufRenew<cr>

" Powerline
Bundle 'Lokaltog/vim-powerline'
set laststatus=2
let g:Powerline_colorscheme='solarizedLight'

" Syntastic
Bundle 'scrooloose/syntastic.git'
let g:syntastic_javascript_jshint_conf = "~/.jshint.config"

""" Basic Settings
""""""""""""""""""

filetype plugin indent on
set ttyfast
set ttyscroll=3
set lazyredraw
set noswapfile
set showtabline=2
set backspace=indent,eol,start
set nobackup
set autoindent
set expandtab
set softtabstop=4
set shiftwidth=4
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
set nohlsearch
set incsearch
set foldmethod=manual
set cmdheight=2
set showcmd
set winwidth=80
set winheight=5
set winminheight=5
set winheight=999
set relativenumber

""" Filetype Specific stuff
"""""""""""""""""""""""""""

" Coffee
autocmd FileType coffee  set tabstop=4
autocmd FileType coffee  set shiftwidth=4
autocmd FileType coffee  set softtabstop=4

" Lua
autocmd FileType lua  set tabstop=2
autocmd FileType lua  set shiftwidth=2
autocmd FileType lua  set softtabstop=2

" Ruby
autocmd FileType ruby set tabstop=2
autocmd FileType ruby set shiftwidth=2
autocmd FileType ruby set softtabstop=2

" Sass
autocmd FileType scss set tabstop=2
autocmd FileType scss set shiftwidth=2
autocmd FileType scss set softtabstop=2
autocmd FileType sass set tabstop=2
autocmd FileType sass set shiftwidth=2
autocmd FileType sass set softtabstop=2

" CSS
autocmd FileType css  set tabstop=2
autocmd FileType css  set shiftwidth=2
autocmd FileType css  set softtabstop=2

" HTML
autocmd FileType html set tabstop=2
autocmd FileType html set shiftwidth=2
autocmd FileType html set softtabstop=2

""" EVERTHING FASTER
""""""""""""""""""""

nmap <cr> :
nmap <leader>1234567890 :wq<cr>
nmap K \<noop>
nmap <c-j> j<c-e>
nmap <c-k> k<c-y>
map <c-l> <c-PageDown>
map <c-h> <c-PageUp>

""" LEADER LEADER
"""""""""""""""""

nmap <leader>w :w!<cr>
nmap <leader>d :bd<cr>
nmap <leader>. <C-^>
nmap <leader>y "*p
nmap <leader><tab> <c-w><c-w>
nmap <leader>c :w<cr>:!cat % \| pbcopy<cr>
nmap <leader>v "*p
nmap <leader>g :!curl -OL <c-r>"<cr>
map <leader>mt :map <lt>leader>t :w<lt>cr>
map <leader>mr :map <lt>leader>r :w<lt>cr>
map <leader>h <C-w>h
map <leader>j <C-w>j
map <leader>k <C-w>k
map <leader>l <C-w>l

""" Quick settings
""""""""""""""""""

nmap <leader>qw :set nowrap! <CR>
nmap <leader>qh :set hlsearch! <CR>

""" Welcome to Hell
"""""""""""""""""""

nmap h :echo "NO!"<cr>
nmap l :echo "NO!"<cr>
map <Up> :echo "NO!"<cr>
map <Down> :echo "NO!"<cr>
map <Left> :echo "NO!"<cr>
map <Right> :echo "NO!"<cr>

