" Vim color file
hi clear
let g:colors_name = "mine"
" Normal should come first
hi Normal     guifg=Black  guibg=White
hi Cursor     guifg=bg     guibg=fg
hi lCursor    guifg=NONE   guibg=Cyan
" Note: we never set 'term' because the defaults for B&W terminals are OK
hi DiffAdd    ctermbg=LightBlue    guibg=LightBlue

hi DiffChange ctermbg=LightMagenta guibg=LightMagenta

hi DiffDelete ctermfg=Blue	       ctermbg=LightCyan gui=bold guifg=Blue guibg=LightCyan

hi DiffText   ctermbg=Red	       cterm=bold gui=bold guibg=Red

hi ErrorMsg   ctermfg=White	       ctermbg=DarkRed  guibg=Red	    guifg=White

hi FoldColumn ctermfg=2     	   ctermbg=Grey     guibg=Grey	    guifg=DarkBlue

hi Folded     ctermbg=Grey	       ctermfg=DarkBlue guibg=LightGrey guifg=DarkBlue

hi IncSearch  cterm=reverse	       gui=reverse

hi LineNr     ctermfg=8 	       guifg=Brown

hi ModeMsg    cterm=bold	       ctermfg=16 ctermbg=2

hi NonText    ctermfg=4

hi Pmenu      ctermbg=0            ctermfg=16 

hi PmenuSel   ctermbg=2            ctermfg=16 cterm=Bold

hi PmenuSbar  ctermfg=16  ctermbg=0

hi PmenuThumb  ctermfg=16  ctermbg=0

hi Question   ctermbg=DarkGreen   ctermfg=16

if &background == "light"
    hi Search     ctermfg=NONE	   ctermbg=Yellow guibg=Yellow guifg=NONE
else
    hi Search     ctermfg=16	   ctermbg=2 cterm=Bold     guibg=Yellow guifg=Black
endif
hi SpecialKey   ctermfg=Black	   guifg=Black

hi TabLine      cterm=Bold         ctermbg=0      ctermfg=NONE
hi TabLineNC    cterm=Bold         ctermbg=0      ctermfg=NONE
hi TabLineFill  cterm=Bold         ctermbg=none   ctermfg=1
hi TabLineSel   cterm=Bold         ctermbg=2      ctermfg=16

hi StatusLine   cterm=Bold	       ctermbg=2      ctermfg=16       guibg=gold guifg=blue
hi StatusLineNC	cterm=Bold  	   ctermbg=0      ctermfg=16       guibg=gold guifg=blue

hi Title        ctermfg=5         ctermbg=NONE       

hi VertSplit    ctermfg=2	   gui=reverse

hi Visual       ctermbg=7   ctermfg=16	cterm=bold 

hi WarningMsg   ctermfg=16 ctermbg=1

hi WildMenu     ctermbg=Black	   ctermfg=Blue  guibg=Yellow   guifg=Black
" syntax highlighting
hi Comment    cterm=Bold ctermfg=0

hi Constant   cterm=Bold,italic ctermfg=8*   

hi Identifier cterm=Bold ctermfg=1        

hi PreProc    cterm=Bold ctermfg=11

hi Special    cterm=italic ctermfg=14    

hi Statement  cterm=Bold ctermfg=1     

hi Type	      cterm=Bold ctermfg=13	     


" theme
hi colorColumn ctermfg=16

hi Canceal ctermfg=1

hi CursorLine ctermbg=2 ctermfg=16 cterm=Bold

hi Directory cterm=Bold ctermfg=2

hi EndOfBuffer ctermfg=8 cterm=Bold

hi CursorLineNr ctermfg=7 cterm=Bold

hi MsgArea  cterm=Bold ctermbg=NONE ctermfg=NONE

hi MsgSeparator cterm=reverse

hi QuickFixLine cterm=Bold ctermfg=16 ctermbg=7

hi Whitespace ctermbg=7 

hi ColorColumn ctermfg=1

