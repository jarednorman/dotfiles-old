set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on

" Make it pretty!
syntax on

" Built in Vim settings.
set shell=$SHELL
set noswapfile
set nobackup
set noerrorbells visualbell t_vb=
set expandtab
set softtabstop=2
set shiftwidth=2
set hlsearch
set ignorecase
set smartcase
set wrap
set wildmode=list:longest,list:full
set splitright
set splitbelow
set ttyfast
set lazyredraw
set list listchars=tab:→\ ,trail:•
set fillchars+=vert:\ 

" Changes cursor while in insert mode.
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

" Disable things I accidentally do.
nnoremap K \<noop>
vnoremap K \<noop>
nnoremap <c-w>o \<noop>
vnoremap <c-w>o \<noop>

" Clear search.
nnoremap <leader>/ :let @/=""<cr>
