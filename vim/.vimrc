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
Plugin 'mintplant/vim-literate-coffeescript'
Plugin 'vim-ruby/vim-ruby'
Plugin 'elixir-lang/vim-elixir'

Plugin 'slim-template/vim-slim'
Plugin 'nono/vim-handlebars'
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
Plugin 'sjl/splice.vim'
Plugin 'garbas/vim-snipmate'

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

" delimitMate
let g:SuperTabCrMapping = 0
let g:delimitMate_expand_space = 1
let g:delimitMate_expand_cr = 2

set noswapfile
set nobackup
set noerrorbells visualbell t_vb=

set number
set noexpandtab
set softtabstop=8
set shiftwidth=8

set hlsearch
set ignorecase
set smartcase

set wrap
set cmdheight=1
set list listchars=tab:»→,trail:␣
set wildmode=list:longest,list:full
set splitright
set splitbelow
set fillchars+=vert:│
au WinEnter * match Todo '\%>80v.\+'

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
nnoremap <leader><tab> :tabnew<cr>
nnoremap <leader>[ :tabprev<cr>
nnoremap <leader>] :tabnext<cr>
call togglebg#map("") " Make ToggleBG work
nnoremap <leader>b :ToggleBG<cr>
nnoremap <leader>d :!mkdir -p %:p:h<cr>
nnoremap <leader>fg :call FzyCommand("ag -g '' $(bundle show $(bundle list \| cut -f 4 -d' ' \| fzy))", ":e")<cr>
nnoremap <leader>gc :Gcommit -av<cr>
nnoremap <leader>gd :Git d<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l
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
