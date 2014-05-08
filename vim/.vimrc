set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

filetype plugin indent on
syntax on

set noswapfile
set nobackup
set noerrorbells visualbell t_vb=
set backspace=indent,eol,start

set autoindent
set expandtab
set softtabstop=2
set shiftwidth=2

set hlsearch
set incsearch
set cmdheight=1
set showcmd
set list listchars=tab:»·,trail:·
set wildmode=list:longest,list:full
set wildmenu

