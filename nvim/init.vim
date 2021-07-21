colorscheme mine
call plug#begin()
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" loading the plugin
let g:webdevicons_enable = 1
" adding the flags to NERDTree
let g:webdevicons_enable_nerdtree = 1
" adding the custom source to unite
let g:webdevicons_enable_unite = 1
" adding the column to vimfiler
let g:webdevicons_enable_vimfiler = 1
" adding to vim-airline's tabline
let g:webdevicons_enable_airline_tabline = 0
" adding to vim-airline's statusline
let g:webdevicons_enable_airline_statusline = 0
" ctrlp glyphs
let g:webdevicons_enable_ctrlp = 1
" adding to vim-startify screen
let g:webdevicons_enable_startify = 0
" adding to flagship's statusline
let g:webdevicons_enable_flagship_statusline = 0
" turn on/off file node glyph decorations (not particularly useful)
let g:WebDevIconsUnicodeDecorateFileNodes = 1
" use double-width(1) or single-width(0) glyphs
" only manipulates padding, has no effect on terminal or set(guifont) font
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
" whether or not to show the nerdtree brackets around flags
let g:webdevicons_conceal_nerdtree_brackets = 1
" the amount of space to use after the glyph character (default ' ')
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '
" Force extra padding in NERDTree so that the filetype icons line up vertically
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
" Adding the custom source to denite
let g:webdevicons_enable_denite = 1
" The amount of space to use after the glyph character in vim-airline tabline(default '')
let g:WebDevIconsTabAirLineAfterGlyphPadding = ' '
" The amount of space to use before the glyph character in vim-airline tabline(default ' ')
let g:WebDevIconsTabAirLineBeforeGlyphPadding = ' '
" change the default character when no match found
"let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = ' '
" set a byte character marker (BOM) utf-8 symbol when retrieving file encoding  
" disabled by default with no value
"let g:WebDevIconsUnicodeByteOrderMarkerDefaultSymbol = ''
" enable folder/directory glyph flag (disabled by default with 0)
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
" enable open and close folder/directory glyph flags (disabled by default with 0)
let g:DevIconsEnableFoldersOpenClose = 1
" enable pattern matching glyphs on folder/directory (enabled by default with 1)
let g:DevIconsEnableFolderPatternMatching = 1
" enable file extension pattern matching glyphs on folder/directory (disabled by default with 0)
let g:DevIconsEnableFolderExtensionPatternMatching = 1
" enable custom folder/directory glyph exact matching
" (enabled by default when g:WebDevIconsUnicodeDecorateFolderNodes is set to 1)
let WebDevIconsUnicodeDecorateFolderNodesExactMatches = 1
" change the default folder/directory glyph/icon
"let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ' '
" change the default open folder/directory glyph/icon (default is '')
"let g:DevIconsDefaultFolderOpenSymbol = ''
" change the default dictionary mappings for file extension matches
"let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
"let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['js'] = 'ƛ'
" change the default dictionary mappings for exact file node matches
"let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols = {} " needed
"let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['MyReallyCoolFile.okay'] = 'ƛ'
" add or override individual additional filetypes
"let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
"let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['myext'] = 'ƛ'
"let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols = {} " needed
"let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['sh'] = ' '
"let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols = {} " needed
"#let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['zsh'] = ' '
"let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols = {} " needed
"let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['bash'] = ' '
"let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols = {} " needed
"let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['jpg'] = ' '
"let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols = {} " needed
"let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['png'] = ' ' 
"let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols = {} " needed
"let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['pdf'] = ''
"let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols = {} " needed
"let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['txt'] = '' 
" add or override pattern matches for filetypes
" these take precedence over the file extensions
"let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols = {} " needed
"let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.*jquery.*\.js$'] = 'ƛ'
"let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols = {} " needed
"let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['sh'] = ' '
"let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols = {} " needed
"let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['zsh'] = ' '
"let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols = {} " needed
"let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['bash'] = ' '
"let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols = {} " needed
"let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.vim'] = ' '
"let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols = {} " needed
"let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.pdf'] = '' 
"let g:WebDevIconsOS = 'Arch'

let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1


let g:NERDTreeDisableFileExtensionHighlight = 1
let g:NERDTreeDisableExactMatchHighlight = 1
let g:NERDTreeDisablePatternMatchHighlight = 1

let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1


let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name

let g:NERDTreeHighlightCursorline = 1

" you can add these colors to your .vimrc to help customizing
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'

let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['css'] = s:blue " sets the color of css files to blue

let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files

let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb

let g:WebDevIconsDefaultFolderSymbolColor = s:beige " sets the color for folders that did not match any rule
let g:WebDevIconsDefaultFileSymbolColor = s:blue " sets the color for files that did not match any rule

Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
" Vai que um dia queira aprender GO ;)
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
" search files 
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Auto Complete
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()
" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect
" NOTE: you need to install completion sources to get completions. Check
" our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
" Fechamento automático de {} () [] ``
Plug 'jiangmiao/auto-pairs'

" Status bar e tabline 
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

" Markdown-Preview nvim
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" Para syntax do zsh 
Plug 'zinit-zsh/zinit-vim-syntax'

call plug#end()

colorscheme mine
set mouse=a
" set relativenumber
set number
set clipboard+=unnamedplus
set inccommand=split
let mapleader="\<space>"
" nnoremap <leader>a <esc>A
nnoremap <leader>sc :source ~/.config/nvim/init.vim<cr>
nnoremap <c-f> :Files<cr>
nnoremap <leader>n :NERDTreeToggle<cr>:source ~/.config/nvim/init.vim<cr>:set nonumber<cr> 
nnoremap <c-t> :tabnew<cr>
nnoremap <c-q> :q!<cr>

let g:python3_host_prog='/usr/bin/python3.9'

" Vai q um dia vire garoto de programa! :)
let g:UltisnipsEditSplit = 'vertical'
let g:UltisnipsSnippetsDir='~/.config/nvim/UltiSnips'

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
"let g:laststatus = 2
"let g:airline_statusline_ontop=1
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|' 
"let g:airline#extensions#tabline#formatter = 'unique_tail'
"let g:airline_powerline_fonts = 1
"let g:airline_theme='mine'

set undofile

set expandtab
set tabstop=4
set shiftwidth=4

set breakindent
set breakindentopt=shift:2
"set showbreak=

" maps of keys
"noremap <Up> <Nop>
"noremap <Down> <Nop>
"noremap <Left> <Nop>
"noremap <Right> <Nop>

"nnoremap <expr> j v:count? (v:count > 5 ? "m'" . v:count : '') . 'j' : 'gj'
"nnoremap <expr> k v:count? (v:count > 5 ? "m'" . v:count : '') . 'k' : 'gk'

map <C-s> :w!<CR>

" Para verificar quais os grupos de cores correponde onde o cursor estiver
" posicionado
function! Syn()
  for id in synstack(line("."), col("."))
    echo synIDattr(id, "name")
  endfor
endfunction
command! -nargs=0 Syn call Syn()
