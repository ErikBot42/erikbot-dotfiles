" basic cross platform vimrc


" ***** GENERAL *****


" clean up the mess from the os
set nocompatible




" show cursor location coordinates
"set cursorline


" ***** INDENTATION/SYNTAX *****

" render tab as 4 spaces
set tabstop=4

" when pressing tab, insert 4 spaces
set softtabstop=4

" make tabs act as spaces
set expandtab

" auto determine file type

if has('filetype')
    filetype indent plugin on
endif

if has('syntax')
    syntax on
endif

" if filetype unknown, guess indentation
set autoindent

" autocomplete commands
set wildmenu

" show command suggestions
set showcmd

" hilight matching brackets
set showmatch

" ***** SEARCH *****

" start highlighting immedietly
set incsearch
set hlsearch

" only search with case if search contains capitalized character
set ignorecase
set smartcase

" ***** FOLDS ***** 
" zc/zo/za to open, close and toggle, zM/zR/zi for all

" enable folds
set foldenable
"set foldmethod = indent "syntax, diff, manual, marker, expr...

" level to start folding
set foldlevelstart=3

" ***** MOVEMENT *****

" make j and k move cursor visually in normal mode on screen instead of 
" moving one line (this may cause problems for macros)
nnoremap j gj
nnoremap k gk

" keep cursor in same column
set nostartofline

" ***** MAPPINGS *****

" map jk to exit insert mode
inoremap jk <Esc>

" map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>



" ***** THEME/VISUAL *****
colorscheme desert

" number sidebar
set number

" make command window height 2 lines
set cmdheight=2

" allways show status line
set laststatus=2

" show cursor pos
set ruler

" allways show command in the bottom bar
set showcmd



" ***** MISC *****

" dialog when command fails
set confirm

" get rid of the f****** sound
set visualbell
set t_vb=

if has('mouse')
    set mouse=a
endif


" ***** AUTOCMD *****

" autocreate .txt files
" autocmd BufNewFile *.txt :write

" reindent file on save
"autocmd BufWritePre *.vimrc :normal gg=G
"autocmd BufWritePre,BufRead *.vimrc :normal gg=G



