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

function! s:min(a, b)
    if a:a > a:b
        return a:b
    endif
    return a:a
endfunction

function! s:max(a, b)
    if a:a > a:b
        return a:a
    endif
    return a:b
endfunction

function! s:hi(group, ...)
    exec printf('hi %s guifg=%s guibg=%s gui=%s', a:group, get(a:, 1, 'NONE'), get(a:, 2, 'NONE'), get(a:, 3, 'NONE'))
endfunction

function! s:brightness(hex, amt)
    let r = str2nr(a:hex[1:2], 16)
    let g = str2nr(a:hex[3:4], 16)
    let b = str2nr(a:hex[5:6], 16)

    let rr = printf('%02x', float2nr(round(s:min(s:max(0, r + a:amt), 255))))
    let gg = printf('%02x', float2nr(round(s:min(s:max(0, g + a:amt), 255))))
    let bb = printf('%02x', float2nr(round(s:min(s:max(0, b + a:amt), 255))))
    return '#' . rr . gg . bb
endfunction

function! s:blend(c1, c2, ratio)
    let iratio = 1 - a:ratio

    let r1 = str2nr(a:c1[1:2], 16)
    let g1 = str2nr(a:c1[3:4], 16)
    let b1 = str2nr(a:c1[5:6], 16)

    let r2 = str2nr(a:c2[1:2], 16)
    let g2 = str2nr(a:c2[3:4], 16)
    let b2 = str2nr(a:c2[5:6], 16)

    let r = printf('%02x', float2nr(r1 * iratio + r2 * a:ratio))
    let g = printf('%02x', float2nr(g1 * iratio + g2 * a:ratio))
    let b = printf('%02x', float2nr(b1 * iratio + b2 * a:ratio))
    return '#' . r . g . b
endfunction

" Palette ======================================================================

let s:palette_bg   = '#C4C4C4'
let s:palette_fg   = '#000000'

" Normal colors
let s:palette_black    = '#171717'
let s:palette_red      = '#700000'
let s:palette_green    = '#0A3D10'
let s:palette_yellow   = '#703C00'
let s:palette_blue     = '#000EAD'
let s:palette_magenta  = '#530080'
let s:palette_cyan     = '#103B3D'
let s:palette_white    = '#969696'

" Bright colors
let s:palette_bright_black   = '#4D4D4D'
let s:palette_bright_red     = '#A30034'
let s:palette_bright_green   = '#005C2F'
let s:palette_bright_yellow  = '#614E00'
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
call s:hi('ColorColumn', 'NONE', s:brightness(s:palette_bg, -4))
call s:hi('Comment', s:palette_white, 'NONE', 'italic')
call s:hi('Conceal', s:palette_fg)
call s:hi('Conditional', s:palette_bright_yellow)
call s:hi('Constant', s:palette_cyan)
call s:hi('Cursor', 'NONE', 'NONE', 'reverse')
call s:hi('CursorColumn', 'NONE', s:brightness(s:palette_bg, 4))
call s:hi('CursorLineNr', s:palette_bright_black)
call s:hi('Debug', s:palette_red, 'NONE', 'bold')
call s:hi('Define', s:palette_bright_magenta)
call s:hi('Delimiter', 'NONE')
call s:hi('DiffAdd', 'NONE', s:brightness(s:palette_green, 212))
call s:hi('DiffChange', 'NONE', s:brightness(s:palette_red, 228))
call s:hi('DiffDelete', 'NONE', s:brightness(s:palette_red, 228), 'strikethrough')
call s:hi('DiffText', 'NONE', s:brightness(s:palette_red, 160), 'bold')
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
call s:hi('IncSearch', 'NONE', s:brightness(s:palette_yellow, 128), 'bold')
call s:hi('Include', s:palette_magenta)
call s:hi('Keyword', s:palette_yellow)
call s:hi('Label', s:palette_bright_yellow)
call s:hi('LineNr', s:palette_white)
call s:hi('Macro', s:palette_bright_magenta)
call s:hi('MatchParen', 'NONE', s:brightness(s:palette_bg, 32))
call s:hi('ModeMsg', s:palette_fg)
call s:hi('MoreMsg', s:palette_fg)
call s:hi('NonText', s:brightness(s:palette_bg, -64))
call s:hi('Normal', s:palette_fg, s:palette_bg)
call s:hi('Number', s:palette_cyan)
call s:hi('Operator', 'NONE')
call s:hi('Pmenu', s:palette_bright_black, s:brightness(s:palette_bg, 16))
call s:hi('PmenuSbar', 'NONE', s:palette_white)
call s:hi('PmenuSel', s:palette_black, s:brightness(s:palette_bg, 32), 'underline')
call s:hi('PmenuThumb', 'NONE', s:palette_bright_black)
call s:hi('PreCondit', s:palette_bright_magenta)
call s:hi('PreProc', s:palette_magenta)
call s:hi('Question', s:palette_fg, 'NONE', 'bold')
call s:hi('QuickFixLine', 'NONE', s:brightness(s:palette_bg, 32), 'bold,underline')
call s:hi('Repeat', s:palette_yellow)
call s:hi('Search', 'NONE', s:brightness(s:palette_bright_yellow, 160))
call s:hi('SignColumn', s:palette_fg, 'NONE')
call s:hi('Special', s:palette_red)
call s:hi('SpecialChar', s:palette_red)
call s:hi('SpecialComment', s:palette_red)
call s:hi('SpecialKey', s:brightness(s:palette_bg, -64))
call s:hi('SpellBad', s:palette_bright_red, 'NONE', 'undercurl')
call s:hi('SpellCap', s:palette_bright_yellow, 'NONE', 'undercurl')
call s:hi('SpellLocal', s:palette_bright_green, 'NONE', 'undercurl')
call s:hi('SpellRare', s:palette_bright_cyan, 'NONE', 'undercurl')
call s:hi('Statement', s:palette_yellow)
call s:hi('StatusLine', s:palette_black, s:brightness(s:palette_bg, 32), 'underline')
call s:hi('StatusLineNC', s:palette_bright_black, s:brightness(s:palette_bg, 16), 'underline')
call s:hi('StatusLineTerm', s:palette_black, s:brightness(s:palette_bg, 32), 'underline')
call s:hi('StatusLineTermNC', s:palette_bright_black, s:brightness(s:palette_bg, 16), 'underline')
call s:hi('StorageClass', s:palette_bright_green, 'NONE', 'italic')
call s:hi('String', s:palette_bright_cyan)
call s:hi('Structure', s:palette_green, 'NONE', 'italic')
call s:hi('Substitute', s:palette_bright_white, s:palette_black)
call s:hi('TabLine', s:palette_bright_black, s:brightness(s:palette_bg, 16), 'underline')
call s:hi('TabLineFill', s:palette_bright_black, s:brightness(s:palette_bg, 16), 'underline')
call s:hi('TabLineSel', s:palette_black, s:brightness(s:palette_bg, 32), 'underline')
call s:hi('Tag', s:palette_bright_blue)
call s:hi('Terminal', s:palette_fg, s:palette_bg)
call s:hi('Title', s:palette_red)
call s:hi('Todo', 'NONE', s:palette_white, 'bold,underline')
call s:hi('Type', s:palette_green, 'NONE', 'italic')
call s:hi('Typedef', s:palette_green, 'NONE', 'italic')
call s:hi('Underlined', s:palette_bright_blue, 'NONE', 'underline')
call s:hi('VertSplit', s:palette_white)
call s:hi('Visual', 'NONE', s:brightness(s:palette_bg, 24))
call s:hi('VisualNOS', 'NONE', s:brightness(s:palette_bg, 24))
call s:hi('WarningMsg', s:palette_bright_yellow, 'NONE', 'bold,reverse')
call s:hi('WildMenu', 'NONE', 'NONE', 'reverse')
call s:hi('Whitespace', s:brightness(s:palette_bg, -16))
hi! link lCursor Cursor
hi! link CursorIM Cursor
hi! link TermCursor Cursor
hi! link CursorLine CursorColumn

