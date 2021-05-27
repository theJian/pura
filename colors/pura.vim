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

execute 'luafile' expand('<sfile>:p:h').'/colorscheme.lua'
