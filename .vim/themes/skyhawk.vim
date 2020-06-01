" Vim color file
" Converted from Textmate theme Monokai using Coloration v0.3.2 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

set t_Co=256
let g:colors_name = "skyhawk"

" ============
"  Underline
" ============
hi clear SpellBad
hi SpellBad cterm=underline ctermfg=NONE ctermbg=NONE gui=underline guifg=NONE guibg=NONE
hi clear SpellCap " & ALE
hi SpellBad cterm=underline ctermfg=NONE ctermbg=NONE gui=underline guifg=NONE guibg=NONE

" ============
"  Yamabuki
" ============
hi Label ctermfg=186 ctermbg=NONE cterm=NONE guifg=#e6db74 guibg=NONE gui=NONE
hi String ctermfg=186 ctermbg=NONE cterm=NONE guifg=#e6db74 guibg=NONE gui=NONE
hi Character ctermfg=186 ctermbg=NONE cterm=NONE guifg=#e6db74 guibg=NONE gui=NONE
hi Boolean ctermfg=186 ctermbg=NONE cterm=NONE guifg=#e6db74 guibg=NONE gui=NONE
hi Float ctermfg=186 ctermbg=NONE cterm=NONE guifg=#e6db74 guibg=NONE gui=NONE
hi Number ctermfg=186 ctermbg=NONE cterm=NONE guifg=#e6db74 guibg=NONE gui=NONE
hi DiffText ctermfg=235 ctermbg=186 cterm=NONE guifg=#272822 guibg=#e6db74 gui=NONE

" ============
"  skyblue
" ============
hi Statement ctermfg=80 ctermbg=NONE cterm=NONE guifg=#5fd7d7 guibg=NONE gui=NONE
hi Directory ctermfg=80 ctermbg=NONE cterm=NONE guifg=#5fd7d7 guibg=NONE gui=NONE
hi MatchParen ctermfg=80 ctermbg=NONE cterm=NONE guifg=#5fd7d7 guibg=NONE gui=NONE
hi Structure ctermfg=80 ctermbg=NONE cterm=NONE guifg=#5fd7d7 guibg=NONE gui=NONE
hi Identifier ctermfg=80 ctermbg=NONE cterm=NONE guifg=#5fd7d7 guibg=NONE gui=NONE
hi StorageClass ctermfg=80 ctermbg=NONE cterm=NONE guifg=#5fd7d7 guibg=NONE gui=NONE
hi Type ctermfg=80 ctermbg=NONE cterm=NONE guifg=#5fd7d7 guibg=NONE gui=NONE
hi Operator ctermfg=80 ctermbg=NONE cterm=NONE guifg=#5fd7d7 guibg=NONE gui=NONE

" ============
"  paleblue
" ============
hi PreProc ctermfg=159 ctermbg=NONE cterm=NONE guifg=#afffff guibg=NONE gui=NONE

" ============
"  yellowgreen
" ============
hi Function ctermfg=148 ctermbg=NONE cterm=NONE guifg=#a6e22e guibg=NONE gui=NONE

" ===============
"  oceanblue
" ===============
hi Define ctermfg=36 ctermbg=NONE cterm=NONE guifg=#00af87 guibg=NONE gui=NONE
hi DiffAdd ctermfg=36 ctermbg=NONE cterm=NONE guifg=#00af87 guibg=NONE gui=NONE
hi Question ctermfg=36 ctermbg=NONE cterm=NONE guifg=#00af87 guibg=NONE gui=NONE
hi Conditional ctermfg=36 ctermbg=NONE cterm=NONE guifg=#00af87 guibg=NONE gui=NONE

" ============
"  yellow
" ============
hi SpecialChar ctermfg=226 ctermbg=NONE cterm=NONE guifg=#ffff00 guibg=NONE gui=NONE
hi Todo ctermfg=226 ctermbg=NONE cterm=NONE guifg=#ffff00 guibg=NONE gui=NONE

" ============
"  orange
" ============
hi Keyword ctermfg=202 ctermbg=NONE cterm=NONE guifg=#ff8700 guibg=NONE gui=NONE
hi Special ctermfg=202 ctermbg=NONE cterm=NONE guifg=#ff8700 guibg=NONE gui=NONE
hi Tag ctermfg=202 ctermbg=NONE cterm=NONE guifg=#ff8700 guibg=NONE gui=NONE
hi DiffDelete ctermfg=202 ctermbg=NONE cterm=NONE guifg=#ff8700 guibg=NONE gui=NONE
hi MatchParen ctermfg=202 ctermbg=NONE cterm=underline guifg=#ff8700 guibg=NONE gui=underline

" ============
"  magenta
" ============
hi Search ctermfg=197 ctermbg=NONE cterm=NONE guifg=#ff005f guibg=NONE gui=NONE
hi IncSearch ctermfg=197 ctermbg=NONE cterm=NONE guifg=#ff005f guibg=NONE gui=NONE
hi ErrorMsg ctermfg=231 ctermbg=197 cterm=NONE guifg=#f8f8f0 guibg=#ff005f gui=NONE
hi WarningMsg ctermfg=231 ctermbg=197 cterm=NONE guifg=#f8f8f0 guibg=#ff005f gui=NONE

" =================
"  black and white
" =================
hi Cursor ctermfg=235 ctermbg=231 cterm=NONE guifg=#272822 guibg=#f8f8f0 gui=NONE
hi Visual ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#49483e gui=NONE
hi CursorLine ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#3c3d37 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#3c3d37 gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#3c3d37 gui=NONE
hi LineNr ctermfg=102 ctermbg=237 cterm=NONE guifg=#90908a guibg=#3c3d37 gui=NONE
hi VertSplit ctermfg=241 ctermbg=241 cterm=NONE guifg=#64645e guibg=#64645e gui=NONE
hi StatusLine ctermfg=231 ctermbg=241 cterm=bold guifg=#f8f8f2 guibg=#64645e gui=bold
hi StatusLineNC ctermfg=231 ctermbg=241 cterm=NONE guifg=#f8f8f2 guibg=#64645e gui=NONE
hi Pmenu ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#49483e gui=NONE
hi Folded ctermfg=242 ctermbg=235 cterm=NONE guifg=#75715e guibg=#272822 gui=NONE
hi SignColumn ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#3c3d37 gui=NONE
hi Normal ctermfg=231 ctermbg=235 cterm=NONE guifg=#f8f8f2 guibg=#272822 gui=NONE
hi Comment ctermfg=242 ctermbg=NONE cterm=NONE guifg=#75715e guibg=NONE gui=NONE
hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi DiffChange ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#f8f8f2 guibg=#243955 gui=NONE
hi NonText ctermfg=59 ctermbg=236 cterm=NONE guifg=#49483e guibg=#31322c gui=NONE
hi SpecialComment ctermfg=242 ctermbg=NONE cterm=NONE guifg=#75715e guibg=NONE gui=NONE
hi SpecialKey ctermfg=59 ctermbg=237 cterm=NONE guifg=#49483e guibg=#3c3d37 gui=NONE
hi Title ctermfg=231 ctermbg=NONE cterm=bold guifg=#f8f8f2 guibg=NONE gui=bold
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline

" =================
"  menu
" =================
hi Pmenu ctermfg=186 ctermbg=236 cterm=NONE guifg=#e6db74 guibg=#3c3d37 gui=NONE
hi PmenuSel ctermfg=80 ctermbg=59 cterm=NONE guifg=#5fd7d7 guibg=#49483e gui=NONE

" =================
"  link
" =================
hi link gitcommitSummary String
