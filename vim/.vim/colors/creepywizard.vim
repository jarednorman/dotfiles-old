" creepywizard-vim (https://github.com/jarednorman/????)
" by Jared Norman (http://creepywizard.com)

let s:white = "00"
let s:red = "01"
let s:green = "02"
let s:yellow = "03"
let s:blue = "04"
let s:magenta = "05"
let s:cyan = "06"
let s:black = "07"
let s:brwhite = "08"
let s:brred = "09"
let s:brgreen = "10"
let s:bryellow = "11"
let s:brblue = "12"
let s:brmagenta = "13"
let s:brcyan = "14"
let s:brblack = "15"

hi clear
syntax reset
let g:colors_name = "creepywizard"

" Highlighting function
fun <sid>hi(group, ctermfg, ctermbg, attr)
  if a:ctermfg != ""
    exec "hi " . a:group . " ctermfg=" . a:ctermfg
  endif
  if a:ctermbg != ""
    exec "hi " . a:group . " ctermbg=" . a:ctermbg
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
endfun


" Vim editor colors
call <sid>hi("Bold",          "", "", "")
call <sid>hi("Debug",         "", "", "")
call <sid>hi("Directory",     "", "", "")
call <sid>hi("Error",         "", "", "")
call <sid>hi("ErrorMsg",      "", "", "")
call <sid>hi("Exception",     "", "", "")
call <sid>hi("FoldColumn",    "", "", "")
call <sid>hi("Folded",        "", "", "")
call <sid>hi("IncSearch",     "", "", "")
call <sid>hi("Italic",        "", "", "")
call <sid>hi("Macro",         "", "", "")
call <sid>hi("MatchParen",    "", "", "")
call <sid>hi("ModeMsg",       "", "", "")
call <sid>hi("MoreMsg",       "", "", "")
call <sid>hi("Question",      "", "", "")
call <sid>hi("Search",        "", "", "")
call <sid>hi("SpecialKey",    "", "", "")
call <sid>hi("TooLong",       "", "", "")
call <sid>hi("Underlined",    "", "", "")
call <sid>hi("Visual",        "", "", "")
call <sid>hi("VisualNOS",     "", "", "")
call <sid>hi("WarningMsg",    "", "", "")
call <sid>hi("WildMenu",      "", "", "")
call <sid>hi("Title",         "", "", "")
call <sid>hi("Conceal",       "", "", "")
call <sid>hi("Cursor",        "", "", "")
call <sid>hi("NonText",       "", "", "")
call <sid>hi("Normal",        "", "", "")
call <sid>hi("LineNr",        "", "", "")
call <sid>hi("SignColumn",    "", "", "")
call <sid>hi("StatusLine",    "", "", "")
call <sid>hi("StatusLineNC",  "", "", "")
call <sid>hi("VertSplit",     "", "", "")
call <sid>hi("ColorColumn",   "", "", "")
call <sid>hi("CursorColumn",  "", "", "")
call <sid>hi("CursorLine",    "", "", "")
call <sid>hi("CursorLineNr",  "", "", "")
call <sid>hi("PMenu",         "", "", "")
call <sid>hi("PMenuSel",      "", "", "")
call <sid>hi("TabLine",       "", "", "")
call <sid>hi("TabLineFill",   "", "", "")
call <sid>hi("TabLineSel",    "", "", "")

