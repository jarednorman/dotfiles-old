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
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-projectionist'
Plugin 'adammathys/vim-dispatch'
Plugin 'tpope/vim-rails'

" language support
Plugin 'kchmck/vim-coffee-script'
Plugin 'vim-ruby/vim-ruby'
Plugin 'slim-template/vim-slim'
Plugin 'nono/vim-handlebars'
Plugin 'elixir-lang/vim-elixir'
Plugin 'mustache/vim-mustache-handlebars'

" tool support
Plugin 'rking/ag.vim'
Plugin 'int3/vim-extradite'
Plugin 'sunaku/vim-ruby-minitest'
Plugin 'Keithbsmiley/rspec.vim'

" Other Stuff
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'sjl/vitality.vim'
Plugin 'mattn/webapi-vim'
Plugin 'ervandew/supertab'
Plugin 'godlygeek/tabular'
Plugin 'L9'
Plugin 'mattn/gist-vim'
Plugin 'bling/vim-airline'
Plugin 'sjl/splice.vim'

" Colors
Plugin 'jarednorman/vim-colors-solarized'

call vundle#end()
filetype plugin indent on
syntax on

" gist-vim
let g:gist_post_private = 1

syntax enable
set t_Co=256
if !has("gui_running")
  let g:gruvbox_italic=0
endif
set background=light
colo solarized

" airline
let g:airline_left_sep=''
let g:airline_right_sep=''

" delimitMate
let g:SuperTabCrMapping = 0
let g:delimitMate_expand_space = 1
let g:delimitMate_expand_cr = 2

set noswapfile
set nobackup
set noerrorbells visualbell t_vb=

set expandtab
set softtabstop=2
set shiftwidth=2

set nowrap
set hlsearch
set cmdheight=1
set laststatus=2
set showcmd
set list listchars=tab:»→,trail:␣
set wildmode=list:longest,list:full
set wildmenu
set splitright
set splitbelow

" Allow local vimrc
set exrc
set secure

" Insert filename without path or extension
inoremap \fn <C-R>=expand("%:t:r")<CR>

nnoremap <cr> :
nnoremap K \<noop>
vnoremap K \<noop>
nnoremap <c-l> <c-PageDown>
nnoremap <c-h> <c-PageUp>

nnoremap <leader><cr> <cr>
nnoremap <leader><leader> :call FzyCommand("ag --nocolor -l", ":e")<cr>
nnoremap <leader><tab> :AE<cr>
nnoremap <leader>a :A<cr>
nnoremap <leader>b :ToggleBG<cr>
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
let g:projectiles = {
      \  'mix.exs' : {
      \    'lib/*.ex': {
      \      'alternate' : "test/{}_test.exs"
      \    },
      \    'test/*_test.exs' : {
      \      'alternate' : "lib/{}.ex",
      \      'dispatch': "mix test",
      \      'start' : "mix test",
      \      'make' : "mix compile",
      \    }
      \  }
      \}

"RSpec + Dispatch!
let g:rspec_command = 'Dispatch rspec {spec}'

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
