" txa-ea.vim
" Maintainer: Jared Norman <moc.ae-axt@txa-ea.com> 
" Last Change: 17 January 2012
" URL: http://blog.txa-ea.com

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="txa-ea"

hi Directory ctermfg=3
hi DiffAdd ctermfg=3
hi DiffChange ctermfg=3
hi DiffDelete ctermfg=3
hi DiffText ctermfg=3
hi ErrorMsg ctermfg=16
hi VertSplit ctermfg=11 ctermbg=11 cterm=none
hi Folded ctermfg=3
hi FoldColumn ctermfg=3
hi IncSearch ctermfg=3
hi LineNr ctermbg=8 ctermfg=16 cterm=bold
hi ModeMsg ctermfg=3
hi MoreMsg ctermfg=3
hi NonText ctermfg=3
hi Question ctermfg=3
hi Search ctermfg=3
hi SpecialKey ctermfg=3
hi StatusLine ctermbg=11 ctermfg=8 cterm=BOLD
hi StatusLineNC ctermfg=8 ctermbg=11 cterm=none
hi Title ctermfg=3
hi Visual ctermfg=3
hi VisualNOS ctermfg=3
hi WarningMsg ctermfg=3
hi WildMenu ctermfg=16
hi Menu ctermfg=15 ctermbg=16
hi Scrollbar ctermfg=6
hi Tooltip ctermfg=3
hi CursorLine ctermbg=8 cterm=none
hi ColorColumn ctermbg=8 cterm=none
hi MatchParen cterm=bold ctermbg=16 ctermfg=1

" syntax highlighting groups
hi Comment ctermfg=3 
hi Constant ctermfg=11
hi Identifier ctermfg=4 cterm=none
hi Statement ctermfg=6 cterm=bold
hi PreProc ctermfg=4 cterm=bold
hi Type ctermfg=12
hi Special ctermfg=1
hi Underlined ctermfg=3
hi Ignore ctermfg=3
hi Error ctermfg=9 ctermbg=8
hi Todo ctermfg=3 ctermbg=16 cterm=underline
hi Ignore ctermfg=3 

" language specific
hi RubySymbol ctermfg=3 cterm=bold
