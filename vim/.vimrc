set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

let mapleader = "\<space>"
let g:mapleader = "\<space>"

Plugin 'gmarik/Vundle.vim'

" General
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'mattn/webapi-vim'
Plugin 'ervandew/supertab'
Plugin 'L9'
Plugin 'mattn/gist-vim'
Plugin 'sjl/splice.vim'
Plugin 'garbas/vim-snipmate'
Plugin 'rking/ag.vim'
Plugin 'thoughtbot/vim-rspec'
Plugin 'scrooloose/syntastic'

" Languages
Plugin 'kchmck/vim-coffee-script'
Plugin 'vim-ruby/vim-ruby'
Plugin 'elixir-lang/vim-elixir'
Plugin 'fatih/vim-go'
Plugin 'slim-template/vim-slim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'noprompt/vim-yardoc'

" Colours
Plugin 'altercation/vim-colors-solarized'
Plugin 'rking/vim-detailed'

" tpope
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fugitive'
Plugin 'adammathys/vim-dispatch'
Plugin 'tpope/vim-rails'

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

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_ruby_checkers = ['mri', 'rubocop']
let g:syntastic_mode_map = { "mode": "passive" }

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

" Buffer
nnoremap <leader>bd :!mkdir -p %:p:h<cr>

" Project
nnoremap <leader>pf :call FzyCommand("ag --nocolor -l --hidden --ignore /.git", ":e")<cr>
nnoremap <leader>pgf :call FzyCommand("ag -g '' $(bundle show $(bundle list \| cut -f 4 -d' ' \| fzy))", ":e")<cr>

" Git
nnoremap <leader>gc :Gcommit -av<cr>
nnoremap <leader>gd :Git d<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gs :Gstatus<cr>

" Project
nnoremap <leader>pr :Start<cr>
nnoremap <leader>pt :Dispatch<cr>

" Syntastic
nnoremap <leader>sc :SyntasticCheck<cr>
nnoremap <leader>sr :SyntasticReset<cr>
nnoremap <leader>st :SyntasticToggleMode<cr>

" Toggles
call togglebg#map("") " Make ToggleBG work
nnoremap <leader>tb :ToggleBG<cr>

" Windows
nnoremap <leader>wh <C-w>h
nnoremap <leader>wj <C-w>j
nnoremap <leader>wk <C-w>k
nnoremap <leader>wl <C-w>l
nnoremap <leader>tc :tabnew<cr>
nnoremap <leader>tn :tabnext<cr>
nnoremap <leader>tp :tabprev<cr>
