set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

let mapleader = "\<space>"
let g:mapleader = "\<space>"

Plugin 'gmarik/Vundle.vim'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'mattn/webapi-vim'
Plugin 'ervandew/supertab'
Plugin 'L9'
Plugin 'mattn/gist-vim'
Plugin 'sjl/splice.vim'
Plugin 'garbas/vim-snipmate'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/syntastic'
Plugin 'kchmck/vim-coffee-script'
Plugin 'elixir-lang/vim-elixir'
Plugin 'fatih/vim-go'
Plugin 'slim-template/vim-slim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'noprompt/vim-yardoc'
Plugin 'altercation/vim-colors-solarized'
Plugin 'rking/vim-detailed'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-dispatch'
Plugin 'vim-ruby/vim-ruby'
Plugin 'itchyny/lightline.vim'

call vundle#end()
filetype plugin indent on
syntax on

" gist-vim
let g:gist_post_private = 1

syntax enable
set t_Co=256
set background=light
colo jaredized

set statusline=%f\ %y
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set shell=$SHELL

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_ruby_checkers = ['mri', 'rubocop']
let g:syntastic_mode_map = { "mode": "passive" }

let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }

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
set splitright
set splitbelow
set fillchars+=vert:│
set ttyfast

set undofile                " Save undo's after file closes
set undodir=$HOME/.vim/undo " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo

function! FzyCommand(choice_command, vim_command)
  try
    let output = system(a:choice_command . " | fzy ")
  catch /Vim:Interrupt/
    " Swallow errors from ^C, allow redraw! below
  endtry
  redraw!
  if v:shell_error == 0 && !empty(output)
    exec a:vim_command . ' ' . output
  endif
endfunction

nnoremap <cr> :
nnoremap K \<noop>
vnoremap K \<noop>
nnoremap <leader>/ :let @/=""<cr>
nnoremap <leader><cr> <cr>
nnoremap <leader><leader> :call FzyCommand("ag --nocolor -l --hidden --ignore /.git", ":e")<cr>


nnoremap <leader>fg :call FzyCommand("ag -g '' $(bundle show $(bundle list \| cut -f 4 -d' ' \| fzy))", ":e")<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gc :Gcommit -av<cr>
nnoremap <leader>gd :Git d<cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l
nnoremap <leader>mk :!mkdir -p %:p:h<cr>
nnoremap <leader>r :Start<cr>
nnoremap <leader>t :Dispatch<cr>



