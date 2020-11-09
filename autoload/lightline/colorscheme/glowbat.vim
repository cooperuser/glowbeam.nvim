" =============================================================================
" Filename: autoload/lightline/colorscheme/glowbat.vim
" Author: cooper-anderson
" License: MIT License
" Last Change: 2020/11/30 14:52:43.
" =============================================================================
let s:glow0     = ['#1b2229', 0]
let s:glow1     = ['#1c1f24', 0]
let s:glow2     = ['#202328', 0]
let s:glow3     = ['#23272e', 0]
let s:glow4     = ['#3f444a', 0]
let s:glow5     = ['#5b6268', 0]
let s:glow6     = ['#73797e', 0]
let s:glow7     = ['#9ca0a4', 0]
let s:glow8     = ['#b1b1b1', 0]
let s:glow9     = ['#e6e6e6', 0]

let s:red       = [ '#ff6c6b', 203 ]
let s:orange    = [ '#f2c68a', 216 ]
let s:yellow    = [ '#cae682', 180 ]
let s:green     = [ '#95e454', 119 ]
let s:blue      = [ '#8ac6f2', 117 ]
let s:purple    = [ '#c678dd', 216 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:glow4, s:green ], [ s:glow7, s:glow4 ] ]
let s:p.normal.right = [ [ s:glow9, s:glow6 ], [ s:glow6, s:glow4 ] ]
let s:p.inactive.right =  [ [ s:glow6, s:glow4 ], [ s:glow5, s:glow3 ] ]
let s:p.inactive.middle = [ [ s:glow5, s:glow1 ] ]
let s:p.inactive.left =  [ [ s:glow5, s:glow3 ], [ s:glow6, s:glow4 ] ]
let s:p.insert.left = [ [ s:glow4, s:blue ], [ s:glow7, s:glow4 ] ]
let s:p.replace.left = [ [ s:glow4, s:red ], [ s:glow7, s:glow4 ] ]
let s:p.visual.left = [ [ s:glow4, s:orange ], [ s:glow7, s:glow4 ] ]
let s:p.normal.middle = [ [ s:glow5, s:glow1 ] ]
let s:p.tabline.left = [ [ s:glow9, s:glow6 ] ]
let s:p.tabline.tabsel = [ [ s:glow9, s:glow3 ] ]
let s:p.tabline.middle = [ [ s:glow8, s:glow4 ] ]
let s:p.tabline.right = [ [ s:glow8, s:glow6 ] ]
let s:p.normal.error = [ [ s:glow3, s:red ] ]
let s:p.normal.warning = [ [ s:glow4, s:yellow ] ]

let g:lightline#colorscheme#glowbat#palette = lightline#colorscheme#flatten(s:p)
