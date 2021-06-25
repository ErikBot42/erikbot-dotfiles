" basic cross platform vimrc



" ***** GENERAL *****

" number sidebar
set number

" show cursor location coordinates
set cursorline

" allways show command in the bottom bar
set showcmd

" ***** INDENTATION *****

" render tab as 4 spaces
set tabstop=4

" when pressing tab, insert 4 spaces
set softtabstop=4

" make tabs act as spaces
set expandtab



" ***** SYNTAX *****

" load filetype specific indents
filetype indent on

" autocomplete commands
set wildmenu

" enable syntax
syntax on

" hilight matching brackets
set showmatch

" ***** SEARCH *****

" start highlighting immedietly
set incsearch
set hlsearch

" ***** FOLDS ***** 
" zc/zo/za to open, close and toggle, zM/zR/zi for all

" enable folds
set foldenable
set foldmethod = indent "syntax, diff, manual, marker, expr...

" level to start folding
set foldlevelstart=3
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa



" ***** MOVEMENT *****

" make j and k move cursor visually on screen instead of moving one line (this
" may cause problems for macros
nnoremap j gj
nnoremap k gk

" TODO: jk->esc, <C-L>














