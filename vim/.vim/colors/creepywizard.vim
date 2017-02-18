" Creepy Wizard Vim Theme
" Author: Jared Norma <jared@creepywizard.com>
" Maintainer: Jared Norma <jared@creepywizard.com>

set background=light

highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="creepywizard"

"----------------------------------------------------------------
" General settings                                              |
"----------------------------------------------------------------
"----------------------------------------------------------------
" Syntax group   | Foreground    | Background    | Style        |
"----------------------------------------------------------------

" --------------------------------
" Editor settings
" --------------------------------
hi Normal          ctermfg=none    ctermbg=none    cterm=none
hi Cursor          ctermfg=none    ctermbg=none    cterm=none
hi CursorLine      ctermfg=none    ctermbg=7       cterm=none
hi LineNr          ctermfg=15      ctermbg=none    cterm=none
hi CursorLineNR    ctermfg=none    ctermbg=none    cterm=none

" -----------------
" - Number column -
" -----------------
hi CursorColumn    ctermfg=none    ctermbg=none    cterm=none
hi FoldColumn      ctermfg=none    ctermbg=none    cterm=none
hi SignColumn      ctermfg=none    ctermbg=none    cterm=none
hi Folded          ctermfg=none    ctermbg=none    cterm=none

" -------------------------
" - Window/Tab delimiters - 
" -------------------------
hi VertSplit       ctermfg=15      ctermbg=none    cterm=none
hi ColorColumn     ctermfg=none    ctermbg=none    cterm=none
hi TabLine         ctermfg=none    ctermbg=none    cterm=none
hi TabLineFill     ctermfg=none    ctermbg=none    cterm=none
hi TabLineSel      ctermfg=none    ctermbg=none    cterm=none

" -------------------------------
" - File Navigation / Searching -
" -------------------------------
hi Directory       ctermfg=none    ctermbg=none    cterm=none
hi Search          ctermfg=none    ctermbg=none    cterm=none
hi IncSearch       ctermfg=none    ctermbg=none    cterm=none

" -----------------
" - Prompt/Status -
" -----------------
hi StatusLine      ctermfg=15      ctermbg=15      cterm=bold
hi StatusLineNC    ctermfg=15      ctermbg=15      cterm=none
hi WildMenu        ctermfg=none    ctermbg=none    cterm=none
hi Question        ctermfg=none    ctermbg=none    cterm=none
hi Title           ctermfg=none    ctermbg=none    cterm=none
hi ModeMsg         ctermfg=none    ctermbg=none    cterm=none
hi MoreMsg         ctermfg=none    ctermbg=none    cterm=none

" --------------
" - Visual aid -
" --------------
hi MatchParen      ctermfg=12      ctermbg=none    cterm=reverse
hi Visual          ctermfg=12      ctermbg=none    cterm=reverse,bold
hi VisualNOS       ctermfg=none    ctermbg=none    cterm=none
hi NonText         ctermfg=7       ctermbg=none    cterm=none

hi Todo            ctermfg=none    ctermbg=none    cterm=none
hi Underlined      ctermfg=none    ctermbg=none    cterm=none
hi Error           ctermfg=1       ctermbg=none    cterm=none
hi ErrorMsg        ctermfg=1       ctermbg=none    cterm=none
hi WarningMsg      ctermfg=none    ctermbg=none    cterm=none
hi Ignore          ctermfg=none    ctermbg=none    cterm=none
hi SpecialKey      ctermfg=7       ctermbg=none    cterm=none

" --------------------------------
" Variable types
" --------------------------------
hi Constant        ctermfg=14      ctermbg=none    cterm=none
hi String          ctermfg=2       ctermbg=none    cterm=none
hi StringDelimiter ctermfg=10      ctermbg=none    cterm=none
hi Character       ctermfg=10      ctermbg=none    cterm=none
hi Number          ctermfg=5       ctermbg=none    cterm=none
hi Boolean         ctermfg=5       ctermbg=none    cterm=none
hi Float           ctermfg=5       ctermbg=none    cterm=none

hi Identifier      ctermfg=10      ctermbg=none    cterm=none
hi Function        ctermfg=12      ctermbg=none    cterm=none

" --------------------------------
" Language constructs
" --------------------------------
hi Statement       ctermfg=2       ctermbg=none    cterm=none
hi Conditional     ctermfg=11       ctermbg=none    cterm=none
hi Repeat          ctermfg=2       ctermbg=none    cterm=none
hi Label           ctermfg=10      ctermbg=none    cterm=none
hi Operator        ctermfg=1       ctermbg=none    cterm=none
hi Keyword         ctermfg=2       ctermbg=none    cterm=none
hi Exception       ctermfg=1       ctermbg=none    cterm=none
hi Comment         ctermfg=15      ctermbg=none    cterm=none

hi Special         ctermfg=1       ctermbg=none    cterm=none
hi SpecialChar     ctermfg=1       ctermbg=none    cterm=none
hi Tag             ctermfg=1       ctermbg=none    cterm=none
hi Delimiter       ctermfg=1       ctermbg=none    cterm=none
hi SpecialComment  ctermfg=1       ctermbg=none    cterm=none
hi Debug           ctermfg=1       ctermbg=none    cterm=none

" ----------
" - C like -
" ----------
hi PreProc         ctermfg=2       ctermbg=none    cterm=none
hi Include         ctermfg=1       ctermbg=none    cterm=none
hi Define          ctermfg=2       ctermbg=none    cterm=none
hi Macro           ctermfg=1       ctermbg=none    cterm=none
hi PreCondit       ctermfg=1       ctermbg=none    cterm=none

hi Type            ctermfg=3       ctermbg=none    cterm=none
hi StorageClass    ctermfg=12       ctermbg=none    cterm=none
hi Structure       ctermfg=1       ctermbg=none    cterm=none
hi Typedef         ctermfg=1       ctermbg=none    cterm=none

" --------------------------------
" Diff
" --------------------------------
hi DiffAdd         ctermfg=10      ctermbg=none    cterm=none
hi DiffChange      ctermfg=none    ctermbg=none    cterm=none
hi DiffDelete      ctermfg=9       ctermbg=none    cterm=none
hi DiffRemoved     ctermfg=9       ctermbg=none    cterm=none
hi DiffText        ctermfg=none    ctermbg=none    cterm=none

" --------------------------------
" Git
" --------------------------------
hi GitCommitSummary  ctermfg=0       ctermbg=none    cterm=bold
hi GitCommitOverflow ctermfg=231     ctermbg=9       cterm=none

" --------------------------------
" Completion menu
" --------------------------------
hi Pmenu           ctermfg=none    ctermbg=none    cterm=none
hi PmenuSel        ctermfg=none    ctermbg=none    cterm=none
hi PmenuSbar       ctermfg=none    ctermbg=none    cterm=none
hi PmenuThumb      ctermfg=none    ctermbg=none    cterm=none

" --------------------------------
" Spelling
" --------------------------------
hi SpellBad        ctermfg=none    ctermbg=none    cterm=none
hi SpellCap        ctermfg=none    ctermbg=none    cterm=none
hi SpellLocal      ctermfg=none    ctermbg=none    cterm=none
hi SpellRare       ctermfg=none    ctermbg=none    cterm=none

"--------------------------------------------------------------------
" Specific settings                                                 |
"--------------------------------------------------------------------
