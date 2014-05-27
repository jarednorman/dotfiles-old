set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

let mapleader = "\<space>"
let g:mapleader = "\<space>"

Plugin 'gmarik/Vundle.vim'

" tpope <3
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-dispatch'

" jhawthorn/dkendal <3
Plugin 'Dkendal/fzy-vim'

" language support
Plugin 'kchmck/vim-coffee-script'
Plugin 'vim-ruby/vim-ruby'
Plugin 'slim-template/vim-slim'
Plugin 'nono/vim-handlebars'
Plugin 'elixir-lang/vim-elixir'

" tool support
Plugin 'rking/ag.vim'
Plugin 'int3/vim-extradite'
Plugin 'sunaku/vim-ruby-minitest'
Plugin 'Keithbsmiley/rspec.vim'

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
Plugin 'camelcasemotion'

call vundle#end()
filetype plugin indent on
syntax on

" gist-vim
let g:gist_post_private = 1

" vim-colors-solarized
syntax enable
set background=light
colo solarized

" ctrlp.vim
let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_working_path_mode = '' " Stop messing with the path
let g:ctrlp_match_window_bottom = 1
let g:ctrlp_jump_to_buffer = 2 " Jump to tab AND buffer if already open
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|coverage\|vendor/bundle\|output'

" vim-airline
let g:airline_solarized_bg='light'
let g:airline_theme='solarized'
let g:airline_left_sep=''
let g:airline_right_sep=''

" vim-cycle
let g:cycle_no_mappings=1

set noswapfile
set nobackup
set noerrorbells visualbell t_vb=

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

" Allow local vimrc
set exrc
set secure

nmap <cr> :
nmap K \<noop>
vmap K \<noop>
map <c-l> <c-PageDown>
map <c-h> <c-PageUp>

nnoremap <leader><cr> :tabnew<cr>
nnoremap <leader><leader> :CtrlP<cr>
nnoremap <leader><tab> :AE<cr>
nnoremap <leader>fa :CtrlP app/assets<cr>
nnoremap <leader>fc :CtrlP app/controllers<cr>
nnoremap <leader>fm :CtrlP app/models<cr>
nnoremap <leader>ft :CtrlPTag<cr>
nnoremap <leader>fv :CtrlP app/views<cr>
nnoremap <leader>gc :Gcommit -av<cr>
nnoremap <leader>gd :Git d<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l
nnoremap <leader>n <Plug>CycleNext
nnoremap <leader>p :!mkdir -p %:p:h<cr>
nnoremap <leader>q :ccl<cr>
nnoremap <leader>r :Start<cr>
nnoremap <leader>s :let @/=""<cr>
nnoremap <leader>t :Dispatch<cr>
nnoremap <leader>w :w!<cr>

" Projectionist
let g:projectiles= {
      \  'Gemfile' : {
      \    '*_spec.rb' : {
      \      'dispatch': "bundle exec spring rspec {file}",
      \      'make' : "bundle exec spring rspec spec",
      \      'start' : "bundle exec rescue rspec {file}"
      \    }
      \  }
      \}
