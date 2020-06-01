"
"                             888          888
"                             888          888
"                             888          888
"      888  888  8888b.   .d88888  .d88b.  888 88888b.d88b.   8888b.
"      888  888     '88b d88' 888 d8P  Y8b 888 888 '888 '88b     '88b
"      Y88  88P .d888888 888  888 88888888 888 888  888  888 .d888888
"       Y8bd8P  888  888 Y88b 888 Y8b.     888 888  888  888 888  888
"        Y88P   'Y888888  'Y88888  'Y8888  888 888  888  888 'Y888888
"
"                    Super sexy Vim/Neovim colorscheme
"
" Name: Vadelma
" Author: Severi Jääskeläinen <severij@tuta.io>
" URL: https://github.com/severij/vadelma.git
" Licence: MIT Licence
" Version: 0.4
" Last Change: August 22nd, 2019
"
" Copyright 2019 Severi Jääskeläinen

" Permission is hereby granted, free of charge, to any person obtaining a copy
" of this software and associated documentation files (the "Software"), to deal
" in the Software without restriction, including without limitation the rights
" to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
" copies of the Software, and to permit persons to whom the Software is
" furnished to do so, subject to the following conditions:
" 
" The above copyright notice and this permission notice shall be included in
" all copies or substantial portions of the Software.
" 
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
" IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
" FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
" LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
" OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
" SOFTWARE.

highlight clear

if exists("syntax_on")
    syntax reset
endif

set t_Co=256
let g:colors_name = "vadelma"

let s:black   = ['#000000', 16]
let s:white   = ['#ffffff', 231]

let s:grey1   = ['#080808', 232]
let s:grey2   = ['#121212', 233]
let s:grey3   = ['#1c1c1c', 234]
let s:grey4   = ['#262626', 235]
let s:grey5   = ['#303030', 236]
let s:grey6   = ['#3a3a3a', 237]
let s:grey7   = ['#444444', 238]
let s:grey8   = ['#4e4e4e', 239]
let s:grey9   = ['#585858', 240]
let s:grey10  = ['#626262', 241]
let s:grey11  = ['#6c6c6c', 242]
let s:grey12  = ['#767676', 243]
let s:grey13  = ['#808080', 244]
let s:grey14  = ['#8a8a8a', 245]
let s:grey15  = ['#949494', 246]
let s:grey16  = ['#9e9e9e', 247]
let s:grey17  = ['#a8a8a8', 248]
let s:grey18  = ['#b2b2b2', 249]
let s:grey19  = ['#bcbcbc', 250]
let s:grey20  = ['#c6c6c6', 251]
let s:grey21  = ['#d0d0d0', 252]
let s:grey22  = ['#dadada', 253]
let s:grey23  = ['#e4e4e4', 254]
let s:grey24  = ['#eeeeee', 255]

let s:blue1         = ['#005f5f', 23]
let s:blue2         = ['#008787', 30]
let s:blue3         = ['#5faf87', 72]
let s:cyan          = ['#00af87', 36]
let s:green         = ['#008700', 34]
let s:pink          = ['#ff005f', 197]
let s:purple        = ['#875f87', 96]
let s:red           = ['#ff0000', 196]
let s:sea_green     = ['#5f875f', 65]
let s:spring_green1 = ['#00875f', 29]
let s:spring_green2 = ['#00af5f', 35]
let s:turquoise     = ['#5f8787', 66]
let s:yellow        = ['#ffff00', 226]

function! s:hl(hl_group, bg_color, fg_color, ...)
    if empty(a:bg_color)
        let l:bg_color = ['NONE', 'NONE']
    else
        let l:bg_color = &background == 'light' && len(a:bg_color) == 4
                    \ ? a:bg_color[2:3]
                    \ : a:bg_color[0:1]
    endif
    if empty(a:fg_color)
        let l:fg_color = ['NONE', 'NONE']
    else
        let l:fg_color = &background == 'light' && len(a:fg_color) == 4
                    \ ? a:fg_color[2:3]
                    \ : a:fg_color[0:1]
    endif
    let l:style = a:0 == 1 ? a:1 : 'NONE'
    exe printf(
    \   "hi %s guibg=%s ctermbg=%s guifg=%s ctermfg=%s gui=%s cterm=%s",
    \   a:hl_group,
    \   l:bg_color[0], 
    \   l:bg_color[1], 
    \   l:fg_color[0], 
    \   l:fg_color[1], 
    \   l:style,
    \   l:style
    \)
