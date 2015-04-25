set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

let mapleader = "\<space>"
let g:mapleader = "\<space>"

Plugin 'gmarik/Vundle.vim'
Plugin 'rking/vim-detailed'
Plugin 'tpope/vim-sensible'

call vundle#end()
filetype plugin indent on
syntax on

syntax enable
set t_Co=256
set background=light
colo solarized-modified

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
set cmdheight=1
set list listchars=tab:»─,trail:─
set wildmode=list:longest,list:full
set ttyfast