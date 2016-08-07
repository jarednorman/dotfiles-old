" vim-airline 'jardo' theme

" Normal mode
let s:N1 = [1, 1, 0, 4]
let s:N2 = [1, 1, 8, 10]
let s:N3 = [1, 1, 12, 0]

" Insert mode
let s:I1 = [1, 1, 0, 5]
let s:I2 = [1, 1, 8, 10]
let s:I3 = [1, 1, 12, 0]

" Visual mode
let s:V1 = [1, 1, 0, 13]
let s:V2 = [1, 1, 8, 10]
let s:V3 = [1, 1, 12, 0]

" Replace mode
let s:R1 = [1, 1, 0, 5]
let s:R2 = [1, 1, 8, 10]
let s:R3 = [1, 1, 12, 0]

" Paste mode
let s:PA = [1, 1]

" Info modified
let s:IM = [1, 1]

" Inactive mode
let s:IA1 = [1, 1, 0, 14]
let s:IA2 = [1, 1, 0, 14]
let s:IA3 = [1, 1, 0, 14]

let g:airline#themes#jardo#palette = {}

let g:airline#themes#jardo#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#jardo#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#jardo#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#jardo#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#jardo#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
