set nocompatible
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show unicode glyphs

" let Vundle manage Vundle
" ------------------------------
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'

" -------------------------------------
"
" Vundles Plugin
"
" -------------------------------------
Plugin 'git://github.com/Lokaltog/vim-powerline.git'
" set guifont=PowerlineSymbols for Powerline
" set nocompatible
" set t_Co=256
" let g:Powerline_symbols = 'fancy'

Plugin 'Lokaltog/vim-easymotion'
"Plugin 'bling/vim-airline'

" SnipMate
Plugin 'garbas/vim-snipmate'
" SnipMate Depedancies
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
"Plugin 'snipmate-snippets'
Plugin 'honza/vim-snippets'

"let g:snips_trigger_key='<del>'
"let g:snipMateTrigger='<del>'
imap <del> <Plug>snipMateNextOrTrigger
smap <del> <Plug>snipMateNextOrTrigger

" Rails & Ruby
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'

" Node.js"
"Plugin 'git://github.com/moll/vim-node.git'
"Plugin 'git://github.com/myhere/vim-nodejs-complete.git'
"Plugin 'git://github.com/jelera/vim-javascript-syntax.git'


Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'YankRing.vim'
Plugin 'AutoClose'
Plugin 'bufexplorer.zip'
Plugin 'matchit.zip'
Plugin 'ruby-matchit'
Plugin 'https://github.com/ervandew/supertab.git'
Plugin 'winmanager--Fox'
Plugin 'git://github.com/hrp/EnhancedCommentify.git'
Plugin 'git://github.com/tpope/vim-fugitive.git'
Plugin 'git://github.com/henrik/vim-ruby-runner.git'
" Plugin "git://github.com/wincent/Command-T.git"
Plugin 'Shougo/vimshell.vim'
Plugin 'dkprice/vim-easygrep'

" ctrlp
Plugin 'https://github.com/Shougo/vimproc.vim.git'
Plugin 'kien/ctrlp.vim'

filetype plugin indent on     " required

let g:SuperTabDefaultCompletionType = "<c-p>"

"for EasyGrep
let g:EasyGrepRecursive = 1
let g:EasyGrepCommand = 0
let g:EasyGrepFilesToExclude = "*.bak, *.log"

" In line copy and paste to system clipboard (On OSX)
"vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>
"nmap <C-v> :call setreg("\"",system("pbpaste"))<CR>p
vmap "+y :w !pbcopy<CR><CR> 
nmap "+p :r !pbpaste<CR><CR>

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


noremap H ^
noremap L $
imap <D-/>  <C-x><C-o>
map <D-F12>  :!open -a /Applications/Firefox.app/ % &<CR>
map <C-TAB>  gt
map <F3> :mks! .vim_session<CR>
"map <F5> :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>

map <F4> :RunRuby<CR>
if has("gui_macvim")
  let g:RubyRunner_key = '<D-r>'
  let g:RubyRunner_keep_focus_key = '<D-R>'
end

"map <F<F3>>  :make<CR>:copen<CR>
" auto save file
" au FocusLost * :wa

" ruby block
""""""""""""""""""""""""""
":runtime macros/matchit.vim 

" winManager Setting
""""""""""""""""""""""""""
"let g:winManagerWindowLayout = 'FileExplorer, BufExplorer'
 
"let g:winManagerWidth = 35
"map <c-w><c-w> :WMToggle<cr> 
"map <c-w><c-f> :FirstExplorerWindow<cr> 
"map <c-w><c-b> :BottomExplorerWindow<cr> 
let g:AutoOpenWinManager = 0

" NERDTree
map <c-w><c-w> :NERDTreeToggle<cr> 
map <F1> :NERDTreeToggle<cr> 
map <F2> :BufExplorer<cr> 
let NERDTreeShowBookmarks=1


"Set mapleader
let mapleader = ','
let g:mapleader = ','

" map for windows nav
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" set session
set sessionoptions=buffers,curdir,folds,tabpages






