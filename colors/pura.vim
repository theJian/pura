"===============================================================================
" Theme: pura
" URL: https://github.com/theJian/pura
" Maintainer: theJian <thejianmail@gmail.com>
" License: MIT
"===============================================================================


if !has('termguicolors') || !&termguicolors
    finish
endif

highlight clear
if exists('syntax_on')
    syntax reset
endif

let g:colors_name = 'pura'


function! s:hi(group, ...)
    exec printf('hi %s guifg=%s guibg=%s gui=%s', a:group, get(a:, 1, 'NONE'), get(a:, 2, 'NONE'), get(a:, 3, 'NONE'))
endfunction

function! s:brightness(hex, percent)
    let r = str2nr(a:hex[1:2], 16)
    let g = str2nr(a:hex[3:4], 16)
    let b = str2nr(a:hex[5:6], 16)

    let rr = printf('%02x', float2nr(r + (255 - r) * a:percent))
    let gg = printf('%02x', float2nr(g + (255 - g) * a:percent))
    let bb = printf('%02x', float2nr(b + (255 - b) * a:percent))
    return '#' . rr . gg . bb
endfunction


" Palette ======================================================================

let s:palette_bg   = '#C4C4C4'
let s:palette_fg   = '#000000'

" Normal colors
let s:palette_black    = '#171717'
let s:palette_red      = '#700000'
let s:palette_green    = '#0A3D10'
let s:palette_yellow   = '#572800'
let s:palette_blue     = '#000EAD'
let s:palette_magenta  = '#530080'
let s:palette_cyan     = '#103B3D'
let s:palette_white    = '#909090'

" Bright colors
let s:palette_bright_black   = '#4D4D4D'
let s:palette_bright_red     = '#A30034'
let s:palette_bright_green   = '#005C2F'
let s:palette_bright_yellow  = '#5B4E06'
let s:palette_bright_blue    = '#004FA3'
let s:palette_bright_magenta = '#8800A3'
let s:palette_bright_cyan    = '#005475'
let s:palette_bright_white   = '#FFFFFF'


" Scheme =======================================================================

call s:hi('ColorColumn', 'NONE', s:palette_white)
call s:hi('Conceal', s:palette_fg) " TODO
call s:hi('Cursor', 'NONE', 'NONE', 'reverse')
call s:hi('CursorColumn', 'NONE', s:brightness(s:palette_bg, 0.15))
call s:hi('Normal', s:palette_fg, s:palette_bg)
call s:hi('Terminal', s:palette_fg, s:palette_bg)
call s:hi('EndOfBuffer', 'bg')
call s:hi('Folded', s:palette_bright_black)
call s:hi('FoldColumn', s:palette_fg, s:palette_bg)
call s:hi('SignColumn', s:palette_fg, s:palette_bg)
call s:hi('IncSearch', s:palette_bright_white, s:palette_black)

hi link lCursor Cursor
hi link CursorIM Cursor
hi link CursorLine CursorColumn
