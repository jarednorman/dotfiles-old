" keepitsimple.vim
" Maintainer: Jared Norman <hi@jarednorman.ca>
" Last Change: 5 June 2012
" URL: http://blog.jarednorman.ca

set background=dark
hi clear
syntax reset
let g:colors_name="keepitsimple"

" groups
hi Normal ctermfg=15 cterm=none
hi Comment ctermfg=13 cterm=none
hi Constant ctermfg=6 cterm=none
hi Special ctermfg=6 cterm=none
hi Identifier ctermfg=3 cterm=bold
hi Statement ctermfg=3 cterm=none
hi PreProc ctermfg=5 cterm=none
hi Ignore ctermfg=0 cterm=none
hi Error ctermfg=1 ctermbg=0 cterm=reverse
hi Todo ctermfg=0 cterm=none
hi Menu ctermfg=0 cterm=none
hi Text ctermfg=3 cterm=none
hi Type ctermfg=9 cterm=none
hi LineNr ctermfg=0
hi MatchParen ctermfg=4 ctermbg=none cterm=bold

hi NonText ctermfg=0

" folds
hi Folded ctermfg=7 ctermbg=none cterm=none
hi FoldColumn ctermfg=7 ctermbg=none cterm=none


" splits
hi StatusLine ctermfg=10 cterm=reverse
hi StatusLineNC ctermfg=8 ctermbg=0 cterm=none
hi VertSplit ctermfg=0 ctermbg=0  cterm=none

" Cursor line
hi CursorLine cterm=underline

" randoms
hi Underlined cterm=bold

" html
hi htmlTagN ctermfg=4
hi htmlBoldUnderline cterm=none
hi htmlBoldItalic cterm=none
hi htmlBold cterm=none
hi htmlBoldUnderlineItalic cterm=none
hi htmlUnderlineItalic cterm=none
hi htmlUnderline cterm=none

" css

" js
hi javaScriptValue ctermfg=14
hi javaScriptParens ctermfg=5

" tumblr
hi tumblrBlock ctermfg=11
hi tumblrTag ctermfg=11
