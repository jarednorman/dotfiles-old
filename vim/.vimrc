set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-sensible'
call vundle#end()
filetype plugin indent on
syntax on

set t_Co=256
set background=dark
colo jaredized
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
set number
set wrap
set cmdheight=1
set list listchars=tab:◀―,trail:•
set ttyfast
