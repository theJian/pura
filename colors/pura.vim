"===============================================================================
" Theme: pura
" URL: https://github.com/theJian/pura
" Maintainer: Tan Kian <thejianmail@gmail.com>
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

" Terminal colors
let g:terminal_color_0  = pura#palette#black
let g:terminal_color_1  = pura#palette#red
let g:terminal_color_2  = pura#palette#green
let g:terminal_color_3  = pura#palette#yellow
let g:terminal_color_4  = pura#palette#blue
let g:terminal_color_5  = pura#palette#magenta
let g:terminal_color_6  = pura#palette#cyan
let g:terminal_color_7  = pura#palette#white
let g:terminal_color_8  = pura#palette#bright_black
let g:terminal_color_9  = pura#palette#bright_red
let g:terminal_color_10 = pura#palette#bright_green
let g:terminal_color_11 = pura#palette#bright_yellow
let g:terminal_color_12 = pura#palette#bright_blue
let g:terminal_color_13 = pura#palette#bright_magenta
let g:terminal_color_14 = pura#palette#bright_cyan
let g:terminal_color_15 = pura#palette#bright_white

execute 'luafile' expand('<sfile>:p:h').'/colorscheme.lua'
