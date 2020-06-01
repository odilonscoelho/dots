" novum.vim -- A dark colorscheme with a little monochrome syntax highlighting
"           -- and sprinkles of green and blue

" setup (:

highlight clear
let colors_name = 'novum'
set background=dark

command! -bang -bar -nargs=? -complete=customlist,novum#color_set_compl Novum call novum#color_set(<bang>0, <f-args>)
command! -bar -complete=highlight -nargs=+ H call s:hi(<f-args>)

let g:novum#defaults = {}
let g:novum#maxes = {}
let g:novum#colors = {}

function! s:setColor(name, def, lst) " set color default, max, color (:
	let g:novum#defaults[a:name] = a:def
	let g:novum#maxes[a:name] = len(a:lst)
	let g:novum#colors[a:name] = max([0, min([255, a:lst[ max([0, min([len(a:lst) - 1, str2nr(get(g:, 'novum_'.a:name, a:def))])]) ]])])
endfunction " :)

function! s:linkColor(name, link, inc, ...) " link previous color with increment (:
	let g:novum#defaults[a:name] = 0
	let g:novum#maxes[a:name] = 1
	let g:novum#colors[a:name] = max([0, get(a:000, 0, 0), min([255, get(a:000, 1, 255), g:novum#colors[a:link] + a:inc])])
endfunction " :)

