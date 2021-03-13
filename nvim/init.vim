call plug#begin()
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
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

set mouse=a
set relativenumber
set number
set clipboard+=unnamedplus
set inccommand=split
colorscheme mine
let mapleader="\<space>"
nnoremap <leader>a <esc>A
"nnoremap <leader>ISO_Level3_Shift <esc>
nnoremap <leader>sc :source ~/.config/nvim/init.vim<cr>
nnoremap <c-f> :Files<cr>

let g:python3_host_prog='/usr/bin/python3.9'

" Vai q um dia vire garoto de programa! :)
let g:UltisnipsEditSplit = 'vertical'
let g:UltisnipsSnippetsDir='~/.config/nvim/UltiSnips'

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
let g:laststatus = 2
"let g:airline_statusline_ontop=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|' 
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1
let g:airline_theme='mine'

set undofile

set expandtab
set tabstop=4
set shiftwidth=4

set breakindent
set breakindentopt=shift:2
set showbreak=

" maps of keys
"noremap <Up> <Nop>
"noremap <Down> <Nop>
"noremap <Left> <Nop>
"noremap <Right> <Nop>

"nnoremap <expr> j v:count? (v:count > 5 ? "m'" . v:count : '') . 'j' : 'gj'
"nnoremap <expr> k v:count? (v:count > 5 ? "m'" . v:count : '') . 'k' : 'gk'

map <C-s> :w!<CR>
