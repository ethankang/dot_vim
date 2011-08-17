set nocompatible


colorscheme molokai
let g:molokai_original = 1
set guifont=Menlo:h12

"show the lineNumber
set number
set cul

"check the file type
filetype plugin indent on 

"make the syntax on
syntax on

"set autoindent
set smartindent

"set tab is 2 spaces
set tabstop=2
set shiftwidth=2

"set use space instead of tab
set expandtab

"match ()
set showmatch

set ruler
set incsearch
set hlsearch

"set a highlight on column 80
set colorcolumn=80


imap <D-/>  <C-x><C-o>
map <D-F12>  :!open -a /Applications/Firefox.app/ % &<CR>
map <C-TAB>  gt

" auto save file
" au FocusLost * :wa


" winManager Setting
""""""""""""""""""""""""""
"let g:winManagerWindowLayout = 'FileExplorer, BufExplorer'
 
"let g:winManagerWidth = 35
"map <c-w><c-w> :WMToggle<cr> 
"map <c-w><c-f> :FirstExplorerWindow<cr> 
"map <c-w><c-b> :BottomExplorerWindow<cr> 
"let g:AutoOpenWinManager = 1

" NERDTree
map <c-w><c-w> :NERDTreeToggle<cr> 
map <F1> :NERDTreeToggle<cr> 
map <F2> :BufExplorer<cr> 


"Set mapleader
let mapleader = ','
let g:mapleader = ','

" map for windows nav
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" map for Command-T
map <D-e> :CommandT<CR>

" set session
set sessionoptions=buffers,curdir,folds
