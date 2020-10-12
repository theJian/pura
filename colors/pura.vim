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
let s:palette_white    = '#969696'

" Bright colors
let s:palette_bright_black   = '#4D4D4D'
let s:palette_bright_red     = '#A30034'
let s:palette_bright_green   = '#005C2F'
let s:palette_bright_yellow  = '#6B4900'
let s:palette_bright_blue    = '#004FA3'
let s:palette_bright_magenta = '#8800A3'
let s:palette_bright_cyan    = '#005475'
let s:palette_bright_white   = '#FFFFFF'

" Terminal colors
let g:terminal_color_0  = s:palette_black
let g:terminal_color_1  = s:palette_red
let g:terminal_color_2  = s:palette_green
let g:terminal_color_3  = s:palette_yellow
let g:terminal_color_4  = s:palette_blue
let g:terminal_color_5  = s:palette_magenta
let g:terminal_color_6  = s:palette_cyan
let g:terminal_color_7  = s:palette_white
let g:terminal_color_8  = s:palette_bright_black
let g:terminal_color_9  = s:palette_bright_red
let g:terminal_color_10 = s:palette_bright_green
let g:terminal_color_11 = s:palette_bright_yellow
let g:terminal_color_12 = s:palette_bright_blue
let g:terminal_color_13 = s:palette_bright_magenta
let g:terminal_color_14 = s:palette_bright_cyan
let g:terminal_color_15 = s:palette_bright_white

" Scheme =======================================================================

