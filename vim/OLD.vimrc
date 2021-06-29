"set tabstop=4
"set shiftwidth=4
"set expandtab
"set autoindent

"indentation
set expandtab
set tabstop=4
set shiftwidth=4
set smarttab
set autoindent


"search
set hlsearch
set incsearch
set ignorecase
set smartcase
"set showmatch


"scroll before hitting edge
set scrolloff=5
syntax on

"status line with extra windows
set laststatus=2

"line number and relativenumber
set number
set relativenumber

"set background=dark

set title

"set ruler
"Make current line highlighted
highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
"highlight CursorLine gui=underline cterm=underline
highlight LineNr ctermfg=grey
set cursorline


"<<<
set viminfo='20,<1000

"Autocomplete vim commands

"set wildmode=longest:full,full

"highlight clear CursorLine
"highlight CursorLineNR ctermbg=red

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

inoremap jk <Esc>
