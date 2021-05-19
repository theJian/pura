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

" Scheme =======================================================================

call pura#hi('Boolean', pura#palette#red)
call pura#hi('Character', pura#palette#green)
call pura#hi('ColorColumn', 'NONE', pura#palette#cursor_line)
call pura#hi('Comment', pura#palette#bright_black, 'NONE', 'italic')
call pura#hi('Conditional', pura#palette#bright_blue)
call pura#hi('Constant', pura#palette#bright_green)
call pura#hi('Cursor', 'NONE', 'NONE', 'reverse')
call pura#hi('CursorColumn', 'NONE', pura#palette#cursor_line)
call pura#hi('CursorLineNr', pura#palette#black, pura#palette#bg2, 'bold')
call pura#hi('Debug', pura#palette#red, 'NONE', 'bold')
call pura#hi('Define', pura#palette#bright_magenta)
call pura#hi('DiffAdd', 'NONE', pura#blend(pura#palette#bg, pura#palette#bright_green, 0.3))
call pura#hi('DiffDelete', 'NONE', pura#blend(pura#palette#bg, pura#palette#bright_red, 0.3))
call pura#hi('DiffChange', 'NONE', pura#blend(pura#palette#bg, pura#palette#bright_yellow, 0.3))
call pura#hi('DiffText', 'NONE', pura#blend(pura#palette#bg, pura#palette#bright_green, 0.3), 'bold')
call pura#hi('Directory', pura#palette#blue)
call pura#hi('EndOfBuffer', 'bg')
call pura#hi('Error', pura#palette#bright_white, pura#palette#bright_red, 'bold')
call pura#hi('ErrorMsg', pura#palette#bright_red, 'NONE', 'bold')
call pura#hi('Exception', pura#palette#bright_red)
call pura#hi('Float', pura#palette#red)
call pura#hi('Folded', pura#palette#white)
call pura#hi('FoldColumn', 'NONE')
call pura#hi('Function', pura#palette#blue)
call pura#hi('Identifier', pura#palette#blue)
call pura#hi('Ignore', pura#palette#bright_black, 'NONE', 'italic')
call pura#hi('IncSearch', pura#palette#yellow, pura#palette#bright_yellow, 'bold,underline')
call pura#hi('Include', pura#palette#bright_magenta)
call pura#hi('Keyword', pura#palette#magenta)
call pura#hi('Label', pura#palette#yellow)
call pura#hi('LineNr', pura#palette#fg2)
call pura#hi('Macro', pura#palette#bright_magenta)
call pura#hi('MatchParen', 'NONE', 'NONE', 'bold,underline')
call pura#hi('ModeMsg', pura#palette#white, pura#palette#bright_blue)
call pura#hi('MoreMsg', pura#palette#blue)
call pura#hi('NonText', pura#palette#fg2)
call pura#hi('Normal', pura#palette#fg, pura#palette#bg)
call pura#hi('Number', pura#palette#red)
call pura#hi('Operator', 'NONE')
call pura#hi('Pmenu', pura#palette#black, pura#palette#bg3)
call pura#hi('PmenuSbar', 'NONE', pura#palette#bg3)
call pura#hi('PmenuSel', pura#palette#white, pura#palette#bright_cyan)
call pura#hi('PmenuThumb', 'NONE', pura#palette#black)
call pura#hi('PreCondit', pura#palette#bright_magenta)
call pura#hi('PreProc', pura#palette#bright_magenta)
call pura#hi('Question', pura#palette#blue, 'NONE', 'bold')
call pura#hi('QuickFixLine', 'NONE', pura#palette#bright_white, 'bold,underline')
call pura#hi('Repeat', pura#palette#bright_blue)
call pura#hi('Search', 'NONE', pura#palette#bright_yellow)
call pura#hi('SignColumn', pura#palette#fg, 'NONE')
call pura#hi('Special', pura#palette#red)
call pura#hi('SpecialChar', pura#palette#red)
call pura#hi('SpecialComment', pura#palette#red)
call pura#hi('SpecialKey', pura#palette#fg2)
call pura#hi('SpellBad', pura#palette#bright_red, 'NONE', 'undercurl')
call pura#hi('SpellCap', pura#palette#bright_yellow, 'NONE', 'undercurl')
call pura#hi('SpellLocal', pura#palette#bright_green, 'NONE', 'undercurl')
call pura#hi('SpellRare', pura#palette#magenta, 'NONE', 'undercurl')
call pura#hi('Statement', pura#palette#bright_blue)
call pura#hi('StatusLine', pura#palette#black, pura#palette#bg2, 'underline')
call pura#hi('StatusLineNC', pura#palette#bright_black, pura#blend(pura#palette#bg2, pura#palette#bg, 0.6), 'underline')
call pura#hi('StatusLineTerm', pura#palette#black, pura#palette#bg2, 'underline')
call pura#hi('StatusLineTermNC', pura#palette#bright_black, pura#blend(pura#palette#bg2, pura#palette#bg, 0.6), 'underline')
call pura#hi('StorageClass', pura#palette#cyan, 'NONE', 'italic')
call pura#hi('String', pura#palette#green)
call pura#hi('Structure', pura#palette#cyan, 'NONE', 'italic')
call pura#hi('Substitute', pura#palette#white, pura#palette#black)
call pura#hi('TabLine', pura#palette#bright_black, pura#blend(pura#palette#bg2, pura#palette#bg, 0.6), 'underline')
call pura#hi('TabLineFill', pura#palette#bright_black, pura#blend(pura#palette#bg2, pura#palette#bg, 0.6), 'underline')
call pura#hi('TabLineSel', pura#palette#black, pura#palette#bg2, 'underline,bold')
call pura#hi('Tag', pura#palette#blue, 'NONE', 'underline')
call pura#hi('Terminal', pura#palette#fg, pura#palette#bg)
call pura#hi('Title', pura#palette#red)
call pura#hi('Todo', 'NONE', pura#palette#bg2, 'bold,underline')
call pura#hi('Type', pura#palette#cyan, 'NONE', 'italic')
call pura#hi('Typedef', pura#palette#cyan, 'NONE', 'italic')
call pura#hi('Underlined', pura#palette#blue, 'NONE', 'underline')
call pura#hi('VertSplit', pura#palette#bright_black)
call pura#hi('Visual', 'NONE', pura#palette#white)
call pura#hi('VisualNOS', 'NONE', pura#palette#white)
call pura#hi('WarningMsg', pura#palette#yellow, 'NONE', 'bold,reverse')
call pura#hi('WildMenu', 'NONE', 'NONE', 'reverse')
call pura#hi('Whitespace', pura#palette#fg2)
hi! link lCursor Cursor
hi! link CursorIM Cursor
hi! link TermCursor Cursor
hi! link CursorLine CursorColumn