call s:hi('Boolean', s:palette_cyan)
call s:hi('Character', s:palette_bright_cyan)
call s:hi('ColorColumn', 'NONE', s:brightness(s:palette_bg, 0.2))
call s:hi('Comment', s:palette_white, 'NONE', 'italic')
call s:hi('Conceal', s:palette_fg)
call s:hi('Conditional', s:palette_bright_yellow)
call s:hi('Constant', s:palette_cyan)
call s:hi('Cursor', 'NONE', 'NONE', 'reverse')
call s:hi('CursorColumn', 'NONE', s:brightness(s:palette_bg, 0.15))
call s:hi('CursorLineNr', s:palette_bright_black)
call s:hi('Debug', s:palette_red, 'NONE', 'bold')
call s:hi('Define', s:palette_bright_magenta)
call s:hi('Delimiter', 'NONE')
call s:hi('DiffAdd', 'NONE', s:brightness(s:palette_bright_green, 0.8))
call s:hi('DiffChange', 'NONE', s:brightness(s:palette_bright_red, 0.8))
call s:hi('DiffDelete', 'NONE', s:brightness(s:palette_bright_red, 0.65), 'strikethrough')
call s:hi('DiffText', 'NONE', s:brightness(s:palette_bright_red, 0.65), 'bold')
call s:hi('Directory', s:palette_blue)
call s:hi('EndOfBuffer', 'bg')
call s:hi('Error', s:palette_bright_white, s:palette_bright_red)
call s:hi('ErrorMsg', s:palette_bright_red, 'NONE', 'bold,reverse')
call s:hi('Exception', s:palette_bright_red)
call s:hi('Float', s:palette_cyan)
call s:hi('FoldColumn', s:palette_fg, s:palette_bg)
call s:hi('Folded', s:palette_bright_black)
call s:hi('Function', s:palette_blue)
call s:hi('Identifier', s:palette_blue)
call s:hi('Ignore', s:palette_bright_black, 'NONE', 'italic')
call s:hi('IncSearch', s:palette_black, s:palette_bright_white, 'bold,underline')
call s:hi('Include', s:palette_magenta)
call s:hi('Keyword', s:palette_yellow)
call s:hi('Label', s:palette_bright_yellow)
call s:hi('LineNr', s:palette_white)
call s:hi('Macro', s:palette_bright_magenta)
call s:hi('MatchParen', 'NONE', s:brightness(s:palette_bg, 0.4))
call s:hi('ModeMsg', s:palette_fg)
call s:hi('MoreMsg', s:palette_fg)
call s:hi('NonText', s:brightness(s:palette_bg, -0.2))
call s:hi('Normal', s:palette_fg, s:palette_bg)
call s:hi('Number', s:palette_cyan)
call s:hi('Operator', 'NONE')
call s:hi('Pmenu', s:palette_bright_black, s:brightness(s:palette_bg, 0.25))
call s:hi('PmenuSbar', 'NONE', s:brightness(s:palette_white, -0.1))
call s:hi('PmenuSel', s:palette_black, s:brightness(s:palette_bg, 0.5), 'underline')
call s:hi('PmenuThumb', 'NONE', s:palette_bright_black)
call s:hi('PreCondit', s:palette_bright_magenta)
call s:hi('PreProc', s:palette_magenta)
call s:hi('Question', s:palette_fg, 'NONE', 'bold')
call s:hi('QuickFixLine', 'NONE', s:brightness(s:palette_bg, 0.3), 'bold,underline')
call s:hi('Repeat', s:palette_yellow)
call s:hi('Search', s:palette_black, s:brightness(s:palette_bg, 0.5), 'underline')
call s:hi('SignColumn', s:palette_fg, s:palette_bg)
call s:hi('Special', s:palette_red)
call s:hi('SpecialChar', s:palette_red)
call s:hi('SpecialComment', s:palette_red)
call s:hi('SpecialKey', s:brightness(s:palette_bg, -0.2))
call s:hi('SpellBad', s:palette_bright_red, 'NONE', 'undercurl')
call s:hi('SpellCap', s:palette_bright_yellow, 'NONE', 'undercurl')
call s:hi('SpellLocal', s:palette_bright_green, 'NONE', 'undercurl')
call s:hi('SpellRare', s:palette_bright_cyan, 'NONE', 'undercurl')
call s:hi('Statement', s:palette_yellow)
call s:hi('StatusLine', s:palette_black, s:brightness(s:palette_bg, 0.5), 'underline')
call s:hi('StatusLineNC', s:palette_bright_black, s:brightness(s:palette_bg, 0.2), 'underline')
call s:hi('StatusLineTerm', s:palette_black, s:brightness(s:palette_bg, 0.5), 'underline')
call s:hi('StatusLineTermNC', s:palette_bright_black, s:brightness(s:palette_bg, 0.2), 'underline')
call s:hi('StorageClass', s:palette_bright_green, 'NONE', 'italic')
call s:hi('String', s:palette_bright_cyan)
call s:hi('Structure', s:palette_green, 'NONE', 'italic')
call s:hi('Substitute', s:palette_bright_white, s:palette_black)
call s:hi('TabLine', s:palette_bright_black, s:brightness(s:palette_bg, 0.2), 'underline')
call s:hi('TabLineFill', s:palette_bright_black, s:brightness(s:palette_bg, 0.2), 'underline')
call s:hi('TabLineSel', s:palette_black, s:brightness(s:palette_bg, 0.5), 'underline')
call s:hi('Tag', s:palette_bright_blue)
call s:hi('Terminal', s:palette_fg, s:palette_bg)
call s:hi('Title', s:palette_red)
call s:hi('Todo', 'NONE', s:palette_white, 'bold,underline')
call s:hi('Type', s:palette_green, 'NONE', 'italic')
call s:hi('Typedef', s:palette_green, 'NONE', 'italic')
call s:hi('Underlined', s:palette_bright_blue, 'NONE', 'underline')
call s:hi('VertSplit', s:palette_white)
call s:hi('Visual', 'NONE', s:brightness(s:palette_bg, 0.5))
call s:hi('VisualNOS', 'NONE', s:brightness(s:palette_bg, 0.5))
call s:hi('WarningMsg', s:palette_bright_yellow, 'NONE', 'bold,reverse')
call s:hi('WildMenu', 'NONE', 'NONE', 'reverse')
call s:hi('Whitespace', s:brightness(s:palette_bg, -0.2))
call s:hi('diffRemoved', 'NONE', s:brightness(s:palette_bright_red, 0.8))
call s:hi('diffAdded', 'NONE', s:brightness(s:palette_bright_green, 0.8))

hi! link lCursor Cursor
hi! link CursorIM Cursor
hi! link TermCursor Cursor
hi! link CursorLine CursorColumn

