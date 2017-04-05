set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Some handy stuff:
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-eunuch'
Plugin 'vim-airline/vim-airline'
Plugin 'christoomey/vim-tmux-navigator'

" Tool support:
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-fugitive'
Plugin 'rking/ag.vim'

" Language/framework support:
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-haml'
Plugin 'vim-ruby/vim-ruby'
Plugin 'jason0x43/vim-js-indent'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

" Colors
Plugin 'chriskempson/base16-vim'

call vundle#end()
filetype plugin indent on

" Make it pretty!
syntax on
let base16colorspace=256
colo base16-default-dark
hi search ctermfg=4 ctermbg=0 cterm=bold,reverse
hi incsearch ctermfg=4 ctermbg=18 cterm=bold
hi visual ctermfg=6 ctermbg=0 cterm=reverse
hi vertsplit ctermfg=18 ctermbg=18 cterm=none
hi statusline ctermfg=18 ctermbg=18 cterm=none
hi statuslinenc ctermfg=18 ctermbg=18 cterm=none

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
set cmdheight=1
set wildmode=list:longest,list:full
set splitright
set splitbelow
set ttyfast
set lazyredraw
set list listchars=tab:→\ ,trail:•
set fillchars+=vert:\ 

" vim-jsx
let g:jsx_ext_required = 0

" vim-airline
let g:airline_theme = 'creepywizard'
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_alt_sep = ''
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#buffer_min_count = 2
let g:airline_section_a = '%{airline#util#wrap(airline#parts#mode(),0)}%#__restore__#%{airline#util#append(airline#parts#crypt(),0)}%{airline#util#append(airline#parts#paste(),0)}%{airline#util#append(airline#parts#spell(),0)}%{airline#util#append("",0)}%{airline#util#append("",0)}%{airline#util#append(airline#parts#iminsert(),0)}'
let g:airline_section_z = '%p%% %{g:airline_symbols.linenr} %l/%L%{g:airline_symbols.maxlinenr} : %v'

" Changes cursor while in insert mode.
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

" The final frontier.
let mapleader = "\<space>"
let g:mapleader = "\<space>"

" Distribute windows when resize happens.
au VimResized * :wincmd =

" Fzy support!
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
nnoremap <leader><leader> :call FzyCommand("ag --nocolor -l --hidden --ignore /.git", ":e")<cr>
nnoremap <leader>fg :call FzyCommand("ag -g '' $(bundle show $(bundle list \| cut -f 4 -d' ' \| fzy))", ":e")<cr>
nnoremap <leader>fp :call FzyCommand("ag --nocolor -l --hidden --ignore /.git -g '' ~/Codes/$(ls ~/Codes \| fzy)", ":e")<cr>

" Convenience
nnoremap <cr> :
nnoremap <leader><cr> <cr>

" Disable things I accidentally do.
nnoremap K \<noop>
vnoremap K \<noop>
nnoremap <c-w>o \<noop>
vnoremap <c-w>o \<noop>

" Clear search.
nnoremap <leader>/ :let @/=""<cr>

" Tab navigation.
nnoremap <leader><tab> :tabn<cr>
nnoremap <leader><s-tab> :tabp<cr>

" Create folder for current file
nnoremap <leader>mk :!mkdir -p %:p:h<cr>

" Custom test runner support.
nnoremap <leader>t :!jf test %:.<cr><cr>
nnoremap <leader>r :!jf run %:.<cr><cr>

" Convenience for editing Vim themes.
map <leader>x :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
      \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
      \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
