set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

let mapleader = "\<space>"
let g:mapleader = "\<space>"

Plugin 'gmarik/Vundle.vim'

" tool support
Plugin 'rking/ag.vim'
Plugin 'int3/vim-extradite'
Plugin 'sunaku/vim-ruby-minitest'
Plugin 'Keithbsmiley/rspec.vim'

" language support
Plugin 'kchmck/vim-coffee-script'
Plugin 'vim-ruby/vim-ruby'
Plugin 'slim-template/vim-slim'
Plugin 'nono/vim-handlebars'
Plugin 'elixir-lang/vim-elixir'

" tpope <3
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'


" jhawthorn/dkendal <3
Plugin 'Dkendal/fzy-vim'

" Other Stuff
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'sjl/vitality.vim'
Plugin 'mattn/webapi-vim'
Plugin 'ervandew/supertab'
Plugin 'godlygeek/tabular'
Plugin 'tomtom/tcomment_vim'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'L9'
Plugin 'mattn/gist-vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'
Plugin 'JazzCore/ctrlp-cmatcher'
Plugin 'bling/vim-airline'
Plugin 'zef/vim-cycle'

call vundle#end()
filetype plugin indent on
syntax on

" gist-vim
let g:gist_post_private = 1

" vim-colors-solarized
syntax enable
set background=dark
colo solarized

" ctrlp.vim
let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_working_path_mode = '' " Stop messing with the path
let g:ctrlp_match_window_bottom = 1
let g:ctrlp_jump_to_buffer = 2 " Jump to tab AND buffer if already open
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|coverage\|vendor/bundle\|output'

" vim-airline
let g:airline_solarized_bg='dark'
let g:airline_theme='solarized'
let g:airline_left_sep=''
let g:airline_right_sep=''

" vim-cycle
let g:cycle_no_mappings=1

set noswapfile
set nobackup
set noerrorbells visualbell t_vb=

set number
set expandtab
set softtabstop=2
set shiftwidth=2

set number
set hlsearch
set cmdheight=1
set laststatus=2
set showcmd
set list listchars=tab:»·,trail:·
set wildmode=list:longest,list:full
set wildmenu
set splitright
set splitbelow
set cursorline
set cursorcolumn

" Allow local vimrc
set exrc
set secure


nmap <cr> :
nmap K \<noop>
vmap K \<noop>
map <c-l> <c-PageDown>
map <c-h> <c-PageUp>

nmap <leader><cr> :tabnew<cr>
nmap <leader><leader> :CtrlP<cr>
nmap <leader><tab> :AE<cr>
nmap <leader>fa :CtrlP app/assets<cr>
nmap <leader>fc :CtrlP app/controllers<cr>
nmap <leader>fm :CtrlP app/models<cr>
nmap <leader>ft :CtrlPTag<cr>
nmap <leader>fv :CtrlP app/views<cr>
nmap <leader>gc :Gcommit -av<cr>
nmap <leader>gd :Git d<cr>
nmap <leader>gb :Gblame<cr>
nmap <leader>gs :Gstatus<cr>
nmap <leader>h <C-w>h
nmap <leader>j <C-w>j
nmap <leader>k <C-w>k
nmap <leader>l <C-w>l
nmap <leader>n <Plug>CycleNext
nmap <leader>p :!mkdir -p %:p:h<cr>
nmap <leader>s :let @/=""<cr>
nmap <leader>w :w!<cr>
