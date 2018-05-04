set nocompatible
filetype off
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'

Plug 'mileszs/ack.vim'
Plug '/usr/local/opt/fzf'

Plug 'tpope/vim-rails'
Plug 'tpope/vim-haml'
Plug 'vim-ruby/vim-ruby'
Plug 'jason0x43/vim-js-indent'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

Plug 'chriskempson/base16-vim'

call plug#end()
filetype plugin indent on

" Make it pretty!
syntax on
set background=dark
let base16colorspace=256
color base16-default-dark

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
set grepprg=rg\ --vimgrep

" Use ripgrep when available.
if executable("rg")
    set grepprg=rg\ --vimgrep\ --no-heading
    set grepformat=%f:%l:%c:%m,%f:%l:%m
    let g:ackprg = 'rg --vimgrep --no-heading'
endif

" Distribute windows when resize happens.
au VimResized * :wincmd =

" Changes cursor while in insert mode.
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

" The final frontier.
let mapleader = "\<space>"
let g:mapleader = "\<space>"

" Disable things I accidentally do.
nnoremap K \<noop>
vnoremap K \<noop>
nnoremap <c-w>o \<noop>
vnoremap <c-w>o \<noop>

" Clear search.
nnoremap <leader>/ :let @/=""<cr>

" FZF support!
nnoremap <leader><leader> :FZF<cr>
