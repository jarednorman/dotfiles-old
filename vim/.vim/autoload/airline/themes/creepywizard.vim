" vim-airline 'creepywizard' theme

" Normal mode
let s:N1 = ['', '', 231, 12]
let s:N2 = ['', '', 0, 15]
let s:N3 = ['', '', 8, 7]

" Insert mode
let s:I1 = ['', '', 231, 11]
let s:I2 = ['', '', 0, 15]
let s:I3 = ['', '', 8, 7]

" Visual mode
let s:V1 = ['', '', 231, 10]
let s:V2 = ['', '', 0, 15]
let s:V3 = ['', '', 8, 7]

" Replace mode
let s:R1 = ['', '', 231, 1]
let s:R2 = ['', '', 0, 15]
let s:R3 = ['', '', 8, 7]

" Paste mode
let s:PA = ['', 1]

" Info modified
let s:IM = ['', 1]

" Inactive mode
let s:IA1 = ['', '', 8, 15]
let s:IA2 = ['', '', 8, 7]
let s:IA3 = ['', '', 8, 7]

let g:airline#themes#creepywizard#palette = {}

let g:airline#themes#creepywizard#palette.normal   = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#creepywizard#palette.insert   = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#creepywizard#palette.visual   = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#creepywizard#palette.replace  = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#creepywizard#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
