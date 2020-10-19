" =============================================================================
" Filename: autoload/lightline/colorscheme/glowbeam.vim
" Author: cooper-anderson
" License: MIT License
" Last Change: 2020/10/16 16:52:08.
" =============================================================================

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ ['darkestgreen', 'brightgreen', 'bold'], ['white', 'gray4'] ]
let s:p.normal.right = [ ['gray5', 'gray10'], ['gray9', 'gray4'], ['gray8', 'gray2'] ]
let s:p.inactive.right = [ ['gray1', 'gray5'], ['gray4', 'gray1'], ['gray4', 'gray0'] ]
let s:p.inactive.left = s:p.inactive.right[1:]
let s:p.insert.left = [ ['darkestcyan', 'white', 'bold'], ['white', 'darkblue'] ]
let s:p.insert.right = [ [ 'darkestcyan', 'mediumcyan' ], [ 'mediumcyan', 'darkblue' ], [ 'mediumcyan', 'darkestblue' ] ]
let s:p.replace.left = [ ['white', 'brightred', 'bold'], ['white', 'gray4'] ]
let s:p.visual.left = [ ['darkred', 'brightorange', 'bold'], ['white', 'gray4'] ]
let s:p.normal.middle = [ [ 'gray7', 'gray2' ] ]
let s:p.insert.middle = [ [ 'mediumcyan', 'darkestblue' ] ]
let s:p.replace.middle = s:p.normal.middle
let s:p.replace.right = s:p.normal.right
let s:p.tabline.left = [ [ 'gray9', 'gray3' ] ]
let s:p.tabline.tabsel = [ [ 'darkestgreen', 'brightgreen' ] ]
let s:p.tabline.middle = [ [ 'gray1', 'gray1' ] ]
let s:p.tabline.right = [ [ 'gray9', 'gray3' ] ]
let s:p.normal.error = [ [ 'gray10', 'red', 'bold' ] ]
let s:p.normal.warning = [ [ 'gray10', 'yellow', 'bold' ] ]
let s:p.normal.ok = [ [ 'darkestgreen', 'brightgreen', 'bold' ] ]

let g:lightline#colorscheme#glowbeam#palette = lightline#colorscheme#fill(s:p)
