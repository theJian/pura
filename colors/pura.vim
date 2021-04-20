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

let s:palette_bg   = '#bdbdc1'
let s:palette_bg2  = '#dddde1'
let s:palette_fg   = '#000000'
let s:palette_fg2  = '#8d8d90'
let s:palette_cl   = '#c7c7cc'

" Normal colors
let s:palette_black    = '#000000'
let s:palette_red      = '#ab1239'
let s:palette_green    = '#3f602b'
let s:palette_yellow   = '#8e4000'
let s:palette_blue     = '#000ead'
let s:palette_magenta  = '#5600d6'
let s:palette_cyan     = '#006c7f'
let s:palette_white    = '#fff2eb'

" Bright colors
let s:palette_bright_black   = '#454554'
let s:palette_bright_red     = '#d30f45'
let s:palette_bright_green   = '#35840b'
let s:palette_bright_yellow  = '#f4ff37'
let s:palette_bright_blue    = '#2e46ff'
let s:palette_bright_magenta = '#8800a3'
let s:palette_bright_cyan    = '#2f9392'
let s:palette_bright_white   = '#ffffff'

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

call s:hi('Boolean', s:palette_red)
call s:hi('Character', s:palette_green)
call s:hi('Comment', s:palette_bright_black, 'NONE', 'italic')
call s:hi('Conditional', s:palette_bright_blue)
call s:hi('Constant', s:palette_bright_green)
call s:hi('Cursor', 'NONE', 'NONE', 'reverse')
call s:hi('CursorColumn', 'NONE', s:palette_cl)
call s:hi('CursorLineNr', s:palette_black, s:palette_bg2, 'bold')
call s:hi('Debug', s:palette_red, 'NONE', 'bold')
call s:hi('Define', s:palette_bright_magenta)
call s:hi('DiffAdd', 'NONE', s:blend(s:palette_bg, s:palette_bright_green, 0.3))
call s:hi('DiffDelete', 'NONE', s:blend(s:palette_bg, s:palette_bright_red, 0.3))
call s:hi('DiffChange', 'NONE', s:blend(s:palette_bg, s:palette_bright_yellow, 0.3))
call s:hi('DiffText', 'NONE', s:blend(s:palette_bg, s:palette_bright_green, 0.3), 'bold')
call s:hi('Directory', s:palette_blue)
call s:hi('EndOfBuffer', 'bg')
call s:hi('Error', s:palette_bright_white, s:palette_bright_red, 'bold')
call s:hi('ErrorMsg', s:palette_bright_red, 'NONE', 'bold')
call s:hi('Exception', s:palette_bright_red)
call s:hi('Float', s:palette_red)
call s:hi('Folded', s:palette_white)
call s:hi('FoldColumn', 'NONE')
call s:hi('Function', s:palette_blue)
call s:hi('Identifier', s:palette_blue)
call s:hi('Ignore', s:palette_bright_black, 'NONE', 'italic')
call s:hi('IncSearch', s:palette_yellow, s:palette_bright_yellow, 'bold,underline')
call s:hi('Include', s:palette_bright_magenta)
call s:hi('Keyword', s:palette_magenta)
call s:hi('Label', s:palette_yellow)
call s:hi('LineNr', s:palette_fg2)
call s:hi('Macro', s:palette_bright_magenta)
call s:hi('MatchParen', 'NONE', 'NONE', 'bold,underline')
call s:hi('ModeMsg', s:palette_white, s:palette_bright_blue)
call s:hi('MoreMsg', s:palette_blue)
call s:hi('NonText', s:palette_fg2)
call s:hi('Normal', s:palette_fg, s:palette_bg)
call s:hi('Number', s:palette_red)
call s:hi('Operator', 'NONE')
call s:hi('Pmenu', s:palette_black, s:palette_bg2)
call s:hi('PmenuSbar', 'NONE', s:palette_bg2)
call s:hi('PmenuSel', s:palette_white, s:palette_bright_cyan)
call s:hi('PmenuThumb', 'NONE', s:palette_black)
call s:hi('PreCondit', s:palette_bright_magenta)
call s:hi('PreProc', s:palette_bright_magenta)
call s:hi('Question', s:palette_blue, 'NONE', 'bold')
call s:hi('QuickFixLine', 'NONE', s:palette_bright_white, 'bold,underline')
call s:hi('Repeat', s:palette_bright_blue)
call s:hi('Search', 'NONE', s:palette_bright_yellow)
call s:hi('SignColumn', s:palette_fg, 'NONE')
call s:hi('Special', s:palette_red)
call s:hi('SpecialChar', s:palette_red)
call s:hi('SpecialComment', s:palette_red)
call s:hi('SpecialKey', s:palette_fg2)
call s:hi('SpellBad', s:palette_bright_red, 'NONE', 'undercurl')
call s:hi('SpellCap', s:palette_bright_yellow, 'NONE', 'undercurl')
call s:hi('SpellLocal', s:palette_bright_green, 'NONE', 'undercurl')
call s:hi('SpellRare', s:palette_magenta, 'NONE', 'undercurl')
call s:hi('Statement', s:palette_bright_blue)
call s:hi('StatusLine', s:palette_black, s:palette_bg2, 'underline')
call s:hi('StatusLineNC', s:palette_bright_black, s:blend(s:palette_bg2, s:palette_bg, 0.6), 'underline')
call s:hi('StatusLineTerm', s:palette_black, s:palette_bg2, 'underline')
call s:hi('StatusLineTermNC', s:palette_bright_black, s:blend(s:palette_bg2, s:palette_bg, 0.6), 'underline')
call s:hi('StorageClass', s:palette_cyan, 'NONE', 'italic')
call s:hi('String', s:palette_green)
call s:hi('Structure', s:palette_cyan, 'NONE', 'italic')
call s:hi('Substitute', s:palette_white, s:palette_black)
call s:hi('TabLine', s:palette_bright_black, s:blend(s:palette_bg2, s:palette_bg, 0.6), 'underline')
call s:hi('TabLineFill', s:palette_bright_black, s:blend(s:palette_bg2, s:palette_bg, 0.6), 'underline')
call s:hi('TabLineSel', s:palette_black, s:palette_bg2, 'underline,bold')
call s:hi('Tag', s:palette_blue, 'NONE', 'underline')
call s:hi('Terminal', s:palette_fg, s:palette_bg)
call s:hi('Title', s:palette_red)
call s:hi('Todo', 'NONE', s:palette_bg2, 'bold,underline')
call s:hi('Type', s:palette_cyan, 'NONE', 'italic')
call s:hi('Typedef', s:palette_cyan, 'NONE', 'italic')
call s:hi('Underlined', s:palette_blue, 'NONE', 'underline')
call s:hi('VertSplit', s:palette_bright_black)
call s:hi('Visual', 'NONE', s:palette_white)
call s:hi('VisualNOS', 'NONE', s:palette_white)
call s:hi('WarningMsg', s:palette_yellow, 'NONE', 'bold,reverse')
call s:hi('WildMenu', 'NONE', 'NONE', 'reverse')
call s:hi('Whitespace', s:palette_fg2)
hi! link lCursor Cursor
hi! link CursorIM Cursor
hi! link TermCursor Cursor
hi! link CursorLine CursorColumn

