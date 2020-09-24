set nu!
map q :quit<CR>
map <C-s> :w<CR>
set autoindent
set incsearch
set wildmenu
set laststatus=2
set confirm
syntax enable
set title
set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'


"""source /home/losaoall/hdbkp/dots/.vim/themes/skyhawk.vim"""