" Lsp
call pura#hi('LspDiagnosticsError', pura#blend(pura#palette#bg, pura#palette#bright_red, 0.4), 'NONE', 'undercurl,italic')
call pura#hi('LspDiagnosticsErrorSign', pura#palette#bright_red, pura#blend(pura#palette#bg, pura#palette#red, 0.1), 'bold,italic')
call pura#hi('LspDiagnosticsErrorFloating', pura#palette#bright_red)
call pura#hi('LspDiagnosticsWarning', pura#blend(pura#palette#bg, pura#palette#yellow, 0.6), 'NONE', 'undercurl,italic')
call pura#hi('LspDiagnosticsWarningSign', pura#palette#yellow, pura#blend(pura#palette#bg, pura#palette#yellow, 0.1), 'italic')
call pura#hi('LspDiagnosticsWarningFloating', pura#palette#yellow)
call pura#hi('LspDiagnosticsInformation', pura#blend(pura#palette#bg, pura#palette#bright_blue, 0.7), 'italic')
call pura#hi('LspDiagnosticsInformationSign', pura#palette#bright_blue, pura#blend(pura#palette#bg, pura#palette#bright_blue, 0.1), 'italic')
call pura#hi('LspDiagnosticsInformationFloating', pura#palette#bright_blue)
call pura#hi('LspDiagnosticsHint', pura#palette#fg2, 'NONE', 'italic,undercurl')
call pura#hi('LspDiagnosticsHintSign', pura#palette#fg2, pura#blend(pura#palette#bg, pura#palette#fg2, 0.2), 'italic,bold')
call pura#hi('LspDiagnosticsHintFloating', pura#palette#fg)
" call pura#hi('LspReferenceText')
" call pura#hi('LspReferenceRead')
" call pura#hi('LspReferenceWrite')

" Health
call pura#hi('healthSuccess', pura#palette#bright_white, pura#palette#bright_green)
call pura#hi('healthWarning', pura#palette#bright_white, pura#palette#yellow)
call pura#hi('healthError', pura#palette#bright_white, pura#palette#bright_red)

" Misc
call pura#hi('diffRemoved', pura#palette#red, pura#blend(pura#palette#bg, pura#palette#bright_red, 0.2))
call pura#hi('diffAdded', pura#palette#green, pura#blend(pura#palette#bg, pura#palette#bright_green, 0.2))

" TypeScript
hi! link typescriptImport Include
