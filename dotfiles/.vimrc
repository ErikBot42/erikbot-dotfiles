" basic cross platform vimrc, a lot of it is from
" https://learnvimscriptthehardway.stevelosh.com/chapters/12.html
" this file uses folds: ggVG + zc/zo to close/open them

" General options ----------{{{

" clean up the mess from the os
set nocompatible

" dialog when command fails
set confirm

" get rid of the f****** sound
set visualbell
set t_vb=

" give mouse controll of cursor
"if has('mouse')
"    set mouse=a
"endif

" keep cursor in same column
set nostartofline

" show cursor line 
"set cursorline

" }}}

" Indentation and syntax ----------{{{

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
"}}}

" Search ----------{{{

" start highlighting immedietly
set incsearch
set hlsearch

" only search with case if search contains capitalized character
set ignorecase
set smartcase
" }}}

" Folds ----------{{{

" zc/zo/za to open, close and toggle, zM/zR/zi for all

" enable folds
set foldenable
"set foldmethod = indent "syntax, diff, manual, marker, expr...

" level to start folding
set foldlevelstart=3
" }}}

" Mappings ----------{{{

" make j and k move cursor visually in normal mode on screen instead of 
" moving one line number. ignored with number prefix
" https://www.reddit.com/r/vim/comments/2k4cbr/problem_with_gj_and_gk/clhv03p/ ignored with number prefix
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')


" map jk to exit insert mode
inoremap jk <Esc>

" map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>

" }}}

" Theming and visual ----------{{{

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

" }}}

" Statusline ----------{{{
if 1
set statusline=%f      "filename
set statusline+=\ %m   "modified? [+]
set statusline+=%r     "read only? [RO]
"set statusline+=%h     "help? [Help], help is added automatically...
set statusline+=%w     "preview? [Preview]
set statusline+=%y     "filetype
set statusline+=%q     "quickfix list?
"set statusline+=%n     "buffer number
"set statusline+=%b     "cursor char
"set statusline+=%b     "cursor char
set statusline+=%=     "right side
set statusline+=%l
set statusline+=/
set statusline+=%L
set statusline+=\ %c    "column number
"set statusline+=\ %v      "column number, virtual
set statusline+=\ %p    "percentage of document
set statusline+=\asentence
endif
" }}}

" Vimscript file settings ----------{{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" Other notes ---------{{{

" ***** AUTOCMD *****

" autocreate .txt files
" autocmd BufNewFile *.txt :write

" reindent file on save/read
"autocmd BufWritePre *.vimrc :normal gg=G
"autocmd BufWritePre,BufRead *.vimrc :normal gg=G

" disable line wrapping in html file
"autocmd BufNewFile,BufRead *.html setlocal nowrap

"filetype events
"autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
"autocmd FileType python     nnoremap <buffer> <localleader>c I#<esc>

":help autocmd-events
" ***** MOVEMENT MAP *****
"onoremap p i(

" execute "normal! gg

" | = ;
" :normal! abc = run abc in normal mode, ignore mappings
" execute "normal! abc<cr> = run abc<cr> in normal mode with actual carriage return

" }}}
