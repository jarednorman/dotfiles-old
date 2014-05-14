set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" tool support
Plugin 'rking/ag.vim'
Plugin 'int3/vim-extradite'

" language support
Plugin 'kchmck/vim-coffee-script'
Plugin 'vim-ruby/vim-ruby'

" tpope <3
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'

filetype plugin indent on
syntax on

set noswapfile
set nobackup
set noerrorbells visualbell t_vb=

set number
set expandtab
set softtabstop=2
set shiftwidth=2

set hlsearch
set cmdheight=1
set showcmd
set list listchars=tab:»·,trail:·
set wildmode=list:longest,list:full
set wildmenu

set shell=zsh
