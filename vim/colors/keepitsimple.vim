" keepitsimple.vim
" Maintainer: Jared Norman <hi@jarednorman.ca>
" Last Change: 5 June 2012
" URL: http://blog.jarednorman.ca

set background=dark
hi clear
syntax reset
let g:colors_name="keepitsimple"

" groups
hi Normal ctermfg=7 cterm=none
hi Comment ctermfg=13 cterm=none
hi Constant ctermfg=8 cterm=bold
hi Special ctermfg=4 cterm=bold
hi Identifier ctermfg=2 cterm=bold
hi Statement ctermfg=12 cterm=none
hi PreProc ctermfg=12 cterm=none
hi Ignore ctermfg=0 cterm=none
hi Error ctermfg=1 ctermbg=0 cterm=reverse
hi Todo ctermfg=0 ctermbg=7 cterm=reverse
hi Menu ctermfg=0 cterm=none
hi Text ctermfg=3 cterm=none
hi Type ctermfg=1 cterm=bold
hi LineNr ctermfg=8
hi MatchParen ctermfg=4 ctermbg=none cterm=bold

hi NonText ctermfg=0

" folds
hi Folded ctermfg=7 ctermbg=none cterm=none
hi FoldColumn ctermfg=7 ctermbg=none cterm=none     


" splits
hi StatusLine ctermfg=5 cterm=reverse
hi StatusLineNC ctermfg=5 ctermbg=5 cterm=none
hi VertSplit ctermfg=5 ctermbg=none  cterm=none

" Cursor line
hi CursorLine cterm=none ctermbg=7 ctermfg=0

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
hi tumblrBlock ctermfg=12
hi tumblrTag ctermfg=12