endfunction

call s:hl('Comment', [], s:sea_green)
call s:hl('Constant', [], s:spring_green1)
call s:hl('Function', [], s:spring_green2)
call s:hl('Identifier', [], s:blue3 + s:blue1)
call s:hl('Operator', [], s:cyan)
call s:hl('PreProc', [], s:purple)
call s:hl('Number', [], s:turquoise)
call s:hl('Special', [], s:green)
call s:hl('Statement', [], s:pink)
call s:hl('Type', [], s:blue2)

call s:hl('Cursor', [], [], 'reverse')
call s:hl('CursorLine', s:grey5 + s:grey22, [])
call s:hl('CursorLineNr', s:grey5 + s:grey22, s:grey11 + s:grey15)
call s:hl('DiffAdd', s:grey3 + s:grey23, s:green)
call s:hl('DiffDelete', s:grey3 + s:grey23, s:red)
call s:hl('DiffText', s:grey3 + s:grey23, s:blue2)
call s:hl('Folded', s:grey3 + s:grey23, s:grey13 + s:grey9)
call s:hl('Error', [], s:red)
call s:hl('IncSearch', s:pink, s:black)
call s:hl('LineNr', [], s:grey9 + s:grey15)
call s:hl('MatchParen', s:spring_green2, s:grey2)
call s:hl('NonText', [], s:grey8 + s:grey20)
call s:hl('Normal', s:grey4 + s:white, s:grey13 + s:grey9)
call s:hl('Pmenu', s:grey2 + s:grey22, s:grey10 + s:grey9)
call s:hl('PmenuSel', s:grey1 + s:grey18, s:white + s:black)
call s:hl('PmenusBar', s:black + s:grey16, [])
call s:hl('PmenuThumb', s:grey5 + s:grey23, [])
call s:hl('Search', s:spring_green1 + s:spring_green2, s:black)
call s:hl('StatusLine', s:grey5 + s:grey22, s:grey13 + s:grey9)
call s:hl('StatusLineNC', s:grey5 + s:grey22, s:grey9 + s:grey15)
call s:hl('TermCursorNC', s:grey3 + s:grey19, [], 'reverse')
call s:hl('Todo', [], s:yellow)
call s:hl('Underlined', s:grey4 + s:white, s:grey13 + s:grey9, 'underline')
call s:hl('VertSplit', [], s:grey5 + s:grey22)
call s:hl('Visual', s:grey6 + s:grey21, [])
call s:hl('WildMenu', [], [], 'reverse')
call s:hl('TabLineSel', s:grey7 + s:grey18, s:grey15 + s:grey9)

hi! link Boolean Number
hi! link Character Number
hi! link ColorColumn CursorLine
hi! link CursorColumn CursorLine
hi! link Delimiter Operator
hi! link DiffChange Folded
hi! link ErrorMsg Error
hi! link FoldColumn LineNr
hi! link Question Identifier
hi! link TabLine StatusLine
hi! link TabLineFill StatusLine
hi! link TermCursor Cursor
hi! link Title Function
hi! link SignColumn LineNr
hi! link SpecialKey Special


" JavaScript
hi! link javascriptValue Number
hi! link javascriptNull Number
hi! link javascriptGlobal Identifier
hi! link javascriptExpression Todo
" Ruby
hi! link rubyDefine Statement
hi! link rubyStringDelimiter Constant
hi! link rubySymbol Number
hi! link rubyLocalVariableOrMethod Identifier
hi! link rubyPseudoVariable Number

if has('nvim')
    call s:hl('healthSuccess', [], s:green)
    hi! link NormalNC Normal
endif

" TODO:
" * Spellbad
" * SpellCap
" * SpellRare
" * SpellLoca
" * Conceal
" * Directory
" * MoreMsg
" * Markdown
" * HTML
" * LaTeX
" * Haskell
" * Others?