" Lsp
call s:hi('LspDiagnosticsError', s:blend(s:palette_bg, s:palette_bright_red, 0.5), 'NONE', 'undercurl,italic')
call s:hi('LspDiagnosticsErrorSign', s:palette_bright_red, s:blend(s:palette_bg, s:palette_red, 0.1), 'bold,italic')
call s:hi('LspDiagnosticsErrorFloating', s:palette_bright_red)
call s:hi('LspDiagnosticsWarning', s:blend(s:palette_bg, s:palette_yellow, 0.6), 'NONE', 'undercurl,italic')
call s:hi('LspDiagnosticsWarningSign', s:palette_yellow, s:blend(s:palette_bg, s:palette_yellow, 0.1), 'italic')
call s:hi('LspDiagnosticsWarningFloating', s:palette_yellow)
call s:hi('LspDiagnosticsInformation', s:blend(s:palette_bg, s:palette_bright_blue, 0.7), 'italic')
call s:hi('LspDiagnosticsInformationSign', s:palette_bright_blue, s:blend(s:palette_bg, s:palette_bright_blue, 0.1), 'italic')
call s:hi('LspDiagnosticsInformationFloating', s:palette_bright_blue)
call s:hi('LspDiagnosticsHint', s:palette_fg2, 'NONE', 'italic,undercurl')
call s:hi('LspDiagnosticsHintSign', s:palette_fg2, s:blend(s:palette_bg, s:palette_fg2, 0.2), 'italic,bold')
call s:hi('LspDiagnosticsHintFloating', s:palette_fg)
" call s:hi('LspReferenceText')
" call s:hi('LspReferenceRead')
" call s:hi('LspReferenceWrite')

" Health
call s:hi('healthSuccess', s:palette_bright_white, s:palette_bright_green)
call s:hi('healthWarning', s:palette_bright_white, s:palette_yellow)
call s:hi('healthError', s:palette_bright_white, s:palette_bright_red)

" Misc
call s:hi('diffRemoved', s:palette_red, s:blend(s:palette_bg, s:palette_bright_red, 0.2))
call s:hi('diffAdded', s:palette_green, s:blend(s:palette_bg, s:palette_bright_green, 0.2))

" TypeScript
hi! link typescriptImport Include
