" vim-airline 'creepywizard' theme

" Normal mode
let s:N1 = ['', '', 0, 4]
let s:N2 = ['', '', 21, 20]
let s:N3 = ['', '', 20, 19]

" Insert mode
let s:I1 = ['', '', 0, 6]
let s:I2 = ['', '', 21, 20]
let s:I3 = ['', '', 20, 19]

" Visual mode
let s:V1 = ['', '', 0, 17]
let s:V2 = ['', '', 21, 20]
let s:V3 = ['', '', 20, 19]

" Replace mode
let s:R1 = ['', '', 0, 1]
let s:R2 = ['', '', 21, 20]
let s:R3 = ['', '', 20, 19]

" Paste mode
let s:PA = ['', 1]

" Info modified
let s:IM = ['', 1]

" Inactive mode
let s:IA1 = ['', '', 20, 19]
let s:IA2 = ['', '', 20, 19]
let s:IA3 = ['', '', 20, 19]

let g:airline#themes#creepywizard#palette = {}

let g:airline#themes#creepywizard#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#creepywizard#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#creepywizard#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#creepywizard#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#creepywizard#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
