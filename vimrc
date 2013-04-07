
" I always forget the help prefixes:
"   http://vim.wikia.com/wiki/Learn_to_use_help

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

" Jade
Bundle 'digitaltoad/vim-jade'

" Coffeescript
Bundle 'kchmck/vim-coffee-script'

" Handlebars
Bundle 'nono/vim-handlebars'

" Haml
Bundle 'tpope/vim-haml'

" Javascript (works for semicolonless js)
Bundle 'jiangmiao/simple-javascript-indenter'
let g:SimpleJsIndenter_BriefMode = 1

" Slim
Bundle 'slim-template/vim-slim'

""" Functionality
"""""""""""""""""

" Iterm2/tmux niceness
Bundle 'sjl/vitality.vim'

" Brace completion
Bundle 'Raimondi/delimitMate'
let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1

" Tab
Bundle 'ervandew/supertab'

" EasyMotion
Bundle 'Lokaltog/vim-easymotion'
let g:EasyMotion_leader_key = '<Leader>m'

" Ack integration
Bundle 'mileszs/ack.vim'
" The Silver Searcher
let g:ackprg = 'ag --nogroup --nocolor --column'

" tabular.vim
Bundle 'godlygeek/tabular'

" Indent Guides
Bundle 'nathanaelkane/vim-indent-guides'

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
set background=dark
colo solarized

" SnipMate
Bundle 'jarednorman/snipmate.vim'

" L9
Bundle 'L9'

" CtrlP
Bundle 'kien/ctrlp.vim'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_working_path_mode = '' " Stop messing with the path
let g:ctrlp_match_window_bottom = 0 " Show at top of window
let g:ctrlp_mru_files = 2 " Enable Most Recently Used files feature
let g:ctrlp_jump_to_buffer = 2 " Jump to tab AND buffer if already open
nmap <leader><leader> :CtrlP<cr>
nmap <leader>t :CtrlPTag<cr>
nmap <leader>b :CtrlPBuffer<cr>

" Powerline
Bundle 'Lokaltog/vim-powerline'
set laststatus=2
let g:Powerline_colorscheme='solarizedDark'

" Syntastic
Bundle 'scrooloose/syntastic.git'
let g:syntastic_javascript_jshint_conf = "~/.jshint.config"
let g:syntastic_mode_map = { 'mode': 'passive',
                           \ 'active_filetypes': [],
                           \ 'passive_filetypes': ['scss', 'coffee', 'javascript'] }

" Not sure if I hate nerdtree or not
Bundle 'scrooloose/nerdtree'
let g:NERDTreeWinSize = 40
let g:NERDTreeMinimalUI = 1
nmap <leader>f :NERDTreeToggle<cr>

" Mad split/join skillllz
Bundle 'AndrewRadev/splitjoin.vim'

" Still Unsure if I like this guy:
" NerdTREE
Bundle 'scrooloose/nerdtree'

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
set cursorline
set cursorcolumn
" set colorcolumn=80
set splitright
set splitbelow
set cmdheight=2
set showcmd
set winwidth=100
set relativenumber
set list listchars=tab:»·,trail:·
set wildmode=list:longest,list:full
set timeoutlen=1000 ttimeoutlen=0
set nowrap
set ignorecase
set smartcase
set autoread
set scrolloff=8

""" Filetype Specific stuff
"""""""""""""""""""""""""""

" Always NERDTree
au VimEnter *  NERDTree

" Indent Guides
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=none
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=7

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
" Flourish.
nmap <leader>1234567890 :wq<cr>
" Made a habit of accidentally hitting K when entering visual line mode to
" select a few lines.
nmap K \<noop>
" Scroll file (cursor line fixed relative to display)
nmap <c-j> j<c-e>
nmap <c-k> k<c-y>
" Next/prev tab.
map <c-l> <c-PageDown>
map <c-h> <c-PageUp>
" New tabs for free!
map <leader><cr> :tabnew<cr>
" Fucking arrows
imap <c-l> ->

""" LEADER LEADER
"""""""""""""""""

nmap <leader>w :w!<cr>
nmap <leader>d :bd<cr>
nmap <leader>. <C-^>
nmap <leader>y "*p
nmap <leader><tab> <c-w><c-w>
nmap <leader>c :w<cr>:!cat % \| pbcopy<cr>
" Specific to using Middleman as an asset pipeline for Tumblr theme
" development.
nmap <leader>z :w<cr>:!bundle exec middleman build -g development.html && cat ../build/development.html \| pbcopy<cr>
nmap <leader>v "*p
nmap <leader>g :!curl -OL <c-r>"<cr>
map <leader>mt :map <lt>leader>t :w<lt>cr>
map <leader>mr :map <lt>leader>r :w<lt>cr>
nmap <leader>p :!mkdir -p %:p:h<cr>
map <leader>h <C-w>h
map <leader>j <C-w>j
map <leader>k <C-w>k
map <leader>l <C-w>l
:nmap <leader>b <c-^>

""" Quick settings
""""""""""""""""""

nmap <leader>qw :set nowrap! <CR>
nmap <leader>qh :set hlsearch! <CR>

""" Vim. Live it.
"""""""""""""""""""

inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>
vnoremap <Up> <nop>
vnoremap <Down> <nop>
vnoremap <Left> <nop>
vnoremap <Right> <nop>

