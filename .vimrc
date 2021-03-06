" basic cross platform vimrc, a lot of it is from
" https://learnvimscriptthehardway.stevelosh.com/chapters/12.html
" this file uses folds: ggVG + zc/zo to close/open them
" be sure to :setlocal foldmethod=marker

"TODO: Session files, vim powerline variant
"https://www.reddit.com/r/vim/comments/odfbvq/do_you_like_my_minimal_fold_indicators/
"PSVR p+ <=3.1
"ncurses
"nvim tresitter
" https://www.reddit.com/r/vim/comments/oceswa/never_ending_cycle_of_editing_my_vimrc/

" General options ----------{{{

set scrolloff=5 " scroll before hitting edge

set nocompatible " clean up the mess from the os

set confirm " dialog when command fails

set visualbell " get rid of the f****** sound
set t_vb=

" give mouse controll of cursor
"if has('mouse')
"    set mouse=a
"endif
set mouse-=a

set nostartofline " keep cursor in same column

" show cursor line 
"set cursorline

" }}}

" Session info ---------{{{

" }}}

" Indentation and syntax ----------{{{

"set tabstop=4     " tab is 4 spaces
"set shiftwidth=4
"set expandtab     " when tab is pressed insert spaces instead
"set autoindent    " if filetype unknown, guess indentation

set expandtab
set tabstop=4
set shiftwidth=4

if has('filetype') " auto determine file type
    filetype indent plugin on
endif
if has('syntax')
    syntax on
endif

set wildmenu " autocomplete commands
set showcmd " show command suggestions
set showmatch " hilight matching brackets

"}}}

" Search ----------{{{
set incsearch " start highlighting immedietly
set hlsearch
set ignorecase " only search with case if search contains capitalized character
set smartcase

" }}}

" Folds ----------{{{

" zc/zo/za to open, close and toggle, zM/zR/zi for all

set foldenable " enable folds
"set foldmethod = indent "syntax, diff, manual, marker, expr...

set foldlevelstart=3 " level to start folding

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

"colorscheme desert TODO: Set a custom colorscheme to make the config portable

set title " change terminal title


set number " hybrid number sidebar
"set relativenumber

" Bottom
set laststatus=2 " allways add status line for extra windows
set cmdheight=1 " make command window (output) height 1 lines
set laststatus=2 " allways show status line
set ruler " show cursor pos in the bottom right
set showcmd " allways show command in the bottom bar

" }}}

" Statusline ----------{{{
set statusline=%f\ %h%w%m%r%=%-14.(%l,%c%V%)\ %P " close to default
set statusline=%f\ %h%w%m%r%=%-14.(%l,%c%V%)\ %P " close to default

set statusline=%f      "filename
set statusline+=\ %m   "modified? [+]
set statusline+=%r     "read only? [RO]
set statusline+=%h     "help? [Help], help is added automatically...
set statusline+=%w     "preview? [Preview]
set statusline+=%y     "filetype
set statusline+=%q     "quickfix list
set statusline+=%=	   "right side
set statusline+=%-14.(%l,%c%V%)\ %P	   "magic

" }}}

" Spell check ---------- {{{

if has("spell")
  " turn spelling on by default
  " set spell

  " toggle spelling with F4 key
  map <F4> :set spell!<CR><Bar>:echo "Spell Check: " . strpart("OffOn", 3 * &spell, 3)<CR>

  " they were using white on white
  highlight PmenuSel ctermfg=black ctermbg=lightgray

  " limit it to just the top 10 items
  set sps=best,10                    
endif
" }}}

" History settings {{{
" ' files with marks
" < lines per register
set viminfo='20,<1000
" }}}

" File settings ----------{{{
"
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" Auto cmd ----------{{{
" autocmd BufNewFile,BufRead *.md,*.mkdn,*.markdown :set filetype=markdown
autocmd BufNewFile,BufRead *.cginc :set filetype=shaderlab
autocmd BufNewFile,BufRead *.shader :set filetype=shaderlab
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


let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
let g:Powerline_mode_V="V·LINE"
let g:Powerline_mode_cv="V·BLOCK"
let g:Powerline_mode_S="S·LINE"
let g:Powerline_mode_cs="S·BLOCK"


