" Espresso Colorscheme
" Author: Griffin Moe (http://github.com/gmoe)

set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name="espresso"

if &t_Co > 255
  hi Normal guifg=#eeeeec guibg=#353535 ctermfg=254 ctermbg=236
  hi Comment guifg=#bcbcbc guibg=#353535 ctermfg=250 ctermbg=236 gui=italic 
  hi CursorColumn guibg=#535353 ctermbg=240
  hi ColorColumn guibg=#8a8a8a ctermbg=245
  hi CursorLine guibg=#535353 ctermbg=240 cterm=none gui=none
  hi CursorLineNr guifg=#ffe48b guibg=#535353 ctermfg=228 ctermbg=240 cterm=none gui=none
  hi Boolean guifg=#d197d9 ctermfg=176
  hi Character guifg=#d197d9 ctermfg=176
  hi Number guifg=#d197d9 ctermfg=176
  hi String guifg=#a5c261 ctermfg=149
  hi Conditional guifg=#efb5f7 ctermfg=219 cterm=bold gui=bold
  hi Constant guifg=#efb5f7 ctermfg=219 cterm=bold gui=bold
  hi Cursor guifg=#323232 guibg=#eeeeee ctermfg=236 ctermbg=255
  hi Debug guifg=#ff87af ctermfg=211 cterm=bold gui=bold
  hi Define guifg=#bed6ff ctermfg=153
  hi Delimiter guifg=#949494 ctermfg=246
  hi DiffAdd guifg=#a5c261 ctermfg=149
  hi DiffChange guifg=#bed6ff guibg=#353535 ctermfg=153 ctermbg=240
  hi DiffDelete guifg=#d25252 guibg=#353535 ctermfg=167 ctermbg=240
  hi DiffText guifg=#dcf4ff guibg=#5b5b5b ctermfg=195 ctermbg=240 cterm=bold gui=bold
  hi Directory guifg=#a5c261 ctermfg=149 cterm=bold gui=bold
  hi Error guifg=#d25252 guibg=#5b5b5b ctermfg=167 ctermbg=240
  hi ErrorMsg guifg=#d25252 guibg=#5b5b5b ctermfg=167 ctermbg=240 cterm=bold gui=bold
  hi Exception guifg=#ff87d7 ctermfg=212 cterm=bold gui=bold
  hi Float guifg=#d197d9 ctermfg=176
  hi FoldColumn guifg=#eeeeee guibg=#5b5b5b ctermfg=255 ctermbg=240
  hi Folded guifg=#eeeeee guibg=#5b5b5b ctermfg=255 ctermbg=240
  hi Function guifg=#6c99bb ctermfg=67
  hi Identifier guifg=#efb5f7 ctermfg=219 cterm=none gui=none
  hi Ignore guifg=#eeeeee guibg=#323232 ctermfg=255 ctermbg=236
  hi IncSearch guifg=#efb5f7 guibg=#5b5b5b ctermfg=219 ctermbg=240 cterm=bold gui=bold
  hi Keyword guifg=#ff87af ctermfg=211 cterm=bold gui=bold
  hi Label guifg=#8ab7d9 ctermfg=110 cterm=none gui=none
  hi Macro guifg=#ffe48b ctermfg=228
  hi SpecialKey guifg=#efb5f7 ctermfg=219
  hi MatchParen guifg=#d25252 guibg=#5b5b5b ctermfg=167 ctermbg=240 cterm=bold gui=bold
  hi ModeMsg guifg=#ffc66d ctermfg=221
  hi MoreMsg guifg=#ffc66d ctermfg=221
  hi Operator guifg=#dcf4ff ctermfg=195
  hi Pmenu guifg=#6c99bb guibg=#323232 ctermfg=67 ctermbg=236
  hi PmenuSel guifg=#eeeeee guibg=#535353 ctermfg=255 ctermbg=240
  hi PmenuSbar guibg=#5b5b5b ctermbg=240
  hi PmenuThumb guifg=#6c99bb ctermfg=67
  hi PreCondit guifg=#c2e075 ctermfg=155 cterm=bold gui=bold
  hi PreProc guifg=#bed6ff ctermfg=153
  hi Question guifg=#6c99bb ctermfg=67
  hi Repeat guifg=#d25252 ctermfg=167 cterm=bold gui=bold
  hi Search guifg=#efb5f7 guibg=#5b5b5b ctermfg=219 ctermbg=240 cterm=none gui=none
  hi SignColumn guifg=#c2e075 guibg=#323232 ctermfg=155 ctermbg=236
  hi SpecialChar guifg=#d25252 ctermfg=167 cterm=bold gui=bold
  hi SpecialComment guifg=#bcbcbc ctermfg=250 cterm=bold gui=bold
  hi Special guifg=#8ab7d9 ctermfg=110
  if has("spell")
    hi SpellBad guibg=#d25252 ctermbg=167
    hi SpellCap guibg=#6c99bb ctermbg=67
    hi SpellLocal guibg=#6c99bb ctermbg=67
    hi SpellRare guifg=NONE guibg=NONE ctermfg=none ctermbg=none cterm=reverse gui=reverse
  endif
  hi Statement guifg=#bed6ff ctermfg=153 cterm=bold gui=bold
  hi StatusLine guifg=#eeeeee guibg=#6c99bb ctermfg=255 ctermbg=67 cterm=bold gui=bold
  hi StatusLineNC guifg=#323232 guibg=#808080 ctermfg=236 ctermbg=244
  hi StorageClass guifg=#ffd75f ctermfg=221
  hi Structure guifg=#6c99bb ctermfg=67
  hi Tag guifg=#d25252 ctermfg=167
  hi Title guifg=#ff87af ctermfg=211
  hi Todo guifg=#ffffff guibg=#5b5b5b ctermfg=231 ctermbg=240 cterm=bold gui=bold
  hi Typedef guifg=#bed6ff ctermfg=153
  hi Type guifg=#ffc66d ctermfg=221 cterm=none gui=none
  hi Underlined guifg=#eeeeee ctermfg=255 cterm=underline gui=underline
  hi VertSplit guifg=#323232 guibg=#4e4e4e ctermfg=236 ctermbg=239 cterm=bold gui=bold
  hi VisualNOS guibg=#121212 ctermbg=233
  hi Visual guibg=#5b5b5b ctermbg=240
  hi WarningMsg guifg=#ffffff guibg=#5b5b5b ctermfg=231 ctermbg=240 cterm=bold gui=bold
  hi WildMenu guifg=#323232 guibg=#bed6ff ctermfg=236 ctermbg=153
  hi LineNr guifg=#a5c261 guibg=#3a3a3a ctermfg=149 ctermbg=237
  hi NonText guifg=#d197d9 ctermfg=176
  hi SpecialKey guifg=#efb5f7 ctermfg=219
end