" Standard syntax highlighting
call <sid>hi("Boolean",      "", "", "")
call <sid>hi("Character",    "", "", "")
call <sid>hi("Comment",      "", "", "")
call <sid>hi("Conditional",  "", "", "")
call <sid>hi("Constant",     "", "", "")
call <sid>hi("Define",       "", "", "")
call <sid>hi("Delimiter",    "", "", "")
call <sid>hi("Float",        "", "", "")
call <sid>hi("Function",     "", "", "")
call <sid>hi("Identifier",   "", "", "")
call <sid>hi("Include",      "", "", "")
call <sid>hi("Keyword",      "", "", "")
call <sid>hi("Label",        "", "", "")
call <sid>hi("Number",       "", "", "")
call <sid>hi("Operator",     "", "", "")
call <sid>hi("PreProc",      "", "", "")
call <sid>hi("Repeat",       "", "", "")
call <sid>hi("Special",      "", "", "")
call <sid>hi("SpecialChar",  "", "", "")
call <sid>hi("Statement",    "", "", "")
call <sid>hi("StorageClass", "", "", "")
call <sid>hi("String",       "", "", "")
call <sid>hi("Structure",    "", "", "")
call <sid>hi("Tag",          "", "", "")
call <sid>hi("Todo",         "", "", "")
call <sid>hi("Type",         "", "", "")
call <sid>hi("Typedef",      "", "", "")

" C highlighting
call <sid>hi("cOperator",   "", "", "")
call <sid>hi("cPreCondit",  "", "", "")

" CSS highlighting
call <sid>hi("cssBraces",      "", "", "")
call <sid>hi("cssClassName",   "", "", "")
call <sid>hi("cssColor",       "", "", "")

" Diff highlighting
call <sid>hi("DiffAdd",       "", "", "")
call <sid>hi("DiffChange",    "", "", "")
call <sid>hi("DiffDelete",    "", "", "")
call <sid>hi("DiffText",      "", "", "")
call <sid>hi("DiffAdded",     "", "", "")
call <sid>hi("DiffFile",      "", "", "")
call <sid>hi("DiffNewFile",   "", "", "")
call <sid>hi("DiffLine",      "", "", "")
call <sid>hi("DiffRemoved",   "", "", "")

" Git highlighting
call <sid>hi("gitCommitOverflow",  "", "", "")
call <sid>hi("gitCommitSummary",   "", "", "")

" HTML highlighting
call <sid>hi("htmlBold",    "", "", "")
call <sid>hi("htmlItalic",  "", "", "")
call <sid>hi("htmlEndTag",  "", "", "")
call <sid>hi("htmlTag",     "", "", "")

" JavaScript highlighting
call <sid>hi("javaScript",        "", "", "")
call <sid>hi("javaScriptBraces",  "", "", "")
call <sid>hi("javaScriptNumber",  "", "", "")

" Markdown highlighting
call <sid>hi("markdownCode",              "", "", "")
call <sid>hi("markdownError",             "", "", "")
call <sid>hi("markdownCodeBlock",         "", "", "")
call <sid>hi("markdownHeadingDelimiter",  "", "", "")

" Python highlighting
call <sid>hi("pythonOperator",  "", "", "")
call <sid>hi("pythonRepeat",    "", "", "")

" Ruby highlighting
call <sid>hi("rubyAttribute",               "", "", "")
call <sid>hi("rubyConstant",                "", "", "")
call <sid>hi("rubyInterpolation",           "", "", "")
call <sid>hi("rubyInterpolationDelimiter",  "", "", "")
call <sid>hi("rubyRegexp",                  "", "", "")
call <sid>hi("rubySymbol",                  "", "", "")
call <sid>hi("rubyStringDelimiter",         "", "", "")
call <sid>hi("rubyPseudoVariable",          "", "", "")

" SASS highlighting
call <sid>hi("sassidChar",    "", "", "")
call <sid>hi("sassClassChar", "", "", "")
call <sid>hi("sassInclude",   "", "", "")
call <sid>hi("sassMixing",    "", "", "")
call <sid>hi("sassMixinName", "", "", "")

" Spelling highlighting
call <sid>hi("SpellBad",     "", "", "")
call <sid>hi("SpellLocal",   "", "", "")
call <sid>hi("SpellCap",     "", "", "")
call <sid>hi("SpellRare",    "", "", "")

" Remove functions
delf <sid>hi

" Throw away the lets
unlet s:white s:red s:green s:yellow s:blue s:magenta s:cyan s:black s:brwhite s:brred s:brgreen s:bryellow s:brblue s:brmagenta s:brcyan ""