" Lsp
call s:hi('LspDiagnosticsError', s:blend(s:palette_bg, s:palette_bright_red, 0.35), 'NONE', 'undercurl,italic')
call s:hi('LspDiagnosticsErrorSign', s:palette_bright_red, s:blend(s:palette_bg, s:palette_red, 0.1), 'bold,italic')
call s:hi('LspDiagnosticsErrorFloating', s:palette_red)
call s:hi('LspDiagnosticsWarning', s:blend(s:palette_bg, s:palette_yellow, 0.3), 'NONE', 'undercurl,italic')
call s:hi('LspDiagnosticsWarningSign', s:palette_yellow, 'NONE', 'italic')
call s:hi('LspDiagnosticsWarningFloating', s:palette_yellow)
call s:hi('LspDiagnosticsInformation', s:blend(s:palette_bg, s:palette_bright_cyan, 0.4), 'italic')
call s:hi('LspDiagnosticsInformationSign', s:palette_bright_cyan, 'NONE', 'italic')
call s:hi('LspDiagnosticsInformationFloating', s:palette_bright_cyan)
call s:hi('LspDiagnosticsHint', s:blend(s:palette_bg, s:palette_bright_white, 0.55), 'NONE', 'italic')
call s:hi('LspDiagnosticsHintSign', s:blend(s:palette_bg, s:palette_bright_white, 0.8), 'NONE', 'italic')
call s:hi('LspDiagnosticsHintFloating', s:palette_black)
" call s:hi('LspReferenceText')
" call s:hi('LspReferenceRead')
" call s:hi('LspReferenceWrite')

" Help Doc
call s:hi('helpExample', 'NONE', s:brightness(s:palette_bg, -8))
hi! link helpCommand helpExample

" Health
call s:hi('healthSuccess', s:palette_bright_white, s:palette_bright_green)
call s:hi('healthWarning', s:palette_bright_white, s:palette_bright_yellow)
call s:hi('healthError', s:palette_bright_white, s:palette_bright_red)

" Misc
call s:hi('diffRemoved', 'NONE', s:brightness(s:palette_red, 228))
call s:hi('diffAdded', 'NONE', s:brightness(s:palette_green, 212))

" TypeScript
hi! link typescriptImport Include

" hifsfashifa