function! s:hi(grp, fg, bg, attr) " (:
	let l:fg = a:fg =~? '^\%(\d\+\|none\)$' ? a:fg : g:novum#colors[a:fg]
	let l:bg = a:bg =~? '^\%(\d\+\|none\)$' ? a:bg : g:novum#colors[a:bg]
	exec printf('hi! %s ctermfg=%s ctermbg=%s cterm=%s', a:grp, l:fg, l:bg, a:attr)
	exec printf('hi! %s guifg=%s guibg=%s gui=%s', a:grp, l:fg =~# '^\d\+$' ? g:novum#xterm_colors[l:fg] : l:fg, l:bg =~# '^\d\+$' ? g:novum#xterm_colors[l:bg] : l:bg, a:attr)
endfunction " :)


" 256 xterm color palette (:

if !exists('g:novum#xterm_colors')

	let g:novum#xterm_colors = [ '#000000', '#800000', '#008000', '#808000', '#000080', '#800080', '#008080', '#c0c0c0', '#808080', '#ff0000', '#00ff00', '#ffff00', '#0000ff', '#ff00ff', '#00ffff', '#ffffff', '#000000', '#00005f', '#000087', '#0000af', '#0000d7', '#0000ff', '#005f00', '#005f5f', '#005f87', '#005faf', '#005fd7', '#005fff', '#008700', '#00875f', '#008787', '#0087af', '#0087d7', '#0087ff', '#00af00', '#00af5f', '#00af87', '#00afaf', '#00afd7', '#00afff', '#00d700', '#00d75f', '#00d787', '#00d7af', '#00d7d7', '#00d7ff', '#00ff00', '#00ff5f', '#00ff87', '#00ffaf', '#00ffd7', '#00ffff', '#5f0000', '#5f005f', '#5f0087', '#5f00af', '#5f00d7', '#5f00ff', '#5f5f00', '#5f5f5f', '#5f5f87', '#5f5faf', '#5f5fd7', '#5f5fff', '#5f8700', '#5f875f', '#5f8787', '#5f87af', '#5f87d7', '#5f87ff', '#5faf00', '#5faf5f', '#5faf87', '#5fafaf', '#5fafd7', '#5fafff', '#5fd700', '#5fd75f', '#5fd787', '#5fd7af', '#5fd7d7', '#5fd7ff', '#5fff00', '#5fff5f', '#5fff87', '#5fffaf', '#5fffd7', '#5fffff', '#870000', '#87005f', '#870087', '#8700af', '#8700d7', '#8700ff', '#875f00', '#875f5f', '#875f87', '#875faf', '#875fd7', '#875fff', '#878700', '#87875f', '#878787', '#8787af', '#8787d7', '#8787ff', '#87af00', '#87af5f', '#87af87', '#87afaf', '#87afd7', '#87afff', '#87d700', '#87d75f', '#87d787', '#87d7af', '#87d7d7', '#87d7ff', '#87ff00', '#87ff5f', '#87ff87', '#87ffaf', '#87ffd7', '#87ffff', '#af0000', '#af005f', '#af0087', '#af00af', '#af00d7', '#af00ff', '#af5f00', '#af5f5f', '#af5f87', '#af5faf', '#af5fd7', '#af5fff', '#af8700', '#af875f', '#af8787', '#af87af', '#af87d7', '#af87ff', '#afaf00', '#afaf5f', '#afaf87', '#afafaf', '#afafd7', '#afafff', '#afd700', '#afd75f', '#afd787', '#afd7af', '#afd7d7', '#afd7ff', '#afff00', '#afff5f', '#afff87', '#afffaf', '#afffd7', '#afffff', '#d70000', '#d7005f', '#d70087', '#d700af', '#d700d7', '#d700ff', '#d75f00', '#d75f5f', '#d75f87', '#d75faf', '#d75fd7', '#d75fff', '#d78700', '#d7875f', '#d78787', '#d787af', '#d787d7', '#d787ff', '#d7af00', '#d7af5f', '#d7af87', '#d7afaf', '#d7afd7', '#d7afff', '#d7d700', '#d7d75f', '#d7d787', '#d7d7af', '#d7d7d7', '#d7d7ff', '#d7ff00', '#d7ff5f', '#d7ff87', '#d7ffaf', '#d7ffd7', '#d7ffff', '#ff0000', '#ff005f', '#ff0087', '#ff00af', '#ff00d7', '#ff00ff', '#ff5f00', '#ff5f5f', '#ff5f87', '#ff5faf', '#ff5fd7', '#ff5fff', '#ff8700', '#ff875f', '#ff8787', '#ff87af', '#ff87d7', '#ff87ff', '#ffaf00', '#ffaf5f', '#ffaf87', '#ffafaf', '#ffafd7', '#ffafff', '#ffd700', '#ffd75f', '#ffd787', '#ffd7af', '#ffd7d7', '#ffd7ff', '#ffff00', '#ffff5f', '#ffff87', '#ffffaf', '#ffffd7', '#ffffff', '#080808', '#121212', '#1c1c1c', '#262626', '#303030', '#3a3a3a', '#444444', '#4e4e4e', '#585858', '#626262', '#6c6c6c', '#767676', '#808080', '#8a8a8a', '#949494', '#9e9e9e', '#a8a8a8', '#b2b2b2', '#bcbcbc', '#c6c6c6', '#d0d0d0', '#dadada', '#e4e4e4', '#eeeeee' ]

endif

" :)

" :)
" colors (:

call s:setColor('fg'          , 0, [251])
call s:setColor('bg'          , 0, [235])
call s:setColor('faintbg'     , 0, [236])
call s:setColor('lightbg'     , 0, [238])
call s:setColor('lighterbg'   , 0, [240])
call s:setColor('uibg'        , 0, [241])
call s:setColor('uibgnc'      , 0, [239])
call s:setColor('uifg'        , 0, [255])
call s:setColor('uifgnc'      , 0, [248])
call s:setColor('comment'     , 0, [243, 137, 174, 173, 137, 101])
call s:setColor('darkfg'      , 0, [247])
call s:setColor('darkerfg'    , 0, [240])
call s:setColor('mutedblue'   , 0, [67])
call s:setColor('darkblue'    , 1, [25, 31, 74])
call s:setColor('blue'        , 1, [31, 74, 81])
call s:setColor('lightblue'   , 1, [74, 81, 87])
call s:setColor('mutedgreen'  , 0, [108])
call s:setColor('darkgreen'   , 1, [22, 29, 36])
call s:setColor('green'       , 1, [29, 36, 42])
call s:setColor('lightgreen'  , 1, [36, 42, 48])
call s:setColor('mutedcyan'   , 0, [66])
call s:setColor('darkcyan'    , 1, [23, 30, 73])
call s:setColor('cyan'        , 1, [30, 73, 44])
call s:setColor('lightcyan'   , 1, [73, 80, 116])
call s:setColor('darkred'     , 0, [131, 167])
call s:setColor('red'         , 0, [167, 203])
call s:setColor('lightred'    , 0, [203, 211])
call s:setColor('darkpink'    , 0, [133, 169])
call s:setColor('pink'        , 0, [169, 205])
call s:setColor('lightpink'   , 0, [205, 219])
call s:setColor('mutedorange' , 0, [174])
call s:setColor('darkorange'  , 0, [166])
call s:setColor('orange'      , 0, [209])
call s:setColor('lightorange' , 0, [216])
call s:setColor('mutedyellow' , 0, [180])
call s:setColor('darkyellow'  , 1, [94, 136, 179])
call s:setColor('yellow'      , 1, [136, 179, 222])
call s:setColor('lightyellow' , 1, [179, 222, 228])
call s:setColor('mutedpurple' , 0, [182])
call s:setColor('purple'      , 0, [176])
call s:setColor('darkpurple'  , 0, [96])

" :)

" Default: |highlight-groups| (:
" ~~~~~~~

" Group                 FG           BG           STYLE
" --------------------- ------------ ------------ -------------------------------
H ColorColumn           NONE         faintbg      NONE
H Conceal               darkerfg     NONE         NONE
H Cursor                bg           fg           NONE
H lCursor               bg           fg           NONE
H CursorIM              bg           fg           NONE
H CursorColumn          NONE         faintbg      NONE
H CursorLine            NONE         faintbg      NONE
H Directory             blue         NONE         NONE
H DiffAdd               bg           darkgreen    NONE
H DiffChange            orange       NONE         NONE
H DiffDelete            red          NONE         NONE
H DiffText              bg           darkorange   NONE
H EndOfBuffer           comment      NONE         NONE
H ErrorMsg              red          NONE         NONE
H VertSplit             comment      uibg         NONE
H Folded                mutedcyan    faintbg      NONE
H FoldColumn            comment      NONE         NONE
H SignColumn            comment      NONE         NONE
H IncSearch             bg           yellow       NONE
H LineNr                mutedcyan    NONE         NONE
H CursorLineNr          green        NONE         NONE
H MatchParen            bg           mutedcyan    NONE
H ModeMsg               orange       NONE         NONE
H MoreMsg               orange       NONE         NONE
H NonText               comment      NONE         NONE
H Normal                fg           bg           NONE
H Pmenu                 uifg         uibg         NONE
H PmenuSel              uibg         uifg         NONE
H PmenuSbar             fg           lightbg      NONE
H PmenuThumb            bg           darkgreen    NONE
H Question              orange       NONE         NONE
H QuickFixLine          NONE         faintbg      bold,underline
H Search                lightyellow  NONE         underline
H SpecialKey            darkerfg     NONE         NONE
H SpellBad              red          NONE         NONE
H SpellCap              yellow       NONE         NONE
H SpellLocal            yellow       NONE         NONE
H SpellRare             yellow       NONE         NONE
H StatusLine            uifg         uibg         bold
H StatusLineNC          fg           uibgnc       NONE
H StatusLineTerm        lightcyan    uibg         NONE
H StatusLineTermNC      cyan         uibgnc       NONE
H TabLine               cyan         uibgnc       NONE
H TabLineFill           cyan         uibgnc       NONE
H TabLineSel            lightcyan    uibg         NONE
H Terminal              NONE         bg           NONE
H Title                 NONE         NONE         bold
H Visual                NONE         lightbg      bold
H VisualNOS             NONE         lightbg      bold
H WarningMsg            yellow       NONE         NONE
H WildMenu              bg           green        NONE

" :)
" Syntax: |group-name| (:
" ~~~~~~

" Group                 FG           BG           STYLE
" --------------------- ------------ ------------ -------------------------------
H Comment               comment      NONE         NONE
H Constant              blue         NONE         NONE
H String                green        NONE         NONE
H Character             green        NONE         NONE
H Number                purple       NONE         NONE
H Boolean               purple       NONE         NONE
H Float                 purple       NONE         NONE
H Identifier            blue         NONE         NONE
H Function              NONE         NONE         NONE
H Statement             blue         NONE         NONE
H Conditional           blue         NONE         NONE
H Repeat                blue         NONE         NONE
H Label                 blue         NONE         NONE
H Operator              darkfg       NONE         NONE
H Keyword               darkfg       NONE         NONE
H Exception             blue         NONE         NONE
H PreProc               blue         NONE         NONE
H Include               blue         NONE         NONE
H Define                blue         NONE         NONE
H Macro                 blue         NONE         NONE
H PreCondit             blue         NONE         NONE
H Type                  blue         NONE         NONE
H StorageClass          blue         NONE         NONE
H Structure             blue         NONE         NONE
H Typedef               blue         NONE         NONE
H Special               mutedyellow  NONE         NONE
H SpecialChar           mutedyellow  NONE         NONE
H Tag                   blue         NONE         NONE
H Delimiter             darkfg       NONE         NONE
H SpecialComment        blue         NONE         NONE
H Debug                 orange       NONE         NONE
H Underlined            NONE         NONE         underline
H Ignore                darkerfg     NONE         NONE
H Error                 red          NONE         NONE
H Todo                  mutedyellow  NONE         NONE

" :)
" User: |hl-User1..9| (:
" ~~~~

" Group                 FG           BG           STYLE
" --------------------- ------------ ------------ -------------------------------
H User1                 red          uibg         NONE
H User2                 lightgreen   uibg         NONE
H User3                 yellow       uibg         NONE
H User4                 blue         uibg         NONE
H User5                 purple       uibg         NONE
H User6                 blue         uibg         NONE
H User7                 fg           uibg         NONE
H User8                 uifgnc       uibg         NONE
H User9                 darkfg       uibg         NONE

" :)
" Extra: (:
" ~~~~~

" Group                 FG           BG           STYLE
" --------------------- ------------ ------------ -------------------------------
H htmltagname           blue         NONE         NONE
H htmlspecialtagname    blue         NONE         NONE
H htmltag               NONE         NONE         NONE
H htmlendtag            NONE         NONE         NONE
H htmlarg               NONE         NONE         NONE
H htmlstring            green        NONE         NONE
H htmlvalue             green        NONE         NONE
H htmcomment            comment      NONE         NONE
H htmlcommentpart       comment      NONE         NONE
" --------------------- ------------ ------------ -------------------------------
H cssProp               darkfg       NONE         NONE
H cssDefinition         darkfg       NONE         NONE
H cssBackgroundProp     darkfg       NONE         NONE
H cssMediaProp          darkfg       NONE         NONE
H cssPositioningProp    darkfg       NONE         NONE
H cssSelectorOp         darkfg       NONE         NONE
" --------------------- ------------ ------------ -------------------------------
H DiffOnly              mutedcyan    NONE         NONE
H DiffIdentical         mutedcyan    NONE         NONE
H DiffDiffer            mutedcyan    NONE         NONE
H DiffBdiffer           mutedcyan    NONE         NONE
H DiffIsa               mutedcyan    NONE         NONE
H DiffNoeol             mutedcyan    NONE         NONE
H DiffCommon            mutedcyan    NONE         NONE
H DiffComment           comment      NONE         NONE
H DiffRemoved           red          NONE         NONE
H DiffChanged           yellow       NONE         NONE
H DiffAdded             green        NONE         NONE
H DiffFile              blue         NONE         NONE
H DiffNewFile           darkfg       NONE         NONE
H DiffConstant          mutedcyan    NONE         NONE
H DiffIndexLine         yellow       NONE         NONE
H DiffSubname           mutedcyan    NONE         NONE
H DiffLine              blue         NONE         NONE
H gitcommitSummary      mutedorange  NONE         underline
" --------------------- ------------ ------------ -------------------------------
H helpCommand           mutedcyan    NONE         NONE
H helpOption            mutedyellow  NONE         NONE
H helpHyperTextEntry    blue         NONE         bold
H helpHyperTextJump     blue         NONE         underline
H helpSectionDelim      darkerfg     NONE         NONE
H helpHeader            mutedcyan    NONE         NONE
H helpExample           fg           faintbg      NONE
H helpVim               fg           NONE         bold
" --------------------- ------------ ------------ -------------------------------
H vimHiGuiFgBg          darkfg       NONE         NONE
H vimHiCtermFgBg        darkfg       NONE         NONE
H vimHiCTerm            darkfg       NONE         NONE
H vimHiGui              darkfg       NONE         NONE
H vimFuncVar            darkfg       NONE         NONE
H vimHlGroup            mutedblue    NONE         NONE
H vimEchoHLNone         mutedblue    NONE         NONE
H vimEnvVar             darkfg       NONE         NONE
H vimCommentTitle       mutedgreen   NONE         bold
H vimOption             fg           NONE         NONE
H vimVar                fg           NONE         NONE
H vimFTOption           fg           NONE         NONE
H vimSynType            fg           NONE         NONE
H vimAutoEvent          fg           NONE         NONE
H vimCommand            blue         NONE         NONE
H vimSet                NONE         NONE         NONE
H vimLet                blue         NONE         NONE
H vimCmplxRepeat        blue         NONE         NONE
H vimFuncSID            blue         NONE         NONE
H vimBracket            mutedyellow  NONE         NONE
H vimNotation           mutedyellow  NONE         NONE
H vimMapMod             mutedyellow  NONE         NONE
H vimMapModKey          mutedyellow  NONE         NONE
H vimUserAttrbKey       mutedyellow  NONE         NONE
H vimContinue           mutedcyan    NONE         NONE
" --------------------- ------------ ------------ -------------------------------
H MatchWordCur          NONE         NONE         underline
H MatchWord             NONE         NONE         underline
" --------------------- ------------ ------------ -------------------------------
H manReference          blue         NONE         underline
H manSectionHeading     blue         NONE         bold
H manSubHeading         darkblue     NONE         bold
H manLongOptionDesc     mutedyellow  NONE         NONE
H manOptionDesc         mutedyellow  NONE         NONE
" --------------------- ------------ ------------ -------------------------------
H markdownCodeDelimiter bg           darkgreen    NONE
H markdownCode          green        NONE         NONE
H markdownListMarker    mutedcyan    NONE         NONE
H markdownUrl           blue         NONE         underline
H markdownH1            mutedyellow  NONE         NONE
H markdownH2            mutedyellow  NONE         NONE
H markdownH3            mutedyellow  NONE         NONE
H markdownH4            mutedyellow  NONE         NONE
H markdownH5            mutedyellow  NONE         NONE
H markdownH6            mutedyellow  NONE         NONE
H markdownHeadingDelimiter mutedyellow NONE         NONE

" :)

" vim: cole=2 cocu=cv fdm=marker fmr=\(\:,\:\) fdl=0 et:
